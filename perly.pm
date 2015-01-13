####################################################################
#
#    This file was generated using Parse::Yapp version 1.05.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package perly;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;



sub new {
        my($class)=shift;
        ref($class)
    and $class=ref($class);

    my($self)=$class->SUPER::new( yyversion => '1.05',
                                  yystates =>
[
	{#State 0
		ACTIONS => {
			'GRAMBLOCK' => 4,
			'GRAMBARESTMT' => 3,
			'GRAMFULLSTMT' => 2,
			'GRAMSTMTSEQ' => 1,
			'GRAMEXPR' => 6,
			'GRAMPROG' => 7
		},
		GOTOS => {
			'grammar' => 5
		}
	},
	{#State 1
		DEFAULT => -15,
		GOTOS => {
			'@10-1' => 8
		}
	},
	{#State 2
		DEFAULT => -12,
		GOTOS => {
			'@8-1' => 9
		}
	},
	{#State 3
		DEFAULT => -9,
		GOTOS => {
			'@6-1' => 10
		}
	},
	{#State 4
		DEFAULT => -6,
		GOTOS => {
			'@4-1' => 11
		}
	},
	{#State 5
		ACTIONS => {
			'' => 12
		}
	},
	{#State 6
		DEFAULT => -3,
		GOTOS => {
			'@2-1' => 13
		}
	},
	{#State 7
		DEFAULT => -1,
		GOTOS => {
			'@1-1' => 14
		}
	},
	{#State 8
		DEFAULT => -22,
		GOTOS => {
			'stmtseq' => 15
		}
	},
	{#State 9
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'LOCAL' => 89,
			'WHILE' => 88,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 27,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 10
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 97,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 11
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 98
		}
	},
	{#State 12
		DEFAULT => 0
	},
	{#State 13
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		DEFAULT => -209,
		GOTOS => {
			'scalar' => 17,
			'optexpr' => 99,
			'term' => 80,
			'ary' => 21,
			'expr' => 100,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 14
		DEFAULT => -18,
		GOTOS => {
			'remember' => 101
		}
	},
	{#State 15
		ACTIONS => {
			'' => -16,
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'PREINC' => 35,
			'FUNC0OP' => 34,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 102,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 16
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 103,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 17
		ACTIONS => {
			"[" => 104,
			"{" => 105
		},
		DEFAULT => -165
	},
	{#State 18
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 108,
			'block' => 110
		}
	},
	{#State 19
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 111,
			'block' => 110
		}
	},
	{#State 20
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 114,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'PRIVATEREF' => 109,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -207,
		GOTOS => {
			'scalar' => 112,
			'indirob' => 115,
			'optlistexpr' => 113,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 116,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 110
		}
	},
	{#State 21
		ACTIONS => {
			"[" => 117,
			"{" => 118
		},
		DEFAULT => -168
	},
	{#State 22
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 121
		}
	},
	{#State 23
		ACTIONS => {
			"[" => 122
		},
		DEFAULT => -163
	},
	{#State 24
		DEFAULT => -75,
		GOTOS => {
			'startsub' => 123
		}
	},
	{#State 25
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 124,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 26
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 125,
			'block' => 110
		}
	},
	{#State 27
		DEFAULT => -13,
		GOTOS => {
			'@9-3' => 126
		}
	},
	{#State 28
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -184,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 127,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 29
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			"]" => 128,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 129,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 30
		DEFAULT => -155
	},
	{#State 31
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			";" => 130,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 131,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 32
		DEFAULT => -77,
		GOTOS => {
			'startformsub' => 132
		}
	},
	{#State 33
		DEFAULT => -75,
		GOTOS => {
			'startsub' => 133
		}
	},
	{#State 34
		ACTIONS => {
			"(" => 134
		},
		DEFAULT => -190
	},
	{#State 35
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 135,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 36
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 136,
			'block' => 110
		}
	},
	{#State 37
		DEFAULT => -199
	},
	{#State 38
		ACTIONS => {
			";" => 137
		}
	},
	{#State 39
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 138,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 40
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120,
			"\$" => 60,
			'MY' => 140
		},
		GOTOS => {
			'scalar' => 139,
			'lpar_or_qw' => 141
		}
	},
	{#State 41
		ACTIONS => {
			'WORD' => 142
		}
	},
	{#State 42
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 143,
			'block' => 110
		}
	},
	{#State 43
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -178,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 144,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 44
		DEFAULT => -51
	},
	{#State 45
		DEFAULT => -197
	},
	{#State 46
		ACTIONS => {
			"(" => 145
		},
		DEFAULT => -188
	},
	{#State 47
		DEFAULT => -169
	},
	{#State 48
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -181,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 146,
			'ary' => 21,
			'termbinop' => 62,
			'block' => 147,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 49
		DEFAULT => -18,
		GOTOS => {
			'remember' => 148
		}
	},
	{#State 50
		DEFAULT => -76,
		GOTOS => {
			'startanonsub' => 149
		}
	},
	{#State 51
		DEFAULT => -75,
		GOTOS => {
			'startsub' => 150
		}
	},
	{#State 52
		DEFAULT => -192
	},
	{#State 53
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 151,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 54
		DEFAULT => -196
	},
	{#State 55
		DEFAULT => -76,
		GOTOS => {
			'startanonsub' => 152
		}
	},
	{#State 56
		ACTIONS => {
			'WORD' => 153
		}
	},
	{#State 57
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 154,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 58
		ACTIONS => {
			"(" => 159,
			"\@" => 18,
			"\$" => 60,
			"%" => 19
		},
		GOTOS => {
			'scalar' => 155,
			'myterm' => 157,
			'hsh' => 158,
			'ary' => 156
		}
	},
	{#State 59
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 160,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 60
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 161,
			'block' => 110
		}
	},
	{#State 61
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 162
		}
	},
	{#State 62
		DEFAULT => -154
	},
	{#State 63
		DEFAULT => -167
	},
	{#State 64
		ACTIONS => {
			"(" => 163
		}
	},
	{#State 65
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 164,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 66
		ACTIONS => {
			"{" => 165
		},
		DEFAULT => -166
	},
	{#State 67
		DEFAULT => -24
	},
	{#State 68
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 166
		}
	},
	{#State 69
		DEFAULT => -156
	},
	{#State 70
		DEFAULT => -160
	},
	{#State 71
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		DEFAULT => -174,
		GOTOS => {
			'lpar_or_qw' => 167
		}
	},
	{#State 72
		ACTIONS => {
			'QWLIST' => 119,
			"[" => 168,
			"(" => 120,
			"{" => 169
		},
		DEFAULT => -170,
		GOTOS => {
			'lpar_or_qw' => 170
		}
	},
	{#State 73
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 171,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 172,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 74
		DEFAULT => -173
	},
	{#State 75
		ACTIONS => {
			"(" => 173
		}
	},
	{#State 76
		DEFAULT => -50
	},
	{#State 77
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'labfullstmt' => 175,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 174,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 78
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 176
		}
	},
	{#State 79
		ACTIONS => {
			"(" => 177
		}
	},
	{#State 80
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'ASSIGNOP' => 180,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			"?" => 187,
			'MULOP' => 189,
			'DOTDOT' => 195,
			'OROR' => 190
		},
		DEFAULT => -94
	},
	{#State 81
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 196,
			'block' => 110
		}
	},
	{#State 82
		DEFAULT => -29
	},
	{#State 83
		ACTIONS => {
			'UNTIL' => 203,
			'FOR' => 200,
			'OROP' => 199,
			'WHEN' => 204,
			'ANDOP' => 197,
			'UNLESS' => 198,
			'DOROP' => 201,
			'IF' => 202,
			'WHILE' => 205
		},
		DEFAULT => -52
	},
	{#State 84
		DEFAULT => -25
	},
	{#State 85
		DEFAULT => -28
	},
	{#State 86
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -186,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 206,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 87
		ACTIONS => {
			"," => 207
		},
		DEFAULT => -91
	},
	{#State 88
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 208
		}
	},
	{#State 89
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 209,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 90
		DEFAULT => -157
	},
	{#State 91
		ACTIONS => {
			'WORD' => 107,
			"\$" => 60,
			'PRIVATEREF' => 109,
			"{" => 49
		},
		GOTOS => {
			'scalar' => 106,
			'indirob' => 210,
			'block' => 110
		}
	},
	{#State 92
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 211
		}
	},
	{#State 93
		DEFAULT => -198
	},
	{#State 94
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 213
		}
	},
	{#State 95
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 214
		}
	},
	{#State 96
		ACTIONS => {
			'WORD' => 216,
			'ANONSUB' => 55,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 215,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 217,
			'ary' => 21,
			'termbinop' => 62,
			'block' => 218,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 97
		DEFAULT => -10,
		GOTOS => {
			'@7-3' => 219
		}
	},
	{#State 98
		DEFAULT => -7,
		GOTOS => {
			'@5-3' => 220
		}
	},
	{#State 99
		DEFAULT => -4,
		GOTOS => {
			'@3-3' => 221
		}
	},
	{#State 100
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -210
	},
	{#State 101
		DEFAULT => -22,
		GOTOS => {
			'stmtseq' => 222
		}
	},
	{#State 102
		DEFAULT => -23
	},
	{#State 103
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -135
	},
	{#State 104
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 223,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 105
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 224,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 106
		DEFAULT => -222
	},
	{#State 107
		DEFAULT => -221
	},
	{#State 108
		DEFAULT => -217
	},
	{#State 109
		DEFAULT => -224
	},
	{#State 110
		DEFAULT => -223
	},
	{#State 111
		DEFAULT => -218
	},
	{#State 112
		ACTIONS => {
			":" => -165,
			'BITANDOP' => -165,
			'DORDOR' => -165,
			'ANDOP' => -165,
			'UNLESS' => -165,
			'ASSIGNOP' => -165,
			"[" => 104,
			'MATCHOP' => -165,
			'OROP' => -165,
			'SHIFTOP' => -165,
			'RELOP' => -165,
			'EQOP' => -165,
			'FOR' => -165,
			'ADDOP' => -165,
			"," => -165,
			'POSTINC' => -165,
			")" => -165,
			"?" => -165,
			'POSTDEC' => -165,
			"{" => 105,
			'MULOP' => -165,
			'OROR' => -165,
			'DOROP' => -165,
			'ARROW' => -165,
			'IF' => -165,
			"]" => -165,
			'POWOP' => -165,
			'EOI' => -165,
			'UNTIL' => -165,
			'ANDAND' => -165,
			";" => -165,
			'WHEN' => -165,
			'BITOROP' => -165,
			'WHILE' => -165,
			'DOTDOT' => -165
		},
		DEFAULT => -222
	},
	{#State 113
		DEFAULT => -101
	},
	{#State 114
		ACTIONS => {
			":" => -196,
			'BITANDOP' => -196,
			'DORDOR' => -196,
			'ANDOP' => -196,
			'UNLESS' => -196,
			'ASSIGNOP' => -196,
			'MATCHOP' => -196,
			'OROP' => -196,
			'SHIFTOP' => -196,
			'RELOP' => -196,
			'EQOP' => -196,
			'FOR' => -196,
			'ADDOP' => -196,
			"," => -196,
			'POSTINC' => -196,
			")" => -196,
			"?" => -196,
			'POSTDEC' => -196,
			'MULOP' => -196,
			'OROR' => -196,
			'DOROP' => -196,
			'ARROW' => -196,
			'IF' => -196,
			"]" => -196,
			'POWOP' => -196,
			'EOI' => -196,
			'UNTIL' => -196,
			'ANDAND' => -196,
			";" => -196,
			'WHEN' => -196,
			'BITOROP' => -196,
			'WHILE' => -196,
			'DOTDOT' => -196
		},
		DEFAULT => -221
	},
	{#State 115
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 225,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 116
		ACTIONS => {
			"," => 207
		},
		DEFAULT => -208
	},
	{#State 117
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 226,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 118
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 227,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 119
		DEFAULT => -212,
		GOTOS => {
			'@13-1' => 228
		}
	},
	{#State 120
		DEFAULT => -211
	},
	{#State 121
		DEFAULT => -18,
		GOTOS => {
			'remember' => 229
		}
	},
	{#State 122
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 230,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 123
		ACTIONS => {
			'WORD' => 232
		},
		GOTOS => {
			'subname' => 231
		}
	},
	{#State 124
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -137
	},
	{#State 125
		DEFAULT => -220
	},
	{#State 126
		ACTIONS => {
			'EOI' => 233
		}
	},
	{#State 127
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -185
	},
	{#State 128
		DEFAULT => -144
	},
	{#State 129
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 234,
			'ANDOP' => 197
		}
	},
	{#State 130
		ACTIONS => {
			"}" => 235
		}
	},
	{#State 131
		ACTIONS => {
			'DOROP' => 201,
			";" => 236,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 132
		ACTIONS => {
			'WORD' => 238
		},
		DEFAULT => -74,
		GOTOS => {
			'formname' => 237
		}
	},
	{#State 133
		ACTIONS => {
			'WORD' => 232
		},
		GOTOS => {
			'subname' => 239
		}
	},
	{#State 134
		ACTIONS => {
			")" => 240
		}
	},
	{#State 135
		ACTIONS => {
			'ARROW' => 191,
			'POSTINC' => undef,
			'POSTDEC' => undef
		},
		DEFAULT => -141
	},
	{#State 136
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -207,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'optlistexpr' => 241,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 116,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 137
		DEFAULT => -49
	},
	{#State 138
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -136
	},
	{#State 139
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 242
		}
	},
	{#State 140
		DEFAULT => -18,
		GOTOS => {
			'remember' => 243
		}
	},
	{#State 141
		DEFAULT => -18,
		GOTOS => {
			'remember' => 244
		}
	},
	{#State 142
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -207,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'optlistexpr' => 245,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 116,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 143
		DEFAULT => -219
	},
	{#State 144
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'ASSIGNOP' => 180,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			"?" => 187,
			'MULOP' => 189,
			'DOTDOT' => 195,
			'OROR' => 190
		},
		DEFAULT => -179
	},
	{#State 145
		ACTIONS => {
			")" => 246
		}
	},
	{#State 146
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -183
	},
	{#State 147
		DEFAULT => -182
	},
	{#State 148
		DEFAULT => -22,
		GOTOS => {
			'stmtseq' => 247
		}
	},
	{#State 149
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 248
		}
	},
	{#State 150
		ACTIONS => {
			'WORD' => 249
		}
	},
	{#State 151
		ACTIONS => {
			'ARROW' => 191,
			'POSTINC' => undef,
			'POSTDEC' => undef
		},
		DEFAULT => -142
	},
	{#State 152
		ACTIONS => {
			'THING' => 251
		},
		DEFAULT => -79,
		GOTOS => {
			'proto' => 250
		}
	},
	{#State 153
		ACTIONS => {
			'WORD' => 252
		}
	},
	{#State 154
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -138
	},
	{#State 155
		DEFAULT => -204
	},
	{#State 156
		DEFAULT => -206
	},
	{#State 157
		ACTIONS => {
			'COLONATTR' => 253
		},
		DEFAULT => -201,
		GOTOS => {
			'myattrlist' => 254
		}
	},
	{#State 158
		DEFAULT => -205
	},
	{#State 159
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 255,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 256,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 160
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -159
	},
	{#State 161
		DEFAULT => -216
	},
	{#State 162
		DEFAULT => -18,
		GOTOS => {
			'remember' => 257
		}
	},
	{#State 163
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 258,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 164
		ACTIONS => {
			"," => 207
		},
		DEFAULT => -180
	},
	{#State 165
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 259,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 166
		DEFAULT => -18,
		GOTOS => {
			'remember' => 260
		}
	},
	{#State 167
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 261,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 262,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 168
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 263,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 169
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 264,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 170
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 265,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 266,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 171
		ACTIONS => {
			"[" => 267
		},
		DEFAULT => -164
	},
	{#State 172
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 268,
			'ANDOP' => 197
		}
	},
	{#State 173
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 269,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 270,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 174
		DEFAULT => -26
	},
	{#State 175
		DEFAULT => -27
	},
	{#State 176
		DEFAULT => -18,
		GOTOS => {
			'remember' => 271
		}
	},
	{#State 177
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 114,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'PRIVATEREF' => 109,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		DEFAULT => -209,
		GOTOS => {
			'scalar' => 112,
			'indirob' => 273,
			'optexpr' => 272,
			'term' => 80,
			'ary' => 21,
			'expr' => 100,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 110
		}
	},
	{#State 178
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 274,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 179
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 275,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 180
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 276,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 181
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 277,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 182
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 278,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 183
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 279,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 184
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 280,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 185
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 281,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 186
		DEFAULT => -139
	},
	{#State 187
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 282,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 188
		DEFAULT => -140
	},
	{#State 189
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 283,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 190
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 284,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 191
		ACTIONS => {
			"(" => 290,
			"\$" => 60,
			"{" => 289,
			"[" => 286,
			'METHOD' => 287
		},
		GOTOS => {
			'scalar' => 285,
			'method' => 288
		}
	},
	{#State 192
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 291,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 193
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 292,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 194
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 293,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 195
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 294,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 196
		ACTIONS => {
			"(" => 295
		}
	},
	{#State 197
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 296,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 198
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 297,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 199
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 298,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 200
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 299,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 201
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 300,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 202
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 301,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 203
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 303,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'iexpr' => 302,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 204
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 304,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 205
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 305,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 206
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -187
	},
	{#State 207
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -92,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 306,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 208
		DEFAULT => -18,
		GOTOS => {
			'remember' => 307
		}
	},
	{#State 209
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -161
	},
	{#State 210
		DEFAULT => -215
	},
	{#State 211
		DEFAULT => -39
	},
	{#State 212
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 308
		}
	},
	{#State 213
		DEFAULT => -46
	},
	{#State 214
		DEFAULT => -18,
		GOTOS => {
			'remember' => 309
		}
	},
	{#State 215
		ACTIONS => {
			'QWLIST' => 119,
			"[" => 104,
			"(" => 120,
			"{" => 105
		},
		DEFAULT => -165,
		GOTOS => {
			'lpar_or_qw' => 310
		}
	},
	{#State 216
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		DEFAULT => -196,
		GOTOS => {
			'lpar_or_qw' => 311
		}
	},
	{#State 217
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -148
	},
	{#State 218
		DEFAULT => -149
	},
	{#State 219
		ACTIONS => {
			'EOI' => 312
		}
	},
	{#State 220
		ACTIONS => {
			'EOI' => 313
		}
	},
	{#State 221
		ACTIONS => {
			'EOI' => 314
		}
	},
	{#State 222
		ACTIONS => {
			'' => -2,
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'PREINC' => 35,
			'FUNC0OP' => 34,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 102,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 223
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 315,
			'ANDOP' => 197
		}
	},
	{#State 224
		ACTIONS => {
			'DOROP' => 201,
			";" => 316,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 225
		ACTIONS => {
			"," => 207
		},
		DEFAULT => -95
	},
	{#State 226
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 317,
			'ANDOP' => 197
		}
	},
	{#State 227
		ACTIONS => {
			'DOROP' => 201,
			";" => 318,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 228
		ACTIONS => {
			"(" => 319
		}
	},
	{#State 229
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'miexpr' => 320,
			'expr' => 303,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'iexpr' => 321,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 230
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 322,
			'ANDOP' => 197
		}
	},
	{#State 231
		ACTIONS => {
			'THING' => 251
		},
		DEFAULT => -79,
		GOTOS => {
			'proto' => 323
		}
	},
	{#State 232
		DEFAULT => -78
	},
	{#State 233
		DEFAULT => -14
	},
	{#State 234
		DEFAULT => -143
	},
	{#State 235
		DEFAULT => -146
	},
	{#State 236
		ACTIONS => {
			"}" => 324
		}
	},
	{#State 237
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 325
		}
	},
	{#State 238
		DEFAULT => -73
	},
	{#State 239
		ACTIONS => {
			'THING' => 251
		},
		DEFAULT => -79,
		GOTOS => {
			'proto' => 326
		}
	},
	{#State 240
		DEFAULT => -191
	},
	{#State 241
		DEFAULT => -99
	},
	{#State 242
		DEFAULT => -18,
		GOTOS => {
			'remember' => 327
		}
	},
	{#State 243
		ACTIONS => {
			"\$" => 60
		},
		GOTOS => {
			'scalar' => 328,
			'my_scalar' => 329
		}
	},
	{#State 244
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			";" => -65,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 333,
			'scalar' => 17,
			'sideff' => 331,
			'term' => 80,
			'ary' => 21,
			'expr' => 334,
			'termbinop' => 62,
			'nexpr' => 332,
			'listop' => 45,
			'listexpr' => 87,
			'hsh' => 63,
			'termunop' => 30,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'mnexpr' => 330,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 245
		DEFAULT => -177
	},
	{#State 246
		DEFAULT => -189
	},
	{#State 247
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"}" => 335,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'PREINC' => 35,
			'FUNC0OP' => 34,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 102,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 248
		DEFAULT => -103,
		GOTOS => {
			'@12-3' => 336
		}
	},
	{#State 249
		ACTIONS => {
			'WORD' => 337
		}
	},
	{#State 250
		ACTIONS => {
			'COLONATTR' => 338
		},
		DEFAULT => -81,
		GOTOS => {
			'subattrlist' => 339
		}
	},
	{#State 251
		DEFAULT => -80
	},
	{#State 252
		ACTIONS => {
			";" => 341,
			"{" => 340
		}
	},
	{#State 253
		ACTIONS => {
			'THING' => 342
		},
		DEFAULT => -85
	},
	{#State 254
		DEFAULT => -200
	},
	{#State 255
		DEFAULT => -203
	},
	{#State 256
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 343,
			'ANDOP' => 197
		}
	},
	{#State 257
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 344,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 258
		ACTIONS => {
			"," => 207,
			")" => 346
		}
	},
	{#State 259
		ACTIONS => {
			'DOROP' => 201,
			";" => 347,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 260
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 303,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'iexpr' => 348,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 261
		DEFAULT => -175
	},
	{#State 262
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 349,
			'ANDOP' => 197
		}
	},
	{#State 263
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 350,
			'ANDOP' => 197
		}
	},
	{#State 264
		ACTIONS => {
			'DOROP' => 201,
			";" => 351,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 265
		DEFAULT => -117
	},
	{#State 266
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 352,
			'ANDOP' => 197
		}
	},
	{#State 267
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 353,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 268
		ACTIONS => {
			"[" => 354
		},
		DEFAULT => -162
	},
	{#State 269
		DEFAULT => -193
	},
	{#State 270
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 355,
			'ANDOP' => 197
		}
	},
	{#State 271
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 356,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 272
		ACTIONS => {
			")" => 357
		}
	},
	{#State 273
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 358,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 274
		ACTIONS => {
			'BITANDOP' => 179,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -133
	},
	{#State 275
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -128
	},
	{#State 276
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'ASSIGNOP' => 180,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			"?" => 187,
			'MULOP' => 189,
			'DOTDOT' => 195,
			'OROR' => 190
		},
		DEFAULT => -121
	},
	{#State 277
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -134
	},
	{#State 278
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -125
	},
	{#State 279
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'RELOP' => 184,
			'EQOP' => undef,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -127
	},
	{#State 280
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'RELOP' => undef,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -126
	},
	{#State 281
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -124
	},
	{#State 282
		ACTIONS => {
			":" => 359,
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ADDOP' => 185,
			'ARROW' => 191,
			'ASSIGNOP' => 180,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POWOP' => 192,
			'MATCHOP' => 181,
			"?" => 187,
			'POSTDEC' => 188,
			'DOTDOT' => 195,
			'MULOP' => 189,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'OROR' => 190,
			'RELOP' => 184,
			'EQOP' => 183
		}
	},
	{#State 283
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -123
	},
	{#State 284
		ACTIONS => {
			'BITANDOP' => 179,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -132
	},
	{#State 285
		DEFAULT => -106
	},
	{#State 286
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 360,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 287
		DEFAULT => -105
	},
	{#State 288
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		DEFAULT => -98,
		GOTOS => {
			'lpar_or_qw' => 361
		}
	},
	{#State 289
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 362,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 290
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 363,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 364,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 291
		ACTIONS => {
			'ARROW' => 191,
			'POWOP' => 192,
			'POSTINC' => 186,
			'POSTDEC' => 188
		},
		DEFAULT => -122
	},
	{#State 292
		ACTIONS => {
			'BITANDOP' => 179,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -131
	},
	{#State 293
		ACTIONS => {
			'BITANDOP' => 179,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'POSTDEC' => 188,
			'MULOP' => 189
		},
		DEFAULT => -129
	},
	{#State 294
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			'MULOP' => 189,
			'DOTDOT' => undef,
			'OROR' => 190
		},
		DEFAULT => -130
	},
	{#State 295
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		DEFAULT => -209,
		GOTOS => {
			'scalar' => 17,
			'optexpr' => 365,
			'term' => 80,
			'ary' => 21,
			'expr' => 100,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 296
		DEFAULT => -88
	},
	{#State 297
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -54
	},
	{#State 298
		ACTIONS => {
			'ANDOP' => 197
		},
		DEFAULT => -89
	},
	{#State 299
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -57
	},
	{#State 300
		ACTIONS => {
			'ANDOP' => 197
		},
		DEFAULT => -90
	},
	{#State 301
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -53
	},
	{#State 302
		DEFAULT => -56
	},
	{#State 303
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -69
	},
	{#State 304
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -58
	},
	{#State 305
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -55
	},
	{#State 306
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'ASSIGNOP' => 180,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			"?" => 187,
			'MULOP' => 189,
			'DOTDOT' => 195,
			'OROR' => 190
		},
		DEFAULT => -93
	},
	{#State 307
		ACTIONS => {
			'exp' => 367
		},
		DEFAULT => -67,
		GOTOS => {
			'texpr' => 366
		}
	},
	{#State 308
		DEFAULT => -63
	},
	{#State 309
		DEFAULT => -19,
		GOTOS => {
			'mydefsv' => 368
		}
	},
	{#State 310
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 369,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 370,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 311
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			")" => 371,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 372,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 312
		DEFAULT => -11
	},
	{#State 313
		DEFAULT => -8
	},
	{#State 314
		DEFAULT => -5
	},
	{#State 315
		DEFAULT => -108
	},
	{#State 316
		ACTIONS => {
			"}" => 373
		}
	},
	{#State 317
		DEFAULT => -171
	},
	{#State 318
		ACTIONS => {
			"}" => 374
		}
	},
	{#State 319
		DEFAULT => -213
	},
	{#State 320
		ACTIONS => {
			")" => 375
		}
	},
	{#State 321
		DEFAULT => -72
	},
	{#State 322
		DEFAULT => -119
	},
	{#State 323
		ACTIONS => {
			'COLONATTR' => 338
		},
		DEFAULT => -81,
		GOTOS => {
			'subattrlist' => 376
		}
	},
	{#State 324
		DEFAULT => -145
	},
	{#State 325
		DEFAULT => -30
	},
	{#State 326
		ACTIONS => {
			'COLONATTR' => 338
		},
		DEFAULT => -81,
		GOTOS => {
			'subattrlist' => 377
		}
	},
	{#State 327
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 378,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 328
		DEFAULT => -214
	},
	{#State 329
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 379
		}
	},
	{#State 330
		ACTIONS => {
			";" => 380
		}
	},
	{#State 331
		DEFAULT => -66
	},
	{#State 332
		DEFAULT => -71
	},
	{#State 333
		ACTIONS => {
			")" => 381
		}
	},
	{#State 334
		ACTIONS => {
			'UNTIL' => 203,
			'FOR' => 200,
			'OROP' => 199,
			'WHEN' => 204,
			'ANDOP' => 197,
			'UNLESS' => 198,
			'DOROP' => 201,
			'IF' => 202,
			")" => -70,
			'WHILE' => 205
		},
		DEFAULT => -52
	},
	{#State 335
		DEFAULT => -17
	},
	{#State 336
		ACTIONS => {
			"-" => 16,
			"\@" => 18,
			"%" => 19,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			'METHOD' => 36,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'DOLSHARP' => 42,
			'LOOPEX' => 43,
			'FUNC0' => 46,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'WORD' => 54,
			'ANONSUB' => 55,
			"~" => 57,
			'MY' => 58,
			'REFGEN' => 59,
			"\$" => 60,
			'PMFUNC' => 64,
			'NOTOP' => 65,
			"(" => 73,
			'THING' => 74,
			'FUNC1' => 75,
			'FUNC' => 79,
			'FUNCMETH' => 81,
			'UNIOPSUB' => 86,
			'LOCAL' => 89,
			"&" => 91,
			'YADAYADA' => 93,
			'DO' => 96
		},
		DEFAULT => -207,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'optlistexpr' => 382,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 116,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 337
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		DEFAULT => -207,
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'optlistexpr' => 383,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 116,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 338
		ACTIONS => {
			'THING' => 384
		},
		DEFAULT => -83
	},
	{#State 339
		ACTIONS => {
			"{" => 49
		},
		GOTOS => {
			'block' => 385
		}
	},
	{#State 340
		DEFAULT => -18,
		GOTOS => {
			'remember' => 386
		}
	},
	{#State 341
		DEFAULT => -33
	},
	{#State 342
		DEFAULT => -84
	},
	{#State 343
		DEFAULT => -202
	},
	{#State 344
		ACTIONS => {
			")" => 387
		}
	},
	{#State 345
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			'ANDOP' => 197
		},
		DEFAULT => -70
	},
	{#State 346
		DEFAULT => -195
	},
	{#State 347
		ACTIONS => {
			"}" => 388
		}
	},
	{#State 348
		ACTIONS => {
			")" => 389
		}
	},
	{#State 349
		DEFAULT => -176
	},
	{#State 350
		DEFAULT => -110
	},
	{#State 351
		ACTIONS => {
			"}" => 390
		}
	},
	{#State 352
		DEFAULT => -116
	},
	{#State 353
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 391,
			'ANDOP' => 197
		}
	},
	{#State 354
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 80,
			'ary' => 21,
			'expr' => 392,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 355
		DEFAULT => -194
	},
	{#State 356
		ACTIONS => {
			")" => 393
		}
	},
	{#State 357
		DEFAULT => -102
	},
	{#State 358
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 394,
			'ANDOP' => 197
		}
	},
	{#State 359
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'anonymous' => 69,
			'myattrterm' => 70,
			'amper' => 71,
			'subscripted' => 72,
			'term' => 395,
			'ary' => 21,
			'termbinop' => 62,
			'listop' => 45,
			'termunop' => 30,
			'hsh' => 63
		}
	},
	{#State 360
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 396,
			'ANDOP' => 197
		}
	},
	{#State 361
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		DEFAULT => -209,
		GOTOS => {
			'scalar' => 17,
			'optexpr' => 397,
			'term' => 80,
			'ary' => 21,
			'expr' => 100,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 362
		ACTIONS => {
			'DOROP' => 201,
			";" => 398,
			'OROP' => 199,
			'ANDOP' => 197
		}
	},
	{#State 363
		DEFAULT => -114
	},
	{#State 364
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 399,
			'ANDOP' => 197
		}
	},
	{#State 365
		ACTIONS => {
			")" => 400
		}
	},
	{#State 366
		ACTIONS => {
			")" => 401
		}
	},
	{#State 367
		DEFAULT => -68
	},
	{#State 368
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 402,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 369
		DEFAULT => -152
	},
	{#State 370
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 403,
			'ANDOP' => 197
		}
	},
	{#State 371
		DEFAULT => -150
	},
	{#State 372
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			")" => 404,
			'ANDOP' => 197
		}
	},
	{#State 373
		DEFAULT => -111
	},
	{#State 374
		DEFAULT => -172
	},
	{#State 375
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 406
		}
	},
	{#State 376
		ACTIONS => {
			";" => 408,
			"{" => 49
		},
		GOTOS => {
			'block' => 409,
			'subbody' => 407
		}
	},
	{#State 377
		ACTIONS => {
			";" => 408,
			"{" => 49
		},
		GOTOS => {
			'block' => 409,
			'subbody' => 410
		}
	},
	{#State 378
		ACTIONS => {
			")" => 411
		}
	},
	{#State 379
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 412,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 380
		ACTIONS => {
			'exp' => 367
		},
		DEFAULT => -67,
		GOTOS => {
			'texpr' => 413
		}
	},
	{#State 381
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 414
		}
	},
	{#State 382
		DEFAULT => -104
	},
	{#State 383
		ACTIONS => {
			";" => 415
		}
	},
	{#State 384
		DEFAULT => -82
	},
	{#State 385
		DEFAULT => -147
	},
	{#State 386
		DEFAULT => -47,
		GOTOS => {
			'@11-5' => 416
		}
	},
	{#State 387
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 417
		}
	},
	{#State 388
		DEFAULT => -107
	},
	{#State 389
		DEFAULT => -64,
		GOTOS => {
			'mintro' => 418
		}
	},
	{#State 390
		DEFAULT => -113
	},
	{#State 391
		DEFAULT => -120
	},
	{#State 392
		ACTIONS => {
			'DOROP' => 201,
			'OROP' => 199,
			"]" => 419,
			'ANDOP' => 197
		}
	},
	{#State 393
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 420
		}
	},
	{#State 394
		DEFAULT => -96
	},
	{#State 395
		ACTIONS => {
			'BITANDOP' => 179,
			'DORDOR' => 178,
			'ARROW' => 191,
			'POWOP' => 192,
			'MATCHOP' => 181,
			'SHIFTOP' => 182,
			'ANDAND' => 193,
			'RELOP' => 184,
			'EQOP' => 183,
			'ADDOP' => 185,
			'POSTINC' => 186,
			'BITOROP' => 194,
			'POSTDEC' => 188,
			"?" => 187,
			'MULOP' => 189,
			'DOTDOT' => 195,
			'OROR' => 190
		},
		DEFAULT => -158
	},
	{#State 396
		DEFAULT => -109
	},
	{#State 397
		ACTIONS => {
			")" => 421
		}
	},
	{#State 398
		ACTIONS => {
			"}" => 422
		}
	},
	{#State 399
		DEFAULT => -115
	},
	{#State 400
		DEFAULT => -100
	},
	{#State 401
		DEFAULT => -64,
		GOTOS => {
			'mintro' => 423
		}
	},
	{#State 402
		ACTIONS => {
			")" => 424
		}
	},
	{#State 403
		DEFAULT => -153
	},
	{#State 404
		DEFAULT => -151
	},
	{#State 405
		DEFAULT => -21,
		GOTOS => {
			'mremember' => 425
		}
	},
	{#State 406
		ACTIONS => {
			'ELSE' => 426,
			'ELSIF' => 428
		},
		DEFAULT => -59,
		GOTOS => {
			'else' => 427
		}
	},
	{#State 407
		DEFAULT => -32
	},
	{#State 408
		DEFAULT => -87
	},
	{#State 409
		DEFAULT => -86
	},
	{#State 410
		DEFAULT => -31
	},
	{#State 411
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 429
		}
	},
	{#State 412
		ACTIONS => {
			")" => 430
		}
	},
	{#State 413
		ACTIONS => {
			";" => 431
		}
	},
	{#State 414
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 432
		}
	},
	{#State 415
		DEFAULT => -34
	},
	{#State 416
		DEFAULT => -22,
		GOTOS => {
			'stmtseq' => 433
		}
	},
	{#State 417
		ACTIONS => {
			'ELSE' => 426,
			'ELSIF' => 428
		},
		DEFAULT => -59,
		GOTOS => {
			'else' => 434
		}
	},
	{#State 418
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 435
		}
	},
	{#State 419
		DEFAULT => -118
	},
	{#State 420
		DEFAULT => -38
	},
	{#State 421
		DEFAULT => -97
	},
	{#State 422
		DEFAULT => -112
	},
	{#State 423
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 436
		}
	},
	{#State 424
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 437
		}
	},
	{#State 425
		DEFAULT => -22,
		GOTOS => {
			'stmtseq' => 438
		}
	},
	{#State 426
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 439
		}
	},
	{#State 427
		DEFAULT => -36
	},
	{#State 428
		ACTIONS => {
			'QWLIST' => 119,
			"(" => 120
		},
		GOTOS => {
			'lpar_or_qw' => 440
		}
	},
	{#State 429
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 441
		}
	},
	{#State 430
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 442
		}
	},
	{#State 431
		DEFAULT => -64,
		GOTOS => {
			'mintro' => 443
		}
	},
	{#State 432
		DEFAULT => -45
	},
	{#State 433
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"}" => 444,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'PREINC' => 35,
			'FUNC0OP' => 34,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 102,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 434
		DEFAULT => -35
	},
	{#State 435
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 445
		}
	},
	{#State 436
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 446
		}
	},
	{#State 437
		DEFAULT => -37
	},
	{#State 438
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"}" => 447,
			"-" => 16,
			'PACKAGE' => 56,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'UNLESS' => 22,
			'QWLIST' => 23,
			'MYSUB' => 24,
			"!" => 25,
			"*" => 26,
			'IF' => 61,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FORMAT' => 32,
			'SUB' => 33,
			'UNTIL' => 68,
			'PREINC' => 35,
			'FUNC0OP' => 34,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			'LABEL' => 77,
			";" => 76,
			"+" => 39,
			'FOR' => 40,
			'WHEN' => 78,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'PEG' => 82,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			'PLUGSTMT' => 85,
			'WHILE' => 88,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			'DEFAULT' => 92,
			"&" => 91,
			'UNIOP' => 48,
			"{" => 49,
			'LSTOPSUB' => 50,
			'USE' => 51,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'GIVEN' => 95,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 38,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'fullstmt' => 102,
			'labfullstmt' => 84,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'barestmt' => 67,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72,
			'block' => 94
		}
	},
	{#State 439
		DEFAULT => -60
	},
	{#State 440
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'mexpr' => 448,
			'scalar' => 17,
			'term' => 80,
			'ary' => 21,
			'expr' => 345,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'termunop' => 30,
			'hsh' => 63,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 441
		DEFAULT => -44
	},
	{#State 442
		ACTIONS => {
			'CONTINUE' => 212
		},
		DEFAULT => -62,
		GOTOS => {
			'cont' => 449
		}
	},
	{#State 443
		ACTIONS => {
			'ANONSUB' => 55,
			'WORD' => 54,
			"-" => 16,
			"\@" => 18,
			"~" => 57,
			'MY' => 58,
			"%" => 19,
			'REFGEN' => 59,
			'LSTOP' => 20,
			'QWLIST' => 23,
			"!" => 25,
			"*" => 26,
			"\$" => 60,
			'REQUIRE' => 28,
			"[" => 29,
			'HASHBRACK' => 31,
			'NOTOP' => 65,
			'PMFUNC' => 64,
			'FUNC0OP' => 34,
			'PREINC' => 35,
			"(" => 73,
			'THING' => 74,
			'METHOD' => 36,
			'FUNC1' => 75,
			'PLUGEXPR' => 37,
			"+" => 39,
			'NOAMP' => 41,
			'FUNC' => 79,
			'DOLSHARP' => 42,
			'FUNCMETH' => 81,
			'LOOPEX' => 43,
			'error' => 44,
			")" => -65,
			'LOCAL' => 89,
			'UNIOPSUB' => 86,
			'FUNC0' => 46,
			"&" => 91,
			'UNIOP' => 48,
			'LSTOPSUB' => 50,
			'YADAYADA' => 93,
			'FUNC0SUB' => 52,
			'PREDEC' => 53,
			'DO' => 96
		},
		GOTOS => {
			'scalar' => 17,
			'sideff' => 331,
			'term' => 80,
			'ary' => 21,
			'expr' => 83,
			'nexpr' => 332,
			'termbinop' => 62,
			'listop' => 45,
			'listexpr' => 87,
			'hsh' => 63,
			'termunop' => 30,
			'arylen' => 47,
			'star' => 66,
			'termdo' => 90,
			'mnexpr' => 450,
			'amper' => 71,
			'myattrterm' => 70,
			'anonymous' => 69,
			'subscripted' => 72
		}
	},
	{#State 444
		DEFAULT => -48
	},
	{#State 445
		DEFAULT => -41
	},
	{#State 446
		DEFAULT => -40
	},
	{#State 447
		DEFAULT => -20
	},
	{#State 448
		ACTIONS => {
			")" => 451
		}
	},
	{#State 449
		DEFAULT => -43
	},
	{#State 450
		ACTIONS => {
			")" => 452
		}
	},
	{#State 451
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 453
		}
	},
	{#State 452
		ACTIONS => {
			"{" => 405
		},
		GOTOS => {
			'mblock' => 454
		}
	},
	{#State 453
		ACTIONS => {
			'ELSE' => 426,
			'ELSIF' => 428
		},
		DEFAULT => -59,
		GOTOS => {
			'else' => 455
		}
	},
	{#State 454
		DEFAULT => -42
	},
	{#State 455
		DEFAULT => -61
	}
],
                                  yyrules  =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 '@1-1', 0,
