% FRAP metadata

FRAPdirs = {'170209_FRAP',      '170302_FRAPagain', '170510_FRAPafterA',...
            '170519_FRAPctrl',  '170524_FRAP',      '170525_FRAP',...
            '170529_FRAPAvB',   '170530_FRAP',      '170817',...
            '170823_FRAP',      '170824',           '170802',...
            '170605_Frap',      '170803_FRAPnucLMB','170809',...
            '170810',           '170811',           '170814',...
            '170815',           '171026_Frap',      '171027_Frap',...
            '171030_Frap',      '171031_Frap',      '171102_Frap',...
            '170610_FRAPcyt',   '170612_FRAPcyt',   '170630_FRAPcyt',...
            '170707_Frap', '170717_Untr_Nucl-Cyt_slow','170727_Untr_Nucl-Cyt_Slow'};

oibfiles = {{'FRAP_A100nuclei1.5h.oib','FRAP_1nucleus_1.oib'},...               % 170209_FRAP
            {'ALMB2h20min.oib','LMB1h.oib', 'LMB4h.oib', 'untreated.oib'},...   % 170302_FRAPagain
            {'A2h.oib','A3h.oib', 'A8h.oib', 'A9h.oib'},...                     % 170510_FRAPafterA
            {'170518_FrapContr2.oif'},...                                       % 170519_FRAPctrl
            {},...
            {'Aafter2Hr2.oif','untreated1.oif'},...                                             % 170525_FRAP
            {'A100at2.5h.oib','A100at5h.oib','B100at3.5h.oib','B100at4h.oib','B100at5.5h.oib'}... % 170529_FRAPAvB
            {'B2h.oif','NoRI_A50.oib'},...                       % 170530_FRAP
            {'A 1h 45min LMB 1h 45min.oib', 'A 7h.oib', 'A7.5hLMB45min.oib',...         % 170817
            'A10h.oib', 'A12h.oib', 'LMB 2h 15 min.oib', 'LMB1.5h.oib'},...
            {'A 8h 20min LMB2h20min.oib', 'A+LMB 2h 45min.oib','LMB 2h repeat.oib',...
            'Untreated 1.oib', 'Untreated 3.oib'},...                                % 170823_FRAP
            {'A+LMB 2h.oib', 'LMB 2h rep.oib', 'LMB 2h.oib', 'Untreated 1.oib'},...  % 170824
            {'A50_Nuclear_215hrs.oib'}...
            {'LMB5+A50_2hr.oif'},...                            %170605_Frap
            {'LMB+A_215hr_Nucl.oib'},...                        % 170803_FRAPnucLMB
            {'A LMB 5hr_Nuclear_slide1.oib','A LMB 5hr_Nuclear_slide2.oib'},... % 170809
            {'6pm run.oib','A+LMB_6hrA_2hrLMB.oib','LMB_1hr_3Nuclear.oib'},... % 170810
            {'A LMB 5.20h 3nuclear.oib'},... % 170811
            {'A 7.5h LMB 1h nuclear.oib','LMB nuclear 1 h.oib','LMB Nuclear.oib','Untreated cells.oib'},... %170814
            {'A 1.5h LMB 1 h 3 nuclear.oib','A2h.oib','A5h.oib','Untreated.oib'},...    % 170815
            {'A 2hrs.oib','A 2hs 30min.oib','A 5hrs 25min.oib','A and LMB 2hrs.oib','LMB.oib','Untreated.oib'},...%171026_Frap
            {'A 1.5hr D1.oib','A 1.5hr D2.oib','A 6hr D1.oib','A 6hr D2.oib',...
                'A+LMB 1.5hr D1.oib','A+LMB 1.5hr D2.oib','A+LMB 6hr D1.oib','A+LMB 6hr D2.oib',...
                'LMB D1.oib','Untreated D2.oib'},...%171027_Frap
            {'A 1.5hr D1.oib','A 1.5hr D2 488at2.5%.oib','A 6hr D1.oib','A 6hr D2 .oib',...%171030_Frap
            'A+LMB 1.5hr D1.oib','A+LMB 1.5hr D2.oib','A+LMB 6hr D1 .oib',...
            'A+LMB 6hr D2.oib','LMB D1.oib','Untreated D2.oib'},...
            {'A 1.5hr D1.oib','A 1.5hr D2 Laser405only.oib','A+LMB  1.5hrs D1.oib',...%171031_Frap
            'A+LMB 1.5hrs D2.oib','A+LMB 6hr D1.oib','A+LMB 6hr D2.oib','LMB D2.oib',...
            'Untreated D1.oib','Untreated D2.oib'},...
            {'A 6hr D1.oib','A 6hr D2.oib','LMB 1.5hr a.oib','LMB 1.5hr b.oib',...
            'Untreated bleach4 2nucTogeth B.oib',...
            'Untreated bleach8 2nucl.oib','Untreated bleach8 2nucl400fr3sec.oib',...
            'Untreated bleach8 3nuclDense.oib','Untreated bleach8 3nuclSparse(cells in gral. not the nucl).oib',...
            'Untreated bleach8 5nucl.oib'}};                          

