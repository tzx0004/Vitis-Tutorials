%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2021-2022 Xilinx
%
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
%
% http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function b = CreateFilter(Ntaps)
%CREATEFILTER Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and DSP System Toolbox 9.9.
% Generated on: 10-Dec-2020 08:48:27

% Complex Remez FIR Lowpass filter designed using the CFIRPM function.

% All frequency values are normalized to 1.

N      = Ntaps - 1;     % Order
Fstop1 = -0.2;   % First Stopband Frequency
Fpass1 = 0;      % First Passband Frequency
Fpass2 = 0.3;    % Second Passband Frequency
Fstop2 = 0.6;    % Second Stopband Frequency
Wstop1 = 1;      % First Stopband Weight
Wpass  = 1;      % Passband Weight
Wstop2 = 1;      % Second Stopband Weight
debug  = 'off';  % Debug Mode
dens   = 25;     % Density Factor

% Calculate the coefficients using the CFIRPM function.
b  = cfirpm(N, [-1 Fstop1 Fpass1 Fpass2 Fstop2 1], 'lowpass', [Wstop1 ...
            Wpass Wstop2], {dens}, debug);
%Hd = dfilt.dffir(b);

% [EOF]
