#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <fstream>
#include <sstream>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include "mpi.h"

//https://github.com/setu4993/Simple_RNN

using namespace std;

#define input_nodes 3
#define layers 3
#define output_nodes 1
#define hidden_layer_nodes 8
#define recursion_number 12

double wih[recursion_number][input_nodes + 1][hidden_layer_nodes];	//weight matrix for (input + bias) -> hidden layer
double who[recursion_number][hidden_layer_nodes + 1][output_nodes];	//weight matrix for (hidden layer + bias) -> output
double whh[recursion_number][hidden_layer_nodes][hidden_layer_nodes];
double inp[input_nodes + 1];	//input layer node values + bias
int tmp[input_nodes];
double hid[hidden_layer_nodes + 1];	//hidden layer node values + bias
double prev_hid[recursion_number][hidden_layer_nodes];	//previous hidden layer node values
double tv[output_nodes];	// target value
double op[output_nodes]; //output values
double alpha = 0.22;	//learning rate
						//variables for the error back propagation
double deltaho[output_nodes];
double deltah[hidden_layer_nodes];
double deltahh[hidden_layer_nodes];
double delWho[hidden_layer_nodes + 1][output_nodes];
double delin[hidden_layer_nodes];
double delWih[input_nodes + 1][hidden_layer_nodes];
long maxEpoch = 100000; //max epochs
						//double min = 10.0, max = -10.0;
int wih_len = (input_nodes + 1) * (hidden_layer_nodes);
int who_len = (hidden_layer_nodes + 1) * (output_nodes);
int whh_len = (hidden_layer_nodes) * (hidden_layer_nodes);
int prev_hid_len = hidden_layer_nodes;

double mse = 0;
double initial_weight = 1;
int curr_rec = 0;

ifstream file("water_6_97-10_reduced_2_cap_rs.csv");
ofstream outfile;
string value;

void create_network();
void clear_values();
void run_network();
void recal_weights();
void next_iter();
void printweights();
void printinputs();
void writeweights();

int main(int argc, char *argv[])
{
	int j = 0;
	long epoch = 0;
	create_network();
	//printweights();
	clear_values();
	cout << "\nRNN Training.";
	
	int rank, num_procs;
	MPI_Status status;
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

	cout << "\nHello from processor " << rank << "!\n";


	for (epoch = 0; epoch < maxEpoch; epoch++)
	{
		//min = 10.0;
		//max = -10.0;
		//cout << "\nEpoch " << epoch << " running.";
		for(int k = rank; k < recursion_number; k = k + num_procs)
		{
			while (!file.eof())
			{
				getline(file, value);
				next_iter();
				//printinputs();
				if (curr_rec == k)
				{
					run_network();
					recal_weights();
					clear_values();
				}
			}
			file.clear();
			file.seekg(0, file.beg);
			//cout << "\nEpoch " << (epoch + 1) << " completed.";
		}
		
		if (((epoch + 1) % 5000 == 0) && (rank == 0))
		{
			//alpha = 0.9 * alpha;
			cout << "\nEpoch " << (epoch + 1) << " completed.";
		}
		
		//printweights();
		//cout << "\n\nMax: " << max << "\tMin:" << min;
	}
	
	file.close();
	if (rank != 0)
	{
		for (int k = rank; k < recursion_number; k = k + num_procs)
		{
			MPI_Send(&wih[k][0][0], wih_len, MPI_DOUBLE, 0, (k * 25), MPI_COMM_WORLD);
			MPI_Send(&who[k][0][0], who_len, MPI_DOUBLE, 0, (k * 50), MPI_COMM_WORLD);
			MPI_Send(&whh[k][0][0], whh_len, MPI_DOUBLE, 0, (k * 75), MPI_COMM_WORLD);
			MPI_Send(&prev_hid[k][0], prev_hid_len, MPI_DOUBLE, 0, (k * 100), MPI_COMM_WORLD);
		}
	}

	if(rank == 0)
	{
		for (int k = rank; k < recursion_number; k++)
		{
		  if (k % num_procs != 0)
		    {
		      MPI_Recv(&wih[k][0][0], wih_len, MPI_DOUBLE, (k % num_procs), (k * 25), MPI_COMM_WORLD, &status);
		      MPI_Recv(&who[k][0][0], who_len, MPI_DOUBLE, (k % num_procs), (k * 50), MPI_COMM_WORLD, &status);
		      MPI_Recv(&whh[k][0][0], whh_len, MPI_DOUBLE, (k % num_procs), (k * 75), MPI_COMM_WORLD, &status);
		      MPI_Recv(&prev_hid[k][0], prev_hid_len, MPI_DOUBLE, (k % num_procs), (k * 100), MPI_COMM_WORLD, &status);
		    }
		}

		outfile.open("100k_6_hidden_daily_rec_022_parallel.txt");
		writeweights();
		outfile.close();
		printweights();
	}

	MPI_Finalize();
	//getchar();
	return 0;
}

