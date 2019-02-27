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
extern void execute_924(char*, char *);
extern void execute_925(char*, char *);
extern void execute_926(char*, char *);
extern void execute_36(char*, char *);
extern void execute_40(char*, char *);
extern void execute_44(char*, char *);
extern void execute_48(char*, char *);
extern void execute_56(char*, char *);
extern void execute_61(char*, char *);
extern void execute_66(char*, char *);
extern void execute_71(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_87(char*, char *);
extern void execute_91(char*, char *);
extern void execute_94(char*, char *);
extern void execute_98(char*, char *);
extern void execute_103(char*, char *);
extern void execute_108(char*, char *);
extern void execute_112(char*, char *);
extern void execute_116(char*, char *);
extern void execute_118(char*, char *);
extern void execute_122(char*, char *);
extern void execute_126(char*, char *);
extern void execute_131(char*, char *);
extern void execute_135(char*, char *);
extern void execute_139(char*, char *);
extern void execute_144(char*, char *);
extern void execute_148(char*, char *);
extern void execute_152(char*, char *);
extern void execute_155(char*, char *);
extern void execute_167(char*, char *);
extern void execute_180(char*, char *);
extern void execute_183(char*, char *);
extern void execute_190(char*, char *);
extern void execute_193(char*, char *);
extern void execute_198(char*, char *);
extern void execute_204(char*, char *);
extern void execute_208(char*, char *);
extern void execute_213(char*, char *);
extern void execute_221(char*, char *);
extern void execute_226(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_278(char*, char *);
extern void execute_313(char*, char *);
extern void execute_316(char*, char *);
extern void execute_321(char*, char *);
extern void execute_325(char*, char *);
extern void execute_328(char*, char *);
extern void execute_333(char*, char *);
extern void execute_338(char*, char *);
extern void execute_381(char*, char *);
extern void execute_384(char*, char *);
extern void execute_387(char*, char *);
extern void execute_391(char*, char *);
extern void execute_396(char*, char *);
extern void execute_400(char*, char *);
extern void execute_402(char*, char *);
extern void execute_406(char*, char *);
extern void execute_411(char*, char *);
extern void execute_423(char*, char *);
extern void execute_432(char*, char *);
extern void execute_436(char*, char *);
extern void execute_439(char*, char *);
extern void execute_447(char*, char *);
extern void execute_450(char*, char *);
extern void execute_454(char*, char *);
extern void execute_456(char*, char *);
extern void execute_500(char*, char *);
extern void execute_634(char*, char *);
extern void execute_670(char*, char *);
extern void execute_704(char*, char *);
extern void execute_706(char*, char *);
extern void execute_707(char*, char *);
extern void execute_739(char*, char *);
extern void execute_740(char*, char *);
extern void execute_744(char*, char *);
extern void execute_748(char*, char *);
extern void execute_773(char*, char *);
extern void execute_777(char*, char *);
extern void execute_784(char*, char *);
extern void execute_788(char*, char *);
extern void execute_802(char*, char *);
extern void execute_806(char*, char *);
extern void execute_810(char*, char *);
extern void execute_821(char*, char *);
extern void execute_825(char*, char *);
extern void execute_829(char*, char *);
extern void execute_839(char*, char *);
extern void execute_843(char*, char *);
extern void execute_865(char*, char *);
extern void execute_906(char*, char *);
extern void execute_912(char*, char *);
extern void execute_919(char*, char *);
extern void execute_923(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_281(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_295(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_323(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_391(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_426(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_500(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_507(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_576(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_583(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_597(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_625(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_632(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_653(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_681(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[257] = {(funcp)execute_924, (funcp)execute_925, (funcp)execute_926, (funcp)execute_36, (funcp)execute_40, (funcp)execute_44, (funcp)execute_48, (funcp)execute_56, (funcp)execute_61, (funcp)execute_66, (funcp)execute_71, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_87, (funcp)execute_91, (funcp)execute_94, (funcp)execute_98, (funcp)execute_103, (funcp)execute_108, (funcp)execute_112, (funcp)execute_116, (funcp)execute_118, (funcp)execute_122, (funcp)execute_126, (funcp)execute_131, (funcp)execute_135, (funcp)execute_139, (funcp)execute_144, (funcp)execute_148, (funcp)execute_152, (funcp)execute_155, (funcp)execute_167, (funcp)execute_180, (funcp)execute_183, (funcp)execute_190, (funcp)execute_193, (funcp)execute_198, (funcp)execute_204, (funcp)execute_208, (funcp)execute_213, (funcp)execute_221, (funcp)execute_226, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_258, (funcp)execute_278, (funcp)execute_313, (funcp)execute_316, (funcp)execute_321, (funcp)execute_325, (funcp)execute_328, (funcp)execute_333, (funcp)execute_338, (funcp)execute_381, (funcp)execute_384, (funcp)execute_387, (funcp)execute_391, (funcp)execute_396, (funcp)execute_400, (funcp)execute_402, (funcp)execute_406, (funcp)execute_411, (funcp)execute_423, (funcp)execute_432, (funcp)execute_436, (funcp)execute_439, (funcp)execute_447, (funcp)execute_450, (funcp)execute_454, (funcp)execute_456, (funcp)execute_500, (funcp)execute_634, (funcp)execute_670, (funcp)execute_704, (funcp)execute_706, (funcp)execute_707, (funcp)execute_739, (funcp)execute_740, (funcp)execute_744, (funcp)execute_748, (funcp)execute_773, (funcp)execute_777, (funcp)execute_784, (funcp)execute_788, (funcp)execute_802, (funcp)execute_806, (funcp)execute_810, (funcp)execute_821, (funcp)execute_825, (funcp)execute_829, (funcp)execute_839, (funcp)execute_843, (funcp)execute_865, (funcp)execute_906, (funcp)execute_912, (funcp)execute_919, (funcp)execute_923, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_90, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_158, (funcp)transaction_159, (funcp)transaction_161, (funcp)transaction_162, (funcp)transaction_163, (funcp)transaction_164, (funcp)transaction_165, (funcp)transaction_166, (funcp)transaction_168, (funcp)transaction_170, (funcp)transaction_174, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_200, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_212, (funcp)transaction_213, (funcp)transaction_214, (funcp)transaction_215, (funcp)transaction_226, (funcp)transaction_227, (funcp)transaction_241, (funcp)transaction_242, (funcp)transaction_245, (funcp)transaction_246, (funcp)transaction_248, (funcp)transaction_249, (funcp)transaction_253, (funcp)transaction_254, (funcp)transaction_267, (funcp)transaction_274, (funcp)transaction_281, (funcp)transaction_288, (funcp)transaction_295, (funcp)transaction_302, (funcp)transaction_309, (funcp)transaction_316, (funcp)transaction_323, (funcp)transaction_342, (funcp)transaction_349, (funcp)transaction_356, (funcp)transaction_363, (funcp)transaction_370, (funcp)transaction_377, (funcp)transaction_384, (funcp)transaction_391, (funcp)transaction_398, (funcp)transaction_405, (funcp)transaction_412, (funcp)transaction_419, (funcp)transaction_426, (funcp)transaction_433, (funcp)transaction_440, (funcp)transaction_447, (funcp)transaction_454, (funcp)transaction_461, (funcp)transaction_468, (funcp)transaction_493, (funcp)transaction_500, (funcp)transaction_507, (funcp)transaction_514, (funcp)transaction_527, (funcp)transaction_576, (funcp)transaction_583, (funcp)transaction_590, (funcp)transaction_597, (funcp)transaction_604, (funcp)transaction_611, (funcp)transaction_618, (funcp)transaction_625, (funcp)transaction_632, (funcp)transaction_639, (funcp)transaction_646, (funcp)transaction_653, (funcp)transaction_660, (funcp)transaction_667, (funcp)transaction_674, (funcp)transaction_681};
const int NumRelocateId= 257;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_impl/xsim.reloc",  (void **)funcTab, 257);
	iki_vhdl_file_variable_register(dp + 1196968);
	iki_vhdl_file_variable_register(dp + 1197024);


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
