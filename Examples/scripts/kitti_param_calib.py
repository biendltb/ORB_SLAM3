import numpy as np

T_imu_velo = np.array([ 
    9.999976e-01,   7.553071e-04,   -2.035826e-03,  -8.086759e-01,
    -7.854027e-04,  9.998898e-01,   -1.482298e-02,  3.195559e-01,
    2.024406e-03,   1.482454e-02,   9.998881e-01,   -7.997231e-01,
    0.0,            0.0,            0.0,            1.0
])
T_imu_velo = T_imu_velo.reshape([4, 4])
print('T_imu_velo:\n{}\n'.format(T_imu_velo))

T_velo_cam = np.array([
    7.533745e-03,   -9.999714e-01,  -6.166020e-04,  -4.069766e-03,
    1.480249e-02,   7.280733e-04,   -9.998902e-01,  -7.631618e-02,
    9.998621e-01,   7.523790e-03,   1.480755e-02,   -2.717806e-01,
    0.000000e+00,   0.000000e+00,   0.000000e+00,   1.000000e+00
])
T_velo_cam = T_velo_cam.reshape([4, 4])
print('T_velo_cam:\n{}\n'.format(T_velo_cam))

T_cam_cam0 = np.array([
    1.000000e+00, 0.000000e+00, 0.000000e+00, 2.573699e-16,
    0.000000e+00, 1.000000e+00, 0.000000e+00, -1.059758e-16,
    0.000000e+00, 0.000000e+00, 1.000000e+00, 1.614870e-16,
    0.000000e+00, 0.000000e+00, 0.000000e+00, 1.000000e+00
])
T_cam_cam0 = T_cam_cam0.reshape([4, 4])
print('T_cam_cam0:\n{}\n'.format(T_cam_cam0))

T_cam_cam1 = np.array([
    9.993513e-01, 1.860866e-02, -3.083487e-02, -5.370000e-01,
    -1.887662e-02, 9.997863e-01, -8.421873e-03, 4.822061e-03,
    3.067156e-02, 8.998467e-03, 9.994890e-01, -1.252488e-02,
    0.000000e+00, 0.000000e+00, 0.000000e+00, 1.000000e+00
])
T_cam_cam1 = T_cam_cam1.reshape([4, 4])
print('T_cam_cam1:\n{}\n'.format(T_cam_cam1))

T_imu_cam0 = T_imu_velo.dot(T_velo_cam).dot(T_cam_cam0)
print('T_imu_cam0:\n{}\n'.format(T_imu_cam0))
T_cam0_imu = np.linalg.inv(T_imu_cam0)
print('T_cam0_imu:\n{}\n'.format(T_cam0_imu))

T_imu_cam1 = T_imu_velo.dot(T_velo_cam).dot(T_cam_cam1)
print('T_imu_cam1:\n{}\n'.format(T_imu_cam1))
T_cam1_imu = np.linalg.inv(T_imu_cam1)
print('T_cam1_imu:\n{}\n'.format(T_cam1_imu))

T_cam0_cam1 = np.linalg.inv(T_cam_cam0).dot(T_cam_cam1)
print('T_cam0_cam1:\n{}\n'.format(T_cam0_cam1))

T_cam1_cam0 = np.linalg.inv(T_cam0_cam1)
print('T_cam1_cam0:\n{}\n'.format(T_cam1_cam0))