function varargout = Project_MATLAB(varargin)
% PROJECT_MATLAB MATLAB code for Project_MATLAB.fig
%      PROJECT_MATLAB, by itself, creates a new PROJECT_MATLAB or raises the existing
%      singleton*.
%
%      H = PROJECT_MATLAB returns the handle to a new PROJECT_MATLAB or the handle to
%      the existing singleton*.
%
%      PROJECT_MATLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_MATLAB.M with the given input arguments.
%
%      PROJECT_MATLAB('Property','Value',...) creates a new PROJECT_MATLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_MATLAB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_MATLAB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project_MATLAB

% Last Modified by GUIDE v2.5 08-Feb-2020 17:38:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project_MATLAB_OpeningFcn, ...
                   'gui_OutputFcn',  @Project_MATLAB_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Project_MATLAB is made visible.
function Project_MATLAB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project_MATLAB (see VARARGIN)

% Choose default command line output for Project_MATLAB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project_MATLAB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_MATLAB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
open_system('Project_MATLAB_diagram.slx');
set_param('Project_MATLAB_diagram','SimulationMode','external');
set_param('Project_MATLAB_diagram','SimulationCommand','start');
set_param('Project_MATLAB_diagram/Mode','Value',num2str(0));


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('Project_MATLAB_diagram/Constant1','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant','Value',num2str(1));
set_param('Project_MATLAB_diagram/Constant2','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant3','Value',num2str(1));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('Project_MATLAB_diagram/Constant1','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant2','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant3','Value',num2str(1));


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('Project_MATLAB_diagram/Constant1','Value',num2str(1));
set_param('Project_MATLAB_diagram/Constant','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant2','Value',num2str(1));
set_param('Project_MATLAB_diagram/Constant3','Value',num2str(0));


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('Project_MATLAB_diagram/Constant1','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant','Value',num2str(1));
set_param('Project_MATLAB_diagram/Constant2','Value',num2str(0));
set_param('Project_MATLAB_diagram/Constant3','Value',num2str(0));


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mode = get_param('Project_MATLAB_diagram/Mode','Value');
if(mode == num2str(1))
    set_param('Project_MATLAB_diagram/Mode','Value','0');
elseif(mode == num2str(0))
    set_param('Project_MATLAB_diagram/Mode','Value','1');
end