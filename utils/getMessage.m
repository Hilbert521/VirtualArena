%


% This file is part of VirtualArena.
%
% Copyright (c) 2014, Andrea Alessandretti
% All rights reserved.
%
% e-mail: andrea.alessandretti [at] {epfl.ch, ist.utl.pt}
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%
% 1. Redistributions of source code must retain the above copyright notice, this
%    list of conditions and the following disclaimer.
% 2. Redistributions in binary form must reproduce the above copyright notice,
%    this list of conditions and the following disclaimer in the documentation
%    and/or other materials provided with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
% ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
% ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
% (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
% ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
% (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%
% The views and conclusions contained in the software and documentation are those
% of the authors and should not be interpreted as representing official policies,
% either expressed or implied, of the FreeBSD Project.

function message = getMessage(MessageCode,varargin)

switch MessageCode
    
    case 'GeneralSystem:LinearizingOutputEquation'
        message = 'Linearizing output equation (symbolic matlab)... ';
        
    case 'GeneralSystem:LinearizingOutputEquationS'
        message = 'Computation linearization via sampling ... ';
        
        
    case 'GeneralSystem:LinearizingStateEquation'
        message = 'Linearizing state equation (symbolic matlab) ... ';
        
    case 'GeneralSystem:LinearizingStateEquationS'
        message = 'Computation linearization via sampling  ... ';
        
    case 'done'
        message = 'done.\n';
        
    case 'MpcOpSolver:LinearizinStageCost'
        
        message = 'Linearizing cost functions ... ';
        
    case 'MpcOpSolver:LinearizingTerminalConstraint'
        
        message = 'Linearizing terminal cotraint ... ';
        
    case 'LinearizationRequired'
        
        message = 'The system needs to be linearized. Use .computeLinearization';
        
    case 'VirtualArena:discretizationStepNotNefined'
        
        message = 'Discretization Step Not Defined';
        
    case 'VirtualArena:UnknownSystemType'
        
        message = 'Unknown system type';
        
    case 'VirtualArena:UnknownControllerType'
        
        message = 'Unknown controller type';
        
    case 'TrackingControllerECC14:wrongvehicle'
        
        message = 'Vehicle not supported this controller.';
        
    case 'VirtualArena:InitObserver'
        
        message = 'State observer not initialized, use parameter ''InitialConditions'' at creation time.';
        
    case 'VirtualArena:InitController'
        
        message = 'Internal state of the controller not initialized, use parameter ''InitialConditions'' at creation time.';
        
    case 'VirtualArena:NotEnoughInitialConditionsController'
        
        message = 'The number of initial conditions of the controller must correspond with the number of initial conditions of the systems.';
        
    case 'FminconMpcOpSolver:OnlyGeneralSet'
        
        message = 'Only GeneralSet Allowed.';
        
    case 'GeneralSystem:evaluation'
        
        message = 'Evaluation and simplification of state and output equations ...';
        
    otherwise
        
        message = 'Unknown message.\n';
end
end