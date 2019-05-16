function instruct = makeInStruct(results, idx, debugplots, legendstr, dataDir, label,bleachCorrect)
    
    instruct = struct(  'A',[],'Ac',[],'k',[],...%'errk',[],...%'errA',[],
                    'Nmovies',0, 'Ncells',[],...
                    'ncrinit',[],'ncrfin',[],...
                    'nr',[],'cr',[],...
                    'Ninit',[],'Nbleach',[],'Nfin',[],...
                    'Cinit',[],'Cbleach',[],'Cfin',[],...
                    'bg',[],'movieIdx',[]);

    if debugplots
        h = [];
        for i = 1:6
            h(i) = figure; hold on
        end
    end

    for i = 1:size(idx,1)

        result = results{idx(i,1)}{idx(i,2)};
        if ~isfield(result,'good')
            warning('missing good index');
            result.good = true([1 size(result.tracesNuc,1)]);
        end
        goodidx = logical(result.good);
        ncrstruct = getNCR(result,bleachCorrect{idx(i,1)}(idx(i,2)));

        instruct.Nmovies = instruct.Nmovies + 1;
        instruct.Ncells = [instruct.Ncells sum(goodidx)];
        
        instruct.movieIdx = cat(1, instruct.movieIdx, repmat(idx(i,:), [sum(goodidx) 1]));
        
        % SLOPPY NEEDS WORK
        if bleachCorrect{idx(i,1)}(idx(i,2))
            disp(['using bleach correct for ' result.description]);
            instruct.A = cat(1, instruct.A, result.Ab(goodidx,1));
            instruct.Ac = cat(1, instruct.Ac, result.Acb(goodidx,1));
            %instruct.errA = cat(1, instruct.errA, result.Ab(goodidx,1)-result.Ab(goodidx,2));
            instruct.k = cat(1, instruct.k, result.kb(goodidx,1));
            %instruct.errk = cat(1, instruct.errk, result.kb(goodidx,1)-result.kb(goodidx,2));
        else
            disp(result.description);
            instruct.A = cat(1, instruct.A, result.A(goodidx,1));
            instruct.Ac = cat(1, instruct.Ac, result.Ac(goodidx,1));
            %instruct.errA = cat(1, instruct.errA, result.A(goodidx,1)-result.A(goodidx,2));
            instruct.k = cat(1, instruct.k, result.k(goodidx,1));
            %instruct.errk = cat(1, instruct.errk, result.k(goodidx,1)-result.k(goodidx,2));
        end
        
        instruct.ncrinit = cat(1, instruct.ncrinit, ncrstruct.ncrinit);
        instruct.ncrfin = cat(1, instruct.ncrfin, ncrstruct.ncrfin);
        
        instruct.nr = cat(1, instruct.nr, ncrstruct.nr);
        instruct.cr = cat(1, instruct.cr, ncrstruct.cr);
        
        instruct.Ninit = cat(1, instruct.Ninit, ncrstruct.Ninit);
        instruct.Nbleach = cat(1, instruct.Nbleach, ncrstruct.Nbleach);
        instruct.Nfin = cat(1, instruct.Nfin, ncrstruct.Nfin);
        instruct.Cinit = cat(1, instruct.Cinit, ncrstruct.Cinit);
        instruct.Cbleach = cat(1, instruct.Cbleach, ncrstruct.Cbleach);
        instruct.Cfin = cat(1, instruct.Cfin, ncrstruct.Cfin);
        instruct.bg = cat(1, instruct.bg, ncrstruct.bg);
        
        if debugplots
            xr = [ncrstruct.ncrinit]';
            figure(h(1))
            scatter(0*xr + i, xr, 500,'.');
            
            xr = [ncrstruct.ncrfin]';
            figure(h(2))
            scatter(0*xr + i, xr, 500,'.');

            figure(h(3))
            scatter(0*result.A(goodidx,1) + i, result.A(goodidx,1),500,'.');

            figure(h(4))
            scatter(0*result.k(goodidx,1) + i, result.k(goodidx,1),500,'.');
            
            nr = [ncrstruct.nr]';
            figure(h(5))
            scatter(0*nr + i, nr,500,'.');
            
            cr = [ncrstruct.cr]';
            figure(h(6))
            scatter(0*cr + i, cr,500,'.');
        end
    end
    if debugplots
        varnames = {'rin','rfin','A','k','nr','cr'};
        ylimvals = {[0 1.2],[0 1.2],[0 0.6],[0 0.025],[0 1],[0 1]};
        for i = 1:numel(h)
            figure(h(i))
            title(varnames(i));
            legend(legendstr,'Interpreter','none')
            xticks(1:size(idx,1));
            xlim([0.5 size(idx,1)+0.5]);
            ylim(ylimvals{i});
            hold off
            saveas(h(i), fullfile(dataDir,'debug',['debug_' varnames{i} label '.png']));
            saveas(h(i), fullfile(dataDir,'debug',['debug_' varnames{i} label '.fig']));
        end
    end
end