
function three_ph_modulator_config(this_block)

  % Revision History:
  %
  %   07-Jun-2018  (09:23 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     C:\Users\Jorge\Documents\GitHub\nvHIL\Vivado\NV_project\NV_project\NV_project.srcs\sources_1\new\3ph_modulator.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('three_ph_modulator');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

  this_block.addSimulinkInport('reset');
  this_block.addSimulinkInport('clk');
  this_block.addSimulinkInport('enable');
  this_block.addSimulinkInport('mod_a');
  this_block.addSimulinkInport('mod_b');
  this_block.addSimulinkInport('mod_c');

  this_block.addSimulinkOutport('T1');
  this_block.addSimulinkOutport('T2');
  this_block.addSimulinkOutport('T3');
  this_block.addSimulinkOutport('T4');
  this_block.addSimulinkOutport('T5');
  this_block.addSimulinkOutport('T6');

  T1_port = this_block.port('T1');
  T1_port.setType('UFix_1_0');
  T1_port.useHDLVector(false);
  T2_port = this_block.port('T2');
  T2_port.setType('UFix_1_0');
  T2_port.useHDLVector(false);
  T3_port = this_block.port('T3');
  T3_port.setType('UFix_1_0');
  T3_port.useHDLVector(false);
  T4_port = this_block.port('T4');
  T4_port.setType('UFix_1_0');
  T4_port.useHDLVector(false);
  T5_port = this_block.port('T5');
  T5_port.setType('UFix_1_0');
  T5_port.useHDLVector(false);
  T6_port = this_block.port('T6');
  T6_port.setType('UFix_1_0');
  T6_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('reset').width ~= 1);
      this_block.setError('Input data type for port "reset" must have width=1.');
    end

    this_block.port('reset').useHDLVector(false);

    if (this_block.port('clk').width ~= 1);
      this_block.setError('Input data type for port "clk" must have width=1.');
    end

    this_block.port('clk').useHDLVector(false);

    if (this_block.port('enable').width ~= 1);
      this_block.setError('Input data type for port "enable" must have width=1.');
    end

    this_block.port('enable').useHDLVector(false);

    if (this_block.port('mod_a').width ~= 18);
      this_block.setError('Input data type for port "mod_a" must have width=18.');
    end

    if (this_block.port('mod_b').width ~= 18);
      this_block.setError('Input data type for port "mod_b" must have width=18.');
    end

    if (this_block.port('mod_c').width ~= 18);
      this_block.setError('Input data type for port "mod_c" must have width=18.');
    end

  end  % if(inputTypesKnown)
  % -----------------------------

  % System Generator found no apparent clock signals in the HDL, assuming combinational logic.
  % -----------------------------
   if (this_block.inputRatesKnown)
     inputRates = this_block.inputRates; 
     uniqueInputRates = unique(inputRates); 
     outputRate = uniqueInputRates(1);
     for i = 2:length(uniqueInputRates)
       if (uniqueInputRates(i) ~= Inf)
         outputRate = gcd(outputRate,uniqueInputRates(i));
       end
     end  % for(i)
     for i = 1:this_block.numSimulinkOutports 
       this_block.outport(i).setRate(outputRate); 
     end  % for(i)
   end  % if(inputRatesKnown)
  % -----------------------------

    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('C:/Users/Jorge/Documents/GitHub/nvHIL/Vivado/NV_project/NV_project/NV_project.srcs/sources_1/new/3ph_modulator.vhd');

return;