% for using the right background detection
LMB = { [0 0], [1 1 1 0], [0 0 0 0],[0],[],[0 0],[0 0 0 0 0], [0 0],...
        [1 0 1 0 0 1 1], [1 1 1 0 0], [1 1 1 0], [0], [1], [1],...
        [1 1], [0 1 1], [1],[1 1 1 0],[1 0 0 0], [0 0 0 1 1 0],...
        [0 0 0 0 1 1 1 1 1 0], [0 0 0 0 1 1 1 1 1 0],[0 0 1 0 1 1 1 1 0 0],...
        [0 0 1 1 0 0 0 0 0 0 0] };
        
tmaxall = { {[199 130],140},...                                  % 170209_FRAP
            {[],[],[400 800],[]},...                            % 170302_FRAPagain
            {[160 160],[120 120],[150 150],[100 100]},...                            % 170510_FRAPafterA
            {[170]},...                                            % 170519_FRAPctrl
            {},...
            {[400 600],[]},...                           % 170525_FRAP
            {[], [160,160,160,160,160,160],[],[],[]}...  % 170529_FRAPAvB
            {[],[100 100]},...                                  % 170530_FRAP
            {[220 220 220],[150 150],[240 240 240],[1 1 1 1]*120,[1 1 1 1 1]*120,[120 120 120],[540 240 540]},...% 170817
            {[280 280 280],[540 540 540],[420 420 420 420],[],[]},...% 170823_FRAP
            {[150 150 200],[],[],[400 400 400 400 300]},... % 170824
            {[]},...                                        % 170802
            {[]},...                                            % 170605_Frap
            {[]},...                                            % 170803_FRAPnucLMB
            {[300 300],[300 300]},...                           % 170809
            {[],[],[]},...                                      % 170810
            {[200 200 200]},...                                            % 170811
            {[],[],[],[90 150 90]},...                       % 170814
            {[380 380 380],[120 350 120 120 350],[130 130 130],[60 70]},...% 170815
            {[],[],[],[],[],[]},...
            {[],[],[],[],[150 70 150 150 150],[150 150 150 150],[],[],[],[]},... %171027
            {[],[],[],[],[],[],[],[],[],[]},...%171030_Frap
            {[],[],[],[],[200 200 200 200],[200 200 200],[],[],[]}....%171031_Frap
            {[],[],[],[],[],[],[],[],[],[],[]}};

%frapframe = first bleached frame, all checked
frapframes = [  4, 3, 6, 6, 3, 3,...
                3, 3, 3, 5, 3, 3,...
                3, 3, 3, 3, 3, 3,...
                3, 5, 5, 5, 5, 5,...
                3, 3, 3, 3, 3, 3];

bleachCorrect = { [0 0], [0 0 0 1], [0 0 0 1],...
                    [1],[],[1 1],...
                    [0 0 0 0 0], [0 0],[1 0 0 0 0 0 0],...
                    [0 1 0 0 0], [0 0 0 1], [1],...
                    [0], [0],[0 0],...
                    [0 0 0], [0],[0 0 0 1],...
                    [0 1 1 0], [0 0 0 0 0 0],[1 1 0 1 0 0 0 0 0 0],...
                    [0 0 1 1 0 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 0],...
        [0 0 0 0 0 0 0 0 0 0],... 
        [0 0 0 0],...% 170610_FRAPcyt
        [0 0 0 0 0 0], [0 0 0 0], [0 0], [0], [0]};

nucChannel = 2;
S4Channel = 1;
