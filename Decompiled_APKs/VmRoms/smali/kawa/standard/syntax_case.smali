.class public Lkawa/standard/syntax_case;
.super Lkawa/lang/Syntax;
.source "syntax_case.java"


# static fields
.field public static final syntax_case:Lkawa/standard/syntax_case;


# instance fields
.field call_error:Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/syntax_case;

    invoke-direct {v0}, Lkawa/standard/syntax_case;-><init>()V

    sput-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    .line 11
    sget-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    const-string v1, "syntax-case"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_case;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "kind"
    .parameter "arg"

    .prologue
    .line 166
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    .line 167
    .local v3, tr:Lkawa/lang/Translator;
    if-nez v3, :cond_0

    .line 168
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "no match in syntax-case"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    invoke-virtual {v3}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v2

    .line 170
    .local v2, syntax:Lkawa/lang/Syntax;
    if-nez v2, :cond_1

    const-string v4, "some syntax"

    move-object v1, v4

    .line 171
    .local v1, name:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no matching case while expanding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 170
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
.method rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 29
    .parameter "clauses"
    .parameter "work"
    .parameter "tr"

    .prologue
    .line 18
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    .line 19
    .local v14, language:Lgnu/expr/Language;
    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 27
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v5, v0

    .line 28
    .local v5, args:[Lgnu/expr/Expression;
    const/16 v26, 0x0

    new-instance v27, Lgnu/expr/QuoteExp;

    const-string v28, "syntax-case"

    invoke-direct/range {v27 .. v28}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v5, v26

    .line 29
    const/16 v26, 0x1

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v5, v26

    .line 30
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 32
    const-string v26, "kawa.standard.syntax_case"

    invoke-static/range {v26 .. v26}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    .line 33
    .local v8, clas:Lgnu/bytecode/ClassType;
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 34
    .local v6, argtypes:[Lgnu/bytecode/Type;
    const/16 v26, 0x0

    sget-object v27, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v27, v6, v26

    .line 35
    const/16 v26, 0x1

    sget-object v27, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v27, v6, v26

    .line 36
    const-string v26, "error"

    sget-object v27, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v28, 0x9

    move-object v0, v8

    move-object/from16 v1, v26

    move-object v2, v6

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v15

    .line 39
    .local v15, method:Lgnu/bytecode/Method;
    new-instance v26, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v26

    move-object v1, v15

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    .line 41
    .end local v6           #argtypes:[Lgnu/bytecode/Type;
    .end local v8           #clas:Lgnu/bytecode/ClassType;
    .end local v15           #method:Lgnu/bytecode/Method;
    :cond_0
    new-instance v26, Lgnu/expr/ApplyExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 111
    .end local v5           #args:[Lgnu/expr/Expression;
    .end local p1
    :goto_0
    return-object v26

    .line 43
    .restart local p1
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 47
    .local v21, savePos:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .local v9, clause:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-nez v26, :cond_3

    .line 49
    .end local v9           #clause:Ljava/lang/Object;
    :cond_2
    const-string v26, "syntax-case:  bad clause list"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .restart local v9       #clause:Ljava/lang/Object;
    :cond_3
    :try_start_1
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v19, v0

    .line 51
    .local v19, pair:Lgnu/lists/Pair;
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v10

    .line 52
    .local v10, clauseScope:Lkawa/lang/PatternScope;
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v10

    iput-object v0, v1, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    .line 53
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 55
    const/16 v22, 0x0

    .line 56
    .local v22, syntax:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    .line 57
    .local v23, tail:Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 59
    move-object/from16 v0, v23

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v22, v0

    .line 60
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    goto :goto_1

    .line 63
    :cond_4
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 64
    const-string v26, "missing syntax-case output expression"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v26

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_5
    :try_start_2
    move-object v0, v10

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v17

    .line 67
    .local v17, outerVarCount:I
    new-instance v20, Lkawa/lang/SyntaxPattern;

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 69
    .local v20, pattern:Lkawa/lang/SyntaxPattern;
    invoke-virtual/range {v20 .. v20}, Lkawa/lang/SyntaxPattern;->varCount()I

    move-result v25

    .line 70
    .local v25, varCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lkawa/standard/syntax_case_work;->maxVars:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 71
    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lkawa/standard/syntax_case_work;->maxVars:I

    .line 73
    :cond_6
    new-instance v7, Lgnu/expr/BlockExp;

    invoke-direct {v7}, Lgnu/expr/BlockExp;-><init>()V

    .line 74
    .local v7, block:Lgnu/expr/BlockExp;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v5, v0

    .line 75
    .restart local v5       #args:[Lgnu/expr/Expression;
    const/16 v26, 0x0

    new-instance v27, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v5, v26

    .line 76
    const/16 v26, 0x1

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v5, v26

    .line 77
    const/16 v26, 0x2

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v5, v26

    .line 78
    const/16 v26, 0x3

    new-instance v27, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v5, v26

    .line 79
    new-instance v24, Lgnu/expr/ApplyExp;

    new-instance v26, Lgnu/expr/PrimProcedure;

    sget-object v27, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 82
    .local v24, tryMatch:Lgnu/expr/Expression;
    sub-int v16, v25, v17

    .line 83
    .local v16, newVarCount:I
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v13, v0

    .line 84
    .local v13, inits:[Lgnu/expr/Expression;
    move/from16 v12, v16

    .local v12, i:I
    :goto_2
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_7

    .line 85
    sget-object v26, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v26, v13, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 111
    .end local v5           #args:[Lgnu/expr/Expression;
    .end local v7           #block:Lgnu/expr/BlockExp;
    .end local v9           #clause:Ljava/lang/Object;
    .end local v10           #clauseScope:Lkawa/lang/PatternScope;
    .end local v12           #i:I
    .end local v13           #inits:[Lgnu/expr/Expression;
    .end local v16           #newVarCount:I
    .end local v17           #outerVarCount:I
    .end local v19           #pair:Lgnu/lists/Pair;
    .end local v20           #pattern:Lkawa/lang/SyntaxPattern;
    .end local v22           #syntax:Lkawa/lang/SyntaxForm;
    .end local v23           #tail:Ljava/lang/Object;
    .end local v24           #tryMatch:Lgnu/expr/Expression;
    .end local v25           #varCount:I
    .end local p1
    :catchall_0
    move-exception v26

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v26

    .line 86
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v7       #block:Lgnu/expr/BlockExp;
    .restart local v9       #clause:Ljava/lang/Object;
    .restart local v10       #clauseScope:Lkawa/lang/PatternScope;
    .restart local v12       #i:I
    .restart local v13       #inits:[Lgnu/expr/Expression;
    .restart local v16       #newVarCount:I
    .restart local v17       #outerVarCount:I
    .restart local v19       #pair:Lgnu/lists/Pair;
    .restart local v20       #pattern:Lkawa/lang/SyntaxPattern;
    .restart local v22       #syntax:Lkawa/lang/SyntaxForm;
    .restart local v23       #tail:Ljava/lang/Object;
    .restart local v24       #tryMatch:Lgnu/expr/Expression;
    .restart local v25       #varCount:I
    .restart local p1
    :cond_7
    :try_start_3
    iput-object v13, v10, Lkawa/lang/PatternScope;->inits:[Lgnu/expr/Expression;

    .line 89
    move-object/from16 v0, v23

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v19, v0

    .line 90
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v18

    .line 101
    .local v18, output:Lgnu/expr/Expression;
    :goto_3
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/PatternScope;->setBody(Lgnu/expr/Expression;)V

    .line 103
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 104
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 105
    new-instance v26, Lgnu/expr/IfExp;

    new-instance v27, Lgnu/expr/ExitExp;

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object v2, v10

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v27

    move-object v0, v7

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lgnu/expr/BlockExp;->setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v26, v7

    goto/16 :goto_0

    .line 94
    .end local v18           #output:Lgnu/expr/Expression;
    .restart local p1
    :cond_8
    :try_start_4
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    .line 95
    .local v11, fender:Lgnu/expr/Expression;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #pair:Lgnu/lists/Pair;
    check-cast v19, Lgnu/lists/Pair;

    .restart local v19       #pair:Lgnu/lists/Pair;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 97
    :cond_9
    const-string v26, "syntax-case:  bad clause"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v26

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 98
    :cond_a
    :try_start_5
    new-instance v18, Lgnu/expr/IfExp;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v26

    new-instance v27, Lgnu/expr/ExitExp;

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    move-object/from16 v0, v18

    move-object v1, v11

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v18       #output:Lgnu/expr/Expression;
    goto/16 :goto_3
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 117
    new-instance v8, Lkawa/standard/syntax_case_work;

    invoke-direct {v8}, Lkawa/standard/syntax_case_work;-><init>()V

    .line 119
    .local v8, work:Lkawa/standard/syntax_case_work;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 120
    .local v7, obj:Ljava/lang/Object;
    instance-of v9, v7, Lgnu/lists/Pair;

    if-eqz v9, :cond_1

    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_1

    .line 122
    const/4 v9, 0x2

    new-array v4, v9, [Lgnu/expr/Expression;

    .line 123
    .local v4, linits:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/LetExp;

    invoke-direct {v3, v4}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 124
    .local v3, let:Lgnu/expr/LetExp;
    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v3, p1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    iput-object v9, v8, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    .line 126
    iget-object v6, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 127
    .local v6, matchArrayOuter:Lgnu/expr/Declaration;
    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 128
    .local v5, matchArray:Lgnu/expr/Declaration;
    sget-object v9, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v5, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 129
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 130
    iput-object v5, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 131
    iget-object v9, v8, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 132
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 135
    .restart local p1
    const/4 v9, 0x0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v4, v9

    .line 136
    iget-object v9, v8, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 137
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 139
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 140
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, p2}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v8, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 144
    invoke-virtual {p0, v7, v8, p2}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 145
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 147
    const-string v9, "kawa.lang.SyntaxPattern"

    invoke-static {v9}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    const-string v10, "allocVars"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 149
    .local v1, allocVars:Lgnu/bytecode/Method;
    const/4 v9, 0x2

    new-array v2, v9, [Lgnu/expr/Expression;

    .line 150
    .local v2, args:[Lgnu/expr/Expression;
    const/4 v9, 0x0

    new-instance v10, Lgnu/expr/QuoteExp;

    iget v11, v8, Lkawa/standard/syntax_case_work;->maxVars:I

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    invoke-direct {v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v10, v2, v9

    .line 151
    if-nez v6, :cond_0

    .line 152
    const/4 v9, 0x1

    sget-object v10, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v10, v2, v9

    .line 155
    :goto_0
    const/4 v9, 0x1

    new-instance v10, Lgnu/expr/ApplyExp;

    invoke-direct {v10, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v10, v4, v9

    .line 156
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v5, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 157
    iput-object v6, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object v9, v3

    .line 160
    .end local v1           #allocVars:Lgnu/bytecode/Method;
    .end local v2           #args:[Lgnu/expr/Expression;
    .end local v3           #let:Lgnu/expr/LetExp;
    .end local v4           #linits:[Lgnu/expr/Expression;
    .end local v5           #matchArray:Lgnu/expr/Declaration;
    .end local v6           #matchArrayOuter:Lgnu/expr/Declaration;
    :goto_1
    return-object v9

    .line 154
    .restart local v1       #allocVars:Lgnu/bytecode/Method;
    .restart local v2       #args:[Lgnu/expr/Expression;
    .restart local v3       #let:Lgnu/expr/LetExp;
    .restart local v4       #linits:[Lgnu/expr/Expression;
    .restart local v5       #matchArray:Lgnu/expr/Declaration;
    .restart local v6       #matchArrayOuter:Lgnu/expr/Declaration;
    :cond_0
    const/4 v9, 0x1

    new-instance v10, Lgnu/expr/ReferenceExp;

    invoke-direct {v10, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v10, v2, v9

    goto :goto_0

    .line 160
    .end local v1           #allocVars:Lgnu/bytecode/Method;
    .end local v2           #args:[Lgnu/expr/Expression;
    .end local v3           #let:Lgnu/expr/LetExp;
    .end local v4           #linits:[Lgnu/expr/Expression;
    .end local v5           #matchArray:Lgnu/expr/Declaration;
    .end local v6           #matchArrayOuter:Lgnu/expr/Declaration;
    :cond_1
    const-string v9, "insufficiant arguments to syntax-case"

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_1
.end method