void create_network()
{
	int i, j, k;
	double tmp;
	//initializing all weights randomly
	for (k = 0; k < recursion_number; k++)
	{

		for (i = 0; i <= input_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				tmp = rand() % 2000000 - 1000000;
				wih[k][i][j] = tmp / 1000000;
			}
		}
	}
	for (k = 0; k < recursion_number; k++)
	{
		for (i = 0; i <= hidden_layer_nodes; i++)
		{
			for (j = 0; j < output_nodes; j++)
			{
				tmp = rand() % 2000000 - 1000000;
				who[k][i][j] = tmp / 1000000;
			}
		}
	}
	for (k = 0; k < recursion_number; k++)
	{
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				tmp = rand() % 2000000 - 1000000;
				whh[k][i][j] = tmp / 1000000;
			}
			prev_hid[k][i] = 0;
		}
	}
}

void clear_values()
{
	//clear all input and hidden node values (biases as 1)
	int i = 0, j = 0;
	for (i = 0; i < input_nodes; i++)
	{
		inp[i] = 0;
	}
	inp[i] = 1;	//bias

	for (i = 0; i < hidden_layer_nodes; i++)
	{
		hid[i] = 0;
		deltah[j] = 0;
		delin[i] = 0;
	}
	hid[i] = 1;	//bias

				//clear all output and target values
	for (i = 0; i < output_nodes; i++)
	{
		op[i] = 0;
		tv[i] = 0;
		deltaho[i] = 0;
	}
}

void next_iter()
{
	int i = 0;
	int temp = 0;
	char seps[] = ",";
	char *token;

	token = strtok(&value[0], seps);
	//std::cout << "\n" << token << "\n";
	while (token != NULL)
	{
		tmp[i] = atof(token);
		switch (i)
		{
		case 0:
			inp[i] = tmp[i] - 92;
			inp[i] = tanh(inp[i] / 46);
			break;
		case 1:
			// tanh((x - 130)/135)
			inp[i] = tmp[i] - 100;// / (1 + exp(-0.18 * (tmp[i] - 15)));	//tmax
								  //inp[i] = tmp[i] / (1.0 + abs(tmp[i]));
								  //inp[i] = (2 / (double)(1 + exp(-2 * (inp[i] / 15)))) - 1;
			inp[i] = tanh(inp[i] / 100);
			//inp[4] = 0;
			//if (tmp[i] > 280)
			//{
			//	inp[4] = 1;
			//}
			break;
		case 2:
			//prec tanh((x - 630)/ 315)
			//inp[i] = tmp[i] - 630; //
								   //inp[i] = (2 / (double)(1 + exp(-2 * (inp[i] / 24)))) - 1;
		        //inp[i] = tanh(inp[i] / 315);
			inp[i] = tanh((tmp[i] - 126) / 63);
			break;
			//inp[i] = tmp[i];
			//break;
			/*case 3:
			//snow tanh((x - 150) / 75)
			//inp[i] = tmp[i] - 150;
			//inp[i] = tanh(inp[i] / 75);
			inp[i] = tmp[i] - 50;
			inp[i] = tanh(inp[i] / 25);
			break;
			/*
		case 4:
			//snwd tanh((x - 180) / 90)
			inp[i] = tmp[i] - 180;
			inp[i] = tanh(inp[i] / 90);
			break;
					
		case 4:
			inp[3] = tmp[i];
			break;		
		*/
		case 5:
			tv[0] = atof(token) - 140;
			tv[0] = tanh(tv[0] / 20);
			//cout << "  " << tv[0];
			break;
		case 6:
			curr_rec = tmp[i] - 1;
		default: break;
		}

		token = strtok(NULL, ",");
		i++;
	}

	for (i = 0; i < hidden_layer_nodes; i++)
	{
		hid[i] = 0;
	}

	hid[hidden_layer_nodes] = 1;	//bias	
}

