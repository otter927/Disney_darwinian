import numpy as np

# Generate some test data
data = np.arange(200).reshape((4,5,10))

# Write the array to disk
with open('test.txt', 'w') as outfile:
    # I'm writing a header here just for the sake of readability
    # Any line starting with "#" will be ignored by numpy.loadtxt
    outfile.write('# Array shape: {0}\n'.format(data.shape))
    
    # Iterating through a ndimensional array produces slices along
    # the last axis. This is equivalent to data[i,:,:] in this case
    for data_slice in data:

        # The formatting string indicates that I'm writing out
        # the values in left-justified columns 7 characters in width
        # with 2 decimal places.  
        np.savetxt(outfile, data_slice, fmt='%-7.2f')

        # Writing out a break to indicate different slices...
        outfile.write('# New slice\n')
        
new_data = np.loadtxt('test.txt')

# Note that this returned a 2D array!
print(new_data.shape)

# However, going back to 3D is easy if we know the 
# original shape of the array
new_data = new_data.reshape((4,5,10))
