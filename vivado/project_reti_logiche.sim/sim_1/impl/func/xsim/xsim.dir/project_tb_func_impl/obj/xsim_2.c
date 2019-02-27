/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_927(char*, char *);
extern void execute_928(char*, char *);
extern void execute_929(char*, char *);
extern void execute_36(char*, char *);
extern void execute_40(char*, char *);
extern void execute_44(char*, char *);
extern void execute_48(char*, char *);
extern void execute_51(char*, char *);
extern void execute_56(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_72(char*, char *);
extern void execute_76(char*, char *);
extern void execute_79(char*, char *);
extern void execute_83(char*, char *);
extern void execute_88(char*, char *);
extern void execute_93(char*, char *);
extern void execute_97(char*, char *);
extern void execute_101(char*, char *);
extern void execute_103(char*, char *);
extern void execute_107(char*, char *);
extern void execute_111(char*, char *);
extern void execute_116(char*, char *);
extern void execute_120(char*, char *);
extern void execute_124(char*, char *);
extern void execute_129(char*, char *);
extern void execute_133(char*, char *);
extern void execute_137(char*, char *);
extern void execute_140(char*, char *);
extern void execute_152(char*, char *);
extern void execute_165(char*, char *);
extern void execute_168(char*, char *);
extern void execute_175(char*, char *);
extern void execute_178(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_189(char*, char *);
extern void execute_193(char*, char *);
extern void execute_198(char*, char *);
extern void execute_206(char*, char *);
extern void execute_211(char*, char *);
extern void execute_213(char*, char *);
extern void execute_214(char*, char *);
extern void execute_215(char*, char *);
extern void execute_237(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_264(char*, char *);
extern void execute_267(char*, char *);
extern void execute_271(char*, char *);
extern void execute_279(char*, char *);
extern void execute_283(char*, char *);
extern void execute_317(char*, char *);
extern void execute_320(char*, char *);
extern void execute_323(char*, char *);
extern void execute_328(char*, char *);
extern void execute_331(char*, char *);
extern void execute_334(char*, char *);
extern void execute_337(char*, char *);
extern void execute_370(char*, char *);
extern void execute_373(char*, char *);
extern void execute_376(char*, char *);
extern void execute_380(char*, char *);
extern void execute_385(char*, char *);
extern void execute_389(char*, char *);
extern void execute_396(char*, char *);
extern void execute_417(char*, char *);
extern void execute_420(char*, char *);
extern void execute_423(char*, char *);
extern void execute_427(char*, char *);
extern void execute_431(char*, char *);
extern void execute_436(char*, char *);
extern void execute_440(char*, char *);
extern void execute_445(char*, char *);
extern void execute_449(char*, char *);
extern void execute_452(char*, char *);
extern void execute_496(char*, char *);
extern void execute_631(char*, char *);
extern void execute_667(char*, char *);
extern void execute_701(char*, char *);
extern void execute_703(char*, char *);
extern void execute_704(char*, char *);
extern void execute_736(char*, char *);
extern void execute_737(char*, char *);
extern void execute_741(char*, char *);
extern void execute_766(char*, char *);
extern void execute_773(char*, char *);
extern void execute_784(char*, char *);
extern void execute_786(char*, char *);
extern void execute_790(char*, char *);
extern void execute_807(char*, char *);
extern void execute_812(char*, char *);
extern void execute_817(char*, char *);
extern void execute_838(char*, char *);
extern void execute_883(char*, char *);
extern void execute_889(char*, char *);
extern void execute_895(char*, char *);
extern void execute_903(char*, char *);
extern void execute_910(char*, char *);
extern void execute_915(char*, char *);
extern void execute_919(char*, char *);
extern void execute_923(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_306(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_402(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_484(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_573(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_587(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_601(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_608(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_615(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_629(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_636(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_643(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_657(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_678(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[259] = {(funcp)execute_927, (funcp)execute_928, (funcp)execute_929, (funcp)execute_36, (funcp)execute_40, (funcp)execute_44, (funcp)execute_48, (funcp)execute_51, (funcp)execute_56, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_72, (funcp)execute_76, (funcp)execute_79, (funcp)execute_83, (funcp)execute_88, (funcp)execute_93, (funcp)execute_97, (funcp)execute_101, (funcp)execute_103, (funcp)execute_107, (funcp)execute_111, (funcp)execute_116, (funcp)execute_120, (funcp)execute_124, (funcp)execute_129, (funcp)execute_133, (funcp)execute_137, (funcp)execute_140, (funcp)execute_152, (funcp)execute_165, (funcp)execute_168, (funcp)execute_175, (funcp)execute_178, (funcp)execute_183, (funcp)execute_187, (funcp)execute_189, (funcp)execute_193, (funcp)execute_198, (funcp)execute_206, (funcp)execute_211, (funcp)execute_213, (funcp)execute_214, (funcp)execute_215, (funcp)execute_237, (funcp)execute_238, (funcp)execute_239, (funcp)execute_240, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_264, (funcp)execute_267, (funcp)execute_271, (funcp)execute_279, (funcp)execute_283, (funcp)execute_317, (funcp)execute_320, (funcp)execute_323, (funcp)execute_328, (funcp)execute_331, (funcp)execute_334, (funcp)execute_337, (funcp)execute_370, (funcp)execute_373, (funcp)execute_376, (funcp)execute_380, (funcp)execute_385, (funcp)execute_389, (funcp)execute_396, (funcp)execute_417, (funcp)execute_420, (funcp)execute_423, (funcp)execute_427, (funcp)execute_431, (funcp)execute_436, (funcp)execute_440, (funcp)execute_445, (funcp)execute_449, (funcp)execute_452, (funcp)execute_496, (funcp)execute_631, (funcp)execute_667, (funcp)execute_701, (funcp)execute_703, (funcp)execute_704, (funcp)execute_736, (funcp)execute_737, (funcp)execute_741, (funcp)execute_766, (funcp)execute_773, (funcp)execute_784, (funcp)execute_786, (funcp)execute_790, (funcp)execute_807, (funcp)execute_812, (funcp)execute_817, (funcp)execute_838, (funcp)execute_883, (funcp)execute_889, (funcp)execute_895, (funcp)execute_903, (funcp)execute_910, (funcp)execute_915, (funcp)execute_919, (funcp)execute_923, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_91, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_158, (funcp)transaction_159, (funcp)transaction_160, (funcp)transaction_161, (funcp)transaction_163, (funcp)transaction_164, (funcp)transaction_166, (funcp)transaction_168, (funcp)transaction_172, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_200, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_212, (funcp)transaction_223, (funcp)transaction_224, (funcp)transaction_238, (funcp)transaction_239, (funcp)transaction_242, (funcp)transaction_243, (funcp)transaction_245, (funcp)transaction_246, (funcp)transaction_250, (funcp)transaction_251, (funcp)transaction_264, (funcp)transaction_271, (funcp)transaction_278, (funcp)transaction_285, (funcp)transaction_292, (funcp)transaction_299, (funcp)transaction_306, (funcp)transaction_313, (funcp)transaction_320, (funcp)transaction_339, (funcp)transaction_346, (funcp)transaction_353, (funcp)transaction_360, (funcp)transaction_367, (funcp)transaction_374, (funcp)transaction_381, (funcp)transaction_388, (funcp)transaction_395, (funcp)transaction_402, (funcp)transaction_409, (funcp)transaction_416, (funcp)transaction_423, (funcp)transaction_430, (funcp)transaction_437, (funcp)transaction_444, (funcp)transaction_451, (funcp)transaction_458, (funcp)transaction_465, (funcp)transaction_484, (funcp)transaction_491, (funcp)transaction_498, (funcp)transaction_505, (funcp)transaction_524, (funcp)transaction_573, (funcp)transaction_580, (funcp)transaction_587, (funcp)transaction_594, (funcp)transaction_601, (funcp)transaction_608, (funcp)transaction_615, (funcp)transaction_622, (funcp)transaction_629, (funcp)transaction_636, (funcp)transaction_643, (funcp)transaction_650, (funcp)transaction_657, (funcp)transaction_664, (funcp)transaction_671, (funcp)transaction_678};
const int NumRelocateId= 259;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_impl/xsim.reloc",  (void **)funcTab, 259);
	iki_vhdl_file_variable_register(dp + 1196320);
	iki_vhdl_file_variable_register(dp + 1196376);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_impl/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