void run_network()
{
	int i, j;

	//calculation of hidden layer

	//cout << "\n";

	for (j = 0; j < hidden_layer_nodes; j++)
	{
		for (i = 0; i <= input_nodes; i++)
		{
			hid[j] = hid[j] + (wih[curr_rec][i][j] * inp[i]);
		}
	}

	for (j = 0; j < hidden_layer_nodes; j++)
	{
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			hid[j] = hid[j] + (whh[curr_rec][i][j] * prev_hid[curr_rec][i]);
		}
	}

	for (j = 0; j < hidden_layer_nodes; j++)
	{
		//cout << "\n hid " << hid[j];
		//hid[j] = 1.0000 / (1.0000 + exp(-1 * hid[j]));	//sigmoid
		//hid[j] = hid[j] / (1.0 + abs(hid[j]));	//softsign
		//cout << "\n hid " << hid[j];
		/**/

		hid[j] = tanh((hid[j]));
	}


	//calculation of output layer
	for (j = 0; j <= hidden_layer_nodes; j++)
	{
		for (i = 0; i < output_nodes; i++)
		{
			op[i] = op[i] + (who[curr_rec][j][i] * hid[j]);
		}

	}

	for (j = 0; j < output_nodes; j++)
	{
		//op[j] = op[j] / (1.0 + abs(op[j]));	//softsign at the output
		//op[j] = 1.0000 / (1.0000 + exp(-1 * op[j]));	//sigmoid at the output

		op[j] = tanh((op[j]));

		/*
		if (op[j] < 0.5)
		{
		op[j] = 0;
		}
		else
		{
		op[j] = 1;
		}
		*/
	}
}

void recal_weights()
{
	int i = 0, j = 0;

	for (i = 0; i < output_nodes; i++)
	{
		deltaho[i] = (tv[i] - op[i])*(1 - (tanh((op[j])) * tanh((op[j])))); //tanh

																			//deltaho[i] = (tv[i] - op[i])*exp(op[i])/((1 + exp(op[i]))*(1 + exp(op[i])));	//for sigmoid
																			//deltaho[i] = (tv[i] - op[i]) / ((1 + abs(op[i]))*(1 + abs(op[i])));	//for softsign function
	}

	for (i = 0; i <= hidden_layer_nodes; i++)	//including bias, calculation of delta h -> o
	{
		for (j = 0; j < output_nodes; j++)
		{
			delWho[i][j] = deltaho[j] * hid[i] * alpha;
		}
	}

	//calculation of delin h -> o
	for (i = 0; i < hidden_layer_nodes; i++)
	{
		for (j = 0; j < output_nodes; j++)
		{
			delin[i] += deltaho[j] * who[curr_rec][i][j];
		}
	}

	//calculation of delih i -> h, incl bias

	for (j = 0; j < hidden_layer_nodes; j++)
	{

		deltah[j] = delin[j] * (1 - (tanh((hid[j])) * tanh((hid[j]))));	//tanh
																		//deltah[j] = delin[j] * exp(hid[j])/((1 + exp(hid[j])) * (1 + exp(hid[j])));	//sigmoid
																		//deltah[j] = delin[j] / ((1 + abs(hid[j])) * (1 + abs(hid[j])));	//softsign
	}
	/*
	//calculation of delta p_h -> h
	for (j = 0; j < hidden_layer_nodes; j++)
	{
	deltahh[j] = delin[j] * (1 - (tanh((hid[j] - 4) / 6) * tanh((prev_hid[j] - 4) / 6)));	//tanh
	//deltah[j] = delin[j] * exp(hid[j])/((1 + exp(hid[j])) * (1 + exp(hid[j])));	//sigmoid
	//deltah[j] = delin[j] / ((1 + abs(hid[j])) * (1 + abs(hid[j])));	//softsign
	}
	*/

	//delta input, i -> h
	for (i = 0; i <= input_nodes; i++)
	{
		for (j = 0; j < hidden_layer_nodes; j++)
		{
			//delWih[i][j] = alpha * deltah[j] * inp[i];
			wih[curr_rec][i][j] = wih[curr_rec][i][j] + (alpha * deltah[j] * inp[i]);
		}
	}

	for (i = 0; i < hidden_layer_nodes; i++)
	{
		for (j = 0; j < hidden_layer_nodes; j++)
		{
			whh[curr_rec][i][j] = whh[curr_rec][i][j] + (alpha * deltah[j] * prev_hid[curr_rec][i]);
		}

		prev_hid[curr_rec][i] = hid[i];
	}

	//weight updation, i -> h
	/*for (i = 0; i <= input_nodes; i++)
	{
	for (j = 0; j < hidden_layer_nodes; j++)
	{
	}
	}*/

	//weight updation, h -> o
	for (i = 0; i <= hidden_layer_nodes; i++)
	{
		for (j = 0; j < output_nodes; j++)
		{
			who[curr_rec][i][j] = who[curr_rec][i][j] + delWho[i][j];
		}
	}
}