sub
#line 141 "perly.yp"
{  print "YP: GRAMPROG\n";}
	],
	[#Rule 2
		 'grammar', 4,
sub
#line 141 "perly.yp"
{ print "YP: stmtseq closure for GRAMPROG\n"; return $_[3]}
	],
	[#Rule 3
		 '@2-1', 0,
sub
#line 142 "perly.yp"
{ }
	],
	[#Rule 4
		 '@3-3', 0,
sub
#line 142 "perly.yp"
{ }
	],
	[#Rule 5
		 'grammar', 5, undef
	],
	[#Rule 6
		 '@4-1', 0,
sub
#line 143 "perly.yp"
{ }
	],
	[#Rule 7
		 '@5-3', 0,
sub
#line 143 "perly.yp"
{ }
	],
	[#Rule 8
		 'grammar', 5, undef
	],
	[#Rule 9
		 '@6-1', 0,
sub
#line 144 "perly.yp"
{ }
	],
	[#Rule 10
		 '@7-3', 0,
sub
#line 144 "perly.yp"
{ }
	],
	[#Rule 11
		 'grammar', 5, undef
	],
	[#Rule 12
		 '@8-1', 0,
sub
#line 145 "perly.yp"
{ }
	],
	[#Rule 13
		 '@9-3', 0,
sub
#line 145 "perly.yp"
{ }
	],
	[#Rule 14
		 'grammar', 5, undef
	],
	[#Rule 15
		 '@10-1', 0,
sub
#line 146 "perly.yp"
{ print "YP: GRAMSTMTSEQ\n"; }
	],
	[#Rule 16
		 'grammar', 3,
sub
#line 146 "perly.yp"
{ print "YP: stmtseq closure for GRAMSTMTSEQ\n"; return $_[2]}
	],
	[#Rule 17
		 'block', 4,
sub
#line 150 "perly.yp"
{  }
	],
	[#Rule 18
		 'remember', 0,
sub
#line 154 "perly.yp"
{  }
	],
	[#Rule 19
		 'mydefsv', 0,
sub
#line 158 "perly.yp"
{  }
	],
	[#Rule 20
		 'mblock', 4,
sub
#line 162 "perly.yp"
{ 
			}
	],
	[#Rule 21
		 'mremember', 0,
sub
#line 167 "perly.yp"
{  }
	],
	[#Rule 22
		 'stmtseq', 0,
sub
#line 171 "perly.yp"
{ }
	],
	[#Rule 23
		 'stmtseq', 2,
sub
#line 172 "perly.yp"
{   print "YP: stmtseq fullstmt\n"; }
	],
	[#Rule 24
		 'fullstmt', 1,
sub
#line 177 "perly.yp"
{ 
			   print "YP: barestmt\n";
			   return $_[0]->{_generator}->barestmt($_[1]);
			}
	],
	[#Rule 25
		 'fullstmt', 1,
sub
#line 182 "perly.yp"
{  }
	],
	[#Rule 26
		 'labfullstmt', 2,
sub
#line 186 "perly.yp"
{
			}
	],
	[#Rule 27
		 'labfullstmt', 2,
sub
#line 189 "perly.yp"
{
			}
	],
	[#Rule 28
		 'barestmt', 1,
sub
#line 195 "perly.yp"
{  }
	],
	[#Rule 29
		 'barestmt', 1,
sub
#line 197 "perly.yp"
{ }
	],
	[#Rule 30
		 'barestmt', 4,
sub
#line 199 "perly.yp"
{ }
	],
	[#Rule 31
		 'barestmt', 6,
sub
#line 200 "perly.yp"
{ $_[0]->{_generator}->closure_sub()}
	],
	[#Rule 32
		 'barestmt', 6,
sub
#line 202 "perly.yp"
{ }
	],
	[#Rule 33
		 'barestmt', 4,
sub
#line 204 "perly.yp"
{ }
	],
	[#Rule 34
		 'barestmt', 6,
sub
#line 205 "perly.yp"
{ $_[0]->{_generator}->addImport($_[3],$_[4])}
	],
	[#Rule 35
		 'barestmt', 7,
sub
#line 207 "perly.yp"
{ }
	],
	[#Rule 36
		 'barestmt', 7,
sub
#line 209 "perly.yp"
{ }
	],
	[#Rule 37
		 'barestmt', 7,
sub
#line 211 "perly.yp"
{ }
	],
	[#Rule 38
		 'barestmt', 6,
sub
#line 213 "perly.yp"
{ }
	],
	[#Rule 39
		 'barestmt', 2,
sub
#line 215 "perly.yp"
{ }
	],
	[#Rule 40
		 'barestmt', 8,
sub
#line 217 "perly.yp"
{ }
	],
	[#Rule 41
		 'barestmt', 8,
sub
#line 219 "perly.yp"
{ }
	],
	[#Rule 42
		 'barestmt', 11,
sub
#line 222 "perly.yp"
{ }
	],
	[#Rule 43
		 'barestmt', 9,
sub
#line 224 "perly.yp"
{ }
	],
	[#Rule 44
		 'barestmt', 8,
sub
#line 226 "perly.yp"
{ }
	],
	[#Rule 45
		 'barestmt', 7,
sub
#line 228 "perly.yp"
{ }
	],
	[#Rule 46
		 'barestmt', 2,
sub
#line 230 "perly.yp"
{ }
	],
	[#Rule 47
		 '@11-5', 0,
sub
#line 232 "perly.yp"
{  }
	],
	[#Rule 48
		 'barestmt', 8,
sub
#line 234 "perly.yp"
{
			}
	],
	[#Rule 49
		 'barestmt', 2,
sub
#line 237 "perly.yp"
{ }
	],
	[#Rule 50
		 'barestmt', 1,
sub
#line 239 "perly.yp"
{
			}
	],
	[#Rule 51
		 'sideff', 1,
sub
#line 245 "perly.yp"
{ }
	],
	[#Rule 52
		 'sideff', 1,
sub
#line 247 "perly.yp"
{  }
	],
	[#Rule 53
		 'sideff', 3,
sub
#line 249 "perly.yp"
{ }
	],
	[#Rule 54
		 'sideff', 3,
sub
#line 251 "perly.yp"
{ }
	],
	[#Rule 55
		 'sideff', 3,
sub
#line 253 "perly.yp"
{ }
	],
	[#Rule 56
		 'sideff', 3,
sub
#line 255 "perly.yp"
{ }
	],
	[#Rule 57
		 'sideff', 3,
sub
#line 257 "perly.yp"
{ }
	],
	[#Rule 58
		 'sideff', 3,
sub
#line 259 "perly.yp"
{  }
	],
	[#Rule 59
		 'else', 0,
sub
#line 264 "perly.yp"
{ }
	],
	[#Rule 60
		 'else', 2,
sub
#line 266 "perly.yp"
{
			}
	],
	[#Rule 61
		 'else', 6,
sub
#line 269 "perly.yp"
{ 
			}
	],
	[#Rule 62
		 'cont', 0,
sub
#line 275 "perly.yp"
{ }
	],
	[#Rule 63
		 'cont', 2,
sub
#line 277 "perly.yp"
{
			}
	],
	[#Rule 64
		 'mintro', 0,
sub
#line 283 "perly.yp"
{ 
			}
	],
	[#Rule 65
		 'nexpr', 0,
sub
#line 289 "perly.yp"
{ }
	],
	[#Rule 66
		 'nexpr', 1, undef
	],
	[#Rule 67
		 'texpr', 0,
sub
#line 295 "perly.yp"
{ 
			  
			}
	],
	[#Rule 68
		 'texpr', 1, undef
	],
	[#Rule 69
		 'iexpr', 1,
sub
#line 303 "perly.yp"
{ }
	],
	[#Rule 70
		 'mexpr', 1,
sub
#line 308 "perly.yp"
{ }
	],
	[#Rule 71
		 'mnexpr', 1,
sub
#line 312 "perly.yp"
{ }
	],
	[#Rule 72
		 'miexpr', 1,
sub
#line 316 "perly.yp"
{ }
	],
	[#Rule 73
		 'formname', 1,
sub
#line 319 "perly.yp"
{  }
	],
	[#Rule 74
		 'formname', 0,
sub
#line 320 "perly.yp"
{  }
	],
	[#Rule 75
		 'startsub', 0,
sub
#line 324 "perly.yp"
{ 
			}
	],
	[#Rule 76
		 'startanonsub', 0,
sub
#line 330 "perly.yp"
{ 
			}
	],
	[#Rule 77
		 'startformsub', 0,
sub
#line 335 "perly.yp"
{ 
			}
	],
	[#Rule 78
		 'subname', 1,
sub
#line 340 "perly.yp"
{ 
				$_[0]->{_generator}->add_sub($_[1]);
			}
	],
	[#Rule 79
		 'proto', 0,
sub
#line 346 "perly.yp"
{ }
	],
	[#Rule 80
		 'proto', 1, undef
	],
	[#Rule 81
		 'subattrlist', 0,
sub
#line 352 "perly.yp"
{ }
	],
	[#Rule 82
		 'subattrlist', 2,
sub
#line 354 "perly.yp"
{ 
			}
	],
	[#Rule 83
		 'subattrlist', 1,
sub
#line 357 "perly.yp"
{ 
			}
	],
	[#Rule 84
		 'myattrlist', 2,
sub
#line 363 "perly.yp"
{
			}
	],
	[#Rule 85
		 'myattrlist', 1,
sub
#line 366 "perly.yp"
{ 
			}
	],
	[#Rule 86
		 'subbody', 1,
sub
#line 371 "perly.yp"
{ }
	],
	[#Rule 87
		 'subbody', 1,
sub
#line 372 "perly.yp"
{ }
	],
	[#Rule 88
		 'expr', 3,
sub
#line 377 "perly.yp"
{ 
			}
	],
	[#Rule 89
		 'expr', 3,
sub
#line 380 "perly.yp"
{ 
			}
	],
	[#Rule 90
		 'expr', 3,
sub
#line 383 "perly.yp"
{ 
			}
	],
	[#Rule 91
		 'expr', 1,
sub
#line 385 "perly.yp"
{ info("expr->listexpr",$_[1]); return $_[1]}
	],
	[#Rule 92
		 'listexpr', 2,
sub
#line 390 "perly.yp"
{
			}
	],
	[#Rule 93
		 'listexpr', 3,
sub
#line 393 "perly.yp"
{  
				return info("listexpr->listexpr,term",$_[1].",".$_[3]);
			}
	],
	[#Rule 94
		 'listexpr', 1,
sub
#line 397 "perly.yp"
{ 
				return info("listexpr->term",$_[1]); 
			}
	],
	[#Rule 95
		 'listop', 3,
sub
#line 404 "perly.yp"
{ 
				return $_[0]->{_generator}->JV_GEN_call('LSTOP',$_[1],$_[2],$_[3]);
			}
	],
	[#Rule 96
		 'listop', 5,
sub
#line 408 "perly.yp"
{ 
			 	return $_[0]->{_generator}->JV_GEN_call('FUNC_indirob_expr',$_[1],$_[3],$_[4]);  
				/* return $_[3].' '. $_[4]; */
			}
	],
	[#Rule 97
		 'listop', 6,
sub
#line 413 "perly.yp"
{ 
			}
	],
	[#Rule 98
		 'listop', 3,
sub
#line 416 "perly.yp"
{ 
			}
	],
	[#Rule 99
		 'listop', 3,
sub
#line 419 "perly.yp"
{ 
			}
	],
	[#Rule 100
		 'listop', 5,
sub
#line 422 "perly.yp"
{ 
			}
	],
	[#Rule 101
		 'listop', 2,
sub
#line 425 "perly.yp"
{ 
			}
	],
	[#Rule 102
		 'listop', 4,
sub
#line 428 "perly.yp"
{ 
			 	$_[0]->{_generator}->JV_GEN_call('FUNC_optexpr',$_[1],$_[2],$_[3]); 
				return $_[2];
			}
	],
	[#Rule 103
		 '@12-3', 0,
sub
#line 433 "perly.yp"
{ 
			}
	],
	[#Rule 104
		 'listop', 5,
sub
#line 436 "perly.yp"
{ 
			}
	],
	[#Rule 105
		 'method', 1, undef
	],
	[#Rule 106
		 'method', 1, undef
	],
	[#Rule 107
		 'subscripted', 5,
sub
#line 449 "perly.yp"
{ 
			}
	],
	[#Rule 108
		 'subscripted', 4,
sub
#line 452 "perly.yp"
{ 
			}
	],
	[#Rule 109
		 'subscripted', 5,
sub
#line 455 "perly.yp"
{ 
			}
	],
	[#Rule 110
		 'subscripted', 4,
sub
#line 458 "perly.yp"
{ 
			}
	],
	[#Rule 111
		 'subscripted', 5,
sub
#line 461 "perly.yp"
{ 
			}
	],
	[#Rule 112
		 'subscripted', 6,
sub
#line 464 "perly.yp"
{ 
			}
	],
	[#Rule 113
		 'subscripted', 5,
sub
#line 467 "perly.yp"
{ 
			}
	],
	[#Rule 114
		 'subscripted', 4,
sub
#line 470 "perly.yp"
{ 
			}
	],
	[#Rule 115
		 'subscripted', 5,
sub
#line 473 "perly.yp"
{ 
			}
	],
	[#Rule 116
		 'subscripted', 4,
sub
#line 477 "perly.yp"
{ 
			}
	],
	[#Rule 117
		 'subscripted', 3,
sub
#line 480 "perly.yp"
{ 
			}
	],
	[#Rule 118
		 'subscripted', 6,
sub
#line 483 "perly.yp"
{ 
			}
	],
	[#Rule 119
		 'subscripted', 4,
sub
#line 486 "perly.yp"
{ 
			}
	],
	[#Rule 120
		 'subscripted', 5,
sub
#line 489 "perly.yp"
{ 
			}
	],
	[#Rule 121
		 'termbinop', 3,
sub
#line 495 "perly.yp"
{ 
				return $_[0]->{_generator}->ASSIGNOP($_[1],$_[3]);
			}
	],
	[#Rule 122
		 'termbinop', 3,
sub
#line 499 "perly.yp"
{ 
			}
	],
	[#Rule 123
		 'termbinop', 3,
sub
#line 502 "perly.yp"
{   
			}
	],
	[#Rule 124
		 'termbinop', 3,
sub
#line 505 "perly.yp"
{ 
			}
	],
	[#Rule 125
		 'termbinop', 3,
sub
#line 508 "perly.yp"
{ 
			}
	],
	[#Rule 126
		 'termbinop', 3,
sub
#line 511 "perly.yp"
{ 
			}
	],
	[#Rule 127
		 'termbinop', 3,
sub
#line 514 "perly.yp"
{ 
			}
	],
	[#Rule 128
		 'termbinop', 3,
sub
#line 517 "perly.yp"
{ 
			}
	],
	[#Rule 129
		 'termbinop', 3,
sub
#line 520 "perly.yp"
{ 
			}
	],
	[#Rule 130
		 'termbinop', 3,
sub
#line 523 "perly.yp"
{
			}
	],
	[#Rule 131
		 'termbinop', 3,
sub
#line 526 "perly.yp"
{ 
			}
	],
	[#Rule 132
		 'termbinop', 3,
sub
#line 529 "perly.yp"
{ 
			}
	],
	[#Rule 133
		 'termbinop', 3,
sub
#line 532 "perly.yp"
{ 
			}
	],
	[#Rule 134
		 'termbinop', 3,
sub
#line 535 "perly.yp"
{ 
			}
	],
	[#Rule 135
		 'termunop', 2,
sub
#line 541 "perly.yp"
{ 
			}
	],
	[#Rule 136
		 'termunop', 2,
sub
#line 544 "perly.yp"
{ 
			}
	],
	[#Rule 137
		 'termunop', 2,
sub
#line 547 "perly.yp"
{ 
			}
	],
	[#Rule 138
		 'termunop', 2,
sub
#line 550 "perly.yp"
{ 
			}
	],
	[#Rule 139
		 'termunop', 2,
sub
#line 553 "perly.yp"
{ 
			}
	],
	[#Rule 140
		 'termunop', 2,
sub
#line 556 "perly.yp"
{ 
			}
	],
	[#Rule 141
		 'termunop', 2,
sub
#line 559 "perly.yp"
{ 
			}
	],
	[#Rule 142
		 'termunop', 2,
sub
#line 562 "perly.yp"
{ 
			}
	],
	[#Rule 143
		 'anonymous', 3,
sub
#line 569 "perly.yp"
{ 
			}
	],
	[#Rule 144
		 'anonymous', 2,
sub
#line 572 "perly.yp"
{ 
			}
	],
	[#Rule 145
		 'anonymous', 4,
sub
#line 575 "perly.yp"
{ 
			}
	],
	[#Rule 146
		 'anonymous', 3,
sub
#line 578 "perly.yp"
{ 
			}
	],
	[#Rule 147
		 'anonymous', 5,
sub
#line 581 "perly.yp"
{ 
			}
	],
	[#Rule 148
		 'termdo', 2,
sub
#line 588 "perly.yp"
{ 
			}
	],
	[#Rule 149
		 'termdo', 2,
sub
#line 591 "perly.yp"
{ 
			}
	],
	[#Rule 150
		 'termdo', 4,
sub
#line 594 "perly.yp"
{ 
			}
	],
	[#Rule 151
		 'termdo', 5,
sub
#line 597 "perly.yp"
{ 
			}
	],
	[#Rule 152
		 'termdo', 4,
sub
#line 600 "perly.yp"
{ 
			}
	],
	[#Rule 153
		 'termdo', 5,
sub
#line 603 "perly.yp"
{ 
			}
	],
	[#Rule 154
		 'term', 1,
sub
#line 608 "perly.yp"
{ return info('term->termbinop', $_[1]); }
	],
	[#Rule 155
		 'term', 1, undef
	],
	[#Rule 156
		 'term', 1, undef
	],
	[#Rule 157
		 'term', 1, undef
	],
	[#Rule 158
		 'term', 5,
sub
#line 613 "perly.yp"
{ 
			}
	],
	[#Rule 159
		 'term', 2,
sub
#line 616 "perly.yp"
{ 
			}
	],
	[#Rule 160
		 'term', 1,
sub
#line 619 "perly.yp"
{ }
	],
	[#Rule 161
		 'term', 2,
sub
#line 621 "perly.yp"
{ 
			}
	],
	[#Rule 162
		 'term', 3,
sub
#line 624 "perly.yp"
{ 
				return info('term->(expr)',$_[2]); 
			}
	],
	[#Rule 163
		 'term', 1,
sub
#line 628 "perly.yp"
{ }
	],
	[#Rule 164
		 'term', 2,
sub
#line 630 "perly.yp"
{ 
			     return info('term->()',$_[1]);
			}
	],
	[#Rule 165
		 'term', 1,
sub
#line 634 "perly.yp"
{ 
			   return info('term->scalar %prec (',$_[1]);
			}
	],
	[#Rule 166
		 'term', 1,
sub
#line 638 "perly.yp"
{  }
	],
	[#Rule 167
		 'term', 1,
sub
#line 640 "perly.yp"
{  }
	],
	[#Rule 168
		 'term', 1,
sub
#line 642 "perly.yp"
{  }
	],
	[#Rule 169
		 'term', 1,
sub
#line 644 "perly.yp"
{ }
	],
	[#Rule 170
		 'term', 1,
sub
#line 646 "perly.yp"
{ }
	],
	[#Rule 171
		 'term', 4,
sub
#line 648 "perly.yp"
{ 
			}
	],
	[#Rule 172
		 'term', 5,
sub
#line 651 "perly.yp"
{ 
			}
	],
	[#Rule 173
		 'term', 1,
sub
#line 654 "perly.yp"
{ }
	],
	[#Rule 174
		 'term', 1,
sub
#line 656 "perly.yp"
{ }
	],
	[#Rule 175
		 'term', 3,
sub
#line 658 "perly.yp"
{ 
			}
	],
	[#Rule 176
		 'term', 4,
sub
#line 661 "perly.yp"
{
			}
	],
	[#Rule 177
		 'term', 3,
sub
#line 664 "perly.yp"
{ 
			}
	],
	[#Rule 178
		 'term', 1,
sub
#line 667 "perly.yp"
{ 
			}
	],
	[#Rule 179
		 'term', 2,
sub
#line 670 "perly.yp"
{ 
			}
	],
	[#Rule 180
		 'term', 2,
sub
#line 673 "perly.yp"
{ 
			}
	],
	[#Rule 181
		 'term', 1,
sub
#line 676 "perly.yp"
{ 
			}
	],
	[#Rule 182
		 'term', 2,
sub
#line 679 "perly.yp"
{ 
			}
	],
	[#Rule 183
		 'term', 2,
sub
#line 682 "perly.yp"
{ 
			}
	],
	[#Rule 184
		 'term', 1,
sub
#line 685 "perly.yp"
{ 
			}
	],
	[#Rule 185
		 'term', 2,
sub
#line 688 "perly.yp"
{ 
			}
	],
	[#Rule 186
		 'term', 1,
sub
#line 691 "perly.yp"
{ 
			}
	],
	[#Rule 187
		 'term', 2,
sub
#line 694 "perly.yp"
{ 
			}
	],
	[#Rule 188
		 'term', 1,
sub
#line 697 "perly.yp"
{ 
			}
	],
	[#Rule 189
		 'term', 3,
sub
#line 700 "perly.yp"
{ 
			}
	],
	[#Rule 190
		 'term', 1,
sub
#line 703 "perly.yp"
{ }
	],
	[#Rule 191
		 'term', 3,
sub
#line 705 "perly.yp"
{ 
			  
			}
	],
	[#Rule 192
		 'term', 1,
sub
#line 709 "perly.yp"
{ 
			}
	],
	[#Rule 193
		 'term', 3,
sub
#line 712 "perly.yp"
{ 
			}
	],
	[#Rule 194
		 'term', 4,
sub
#line 715 "perly.yp"
{ 
				return info("term->FUNC1", $_[1]);
			}
	],
	[#Rule 195
		 'term', 4,
sub
#line 719 "perly.yp"
{ 
			}
	],
	[#Rule 196
		 'term', 1,
sub
#line 721 "perly.yp"
{ 
				return info("term->WORD",$_[1]);
			}
	],
	[#Rule 197
		 'term', 1,
sub
#line 724 "perly.yp"
{ 
				return info("term->listop", $_[1]);
			}
	],
	[#Rule 198
		 'term', 1,
sub
#line 728 "perly.yp"
{
			}
	],
	[#Rule 199
		 'term', 1, undef
	],
	[#Rule 200
		 'myattrterm', 3,
sub
#line 735 "perly.yp"
{ 
				return $_[0]->{_generator}->addMyVar($_[2],$_[3]);
			}
	],
	[#Rule 201
		 'myattrterm', 2,
sub
#line 739 "perly.yp"
{ 
				return $_[0]->{_generator}->addMyVar($_[2]);
			}
	],
	[#Rule 202
		 'myterm', 3,
sub
#line 746 "perly.yp"
{ 
				return info("myterm->(expr)", $_[2]);
			}
	],
	[#Rule 203
		 'myterm', 2,
sub
#line 750 "perly.yp"
{ 
			}
	],
	[#Rule 204
		 'myterm', 1,
sub
#line 753 "perly.yp"
{ 	
				return info("myterm->scalar %prec (", $_[1]);
			}
	],
	[#Rule 205
		 'myterm', 1,
sub
#line 757 "perly.yp"
{ }
	],
	[#Rule 206
		 'myterm', 1,
sub
#line 759 "perly.yp"
{ }
	],
	[#Rule 207
		 'optlistexpr', 0,
sub
#line 764 "perly.yp"
{ }
	],
	[#Rule 208
		 'optlistexpr', 1,
sub
#line 766 "perly.yp"
{ }
	],
	[#Rule 209
		 'optexpr', 0,
sub
#line 770 "perly.yp"
{  }
	],
	[#Rule 210
		 'optexpr', 1,
sub
#line 772 "perly.yp"
{  info("optexpr->expr",$_[1]); return $_[1];}
	],
	[#Rule 211
		 'lpar_or_qw', 1,
sub
#line 776 "perly.yp"
{ }
	],
	[#Rule 212
		 '@13-1', 0,
sub
#line 778 "perly.yp"
{ }
	],
	[#Rule 213
		 'lpar_or_qw', 3,
sub
#line 780 "perly.yp"
{ }
	],
	[#Rule 214
		 'my_scalar', 1,
sub
#line 786 "perly.yp"
{ }
	],
	[#Rule 215
		 'amper', 2,
sub
#line 790 "perly.yp"
{ 
			}
	],
	[#Rule 216
		 'scalar', 2,
sub
#line 795 "perly.yp"
{ 
				return info('scalar->$indirob',$_[2]);
			}
	],
	[#Rule 217
		 'ary', 2,
sub
#line 801 "perly.yp"
{ 
			}
	],
	[#Rule 218
		 'hsh', 2,
sub
#line 806 "perly.yp"
{ 
			}
	],
	[#Rule 219
		 'arylen', 2,
sub
#line 811 "perly.yp"
{ 
			}
	],
	[#Rule 220
		 'star', 2,
sub
#line 816 "perly.yp"
{ 
			}
	],
	[#Rule 221
		 'indirob', 1,
sub
#line 822 "perly.yp"
{ 
				 return info('indirob->WORD',$_[1]);
			}
	],
	[#Rule 222
		 'indirob', 1,
sub
#line 826 "perly.yp"
{ }
	],
	[#Rule 223
		 'indirob', 1,
sub
#line 828 "perly.yp"
{ }
	],
	[#Rule 224
		 'indirob', 1,
sub
#line 831 "perly.yp"
{ }
	]
],
                                  @_);
    bless($self,$class);
}

#line 834 "perly.yp"

use Log;
sub info
{
	my $message=shift;
	my $param  =shift||'';
	Log::info(">>>".$message." param=".$param);
	return $param;
}

1;