void printweights()
{
	int i, j, k;
	for (k = 0; k < recursion_number; k++)
	{
		cout << "\nRecursion number: " << k;
		cout << "\nI -> H\n";
		for (i = 0; i <= input_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				cout << wih[k][i][j];
				if (j != (hidden_layer_nodes - 1))
				{
					cout << ",";
				}
			}
			cout << "\n";
		}

		cout << "\n\nP_H -> H\n";
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				cout << whh[k][i][j];
				if (j != (hidden_layer_nodes - 1))
				{
					cout << ",";
				}
			}
			cout << "\n";
		}

		cout << "\n\nH -> O\n";
		for (i = 0; i <= hidden_layer_nodes; i++)
		{
			for (j = 0; j < output_nodes; j++)
			{
				cout << who[k][i][j];
				if (j != (output_nodes - 1))
				{
					cout << ",";
				}
			}
			cout << "\n";
		}

		cout << "\n\nH\n";
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			cout << prev_hid[k][i] << "\n";
		}
	}
}

void writeweights()
{
	int i, j, k;
	for (k = 0; k < recursion_number; k++)
	{
		outfile << k << ",";
		//outfile << "\nI -> H\n";
		for (i = 0; i <= input_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				outfile << wih[k][i][j];
				if (j != (hidden_layer_nodes - 1))
				{
					outfile << ",";
				}
			}
			outfile << "\n";
		}

		//outfile << "\n\nP_H -> H\n";
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			for (j = 0; j < hidden_layer_nodes; j++)
			{
				outfile << whh[k][i][j];
				if (j != (hidden_layer_nodes - 1))
				{
					outfile << ",";
				}
			}
			outfile << "\n";
		}

		//outfile << "\n\nH -> O\n";
		for (i = 0; i <= hidden_layer_nodes; i++)
		{
			for (j = 0; j < output_nodes; j++)
			{
				outfile << who[k][i][j];
				if (j != (output_nodes - 1))
				{
					outfile << ",";
				}
			}
			outfile << "\n";
		}

		//outfile << "\n\nH\n";
		for (i = 0; i < hidden_layer_nodes; i++)
		{
			outfile << prev_hid[k][i] << "\n";
		}
	}
}
void printinputs()
{
	int i;
	cout << "\nInput Nodes:\n";
	for (i = 0; i <= input_nodes; i++)
	{
		cout << "\t" << inp[i];
	}
	cout << "\nHidden Nodes:\n";
	for (i = 0; i <= hidden_layer_nodes; i++)
	{
		cout << "\t" << hid[i];
	}
}
