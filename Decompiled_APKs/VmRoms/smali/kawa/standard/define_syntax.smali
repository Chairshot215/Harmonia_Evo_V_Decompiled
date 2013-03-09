.class public Lkawa/standard/define_syntax;
.super Lkawa/lang/Syntax;
.source "define_syntax.java"


# static fields
.field public static final define_macro:Lkawa/standard/define_syntax;

.field public static final define_syntax:Lkawa/standard/define_syntax;

.field static makeHygienic:Lgnu/expr/PrimProcedure;

.field static makeNonHygienic:Lgnu/expr/PrimProcedure;

.field static setCapturedScope:Lgnu/expr/PrimProcedure;

.field static typeMacro:Lgnu/bytecode/ClassType;


# instance fields
.field hygienic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-macro"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_macro:Lkawa/standard/define_syntax;

    .line 16
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-syntax"

    invoke-direct {v0, v1, v3}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_syntax:Lkawa/standard/define_syntax;

    .line 30
    const-string v0, "kawa.lang.Macro"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v2, "make"

    invoke-virtual {v1, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    .line 33
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v2, "makeNonHygienic"

    invoke-virtual {v1, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    .line 35
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v2, "setCapturedScope"

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    .line 38
    sget-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 39
    sget-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkawa/standard/define_syntax;->hygienic:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "name"
    .parameter "hygienic"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_syntax;->hygienic:Z

    .line 28
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 46
    const-string v0, "define-syntax not in a body"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 19
    .parameter "st"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 51
    const/4 v15, 0x0

    .line 52
    .local v15, syntax:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 53
    .local v14, st_cdr:Ljava/lang/Object;
    :goto_0
    move-object v0, v14

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 55
    move-object v0, v14

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v15, v0

    .line 56
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 58
    :cond_0
    move-object v9, v14

    .line 60
    .local v9, p:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 62
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v10, v0

    .line 63
    .local v10, pp:Lgnu/lists/Pair;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 64
    .local v7, name:Ljava/lang/Object;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 68
    .end local v7           #name:Ljava/lang/Object;
    .end local v10           #pp:Lgnu/lists/Pair;
    :goto_1
    move-object v8, v15

    .local v8, nameSyntax:Lkawa/lang/SyntaxForm;
    move-object v10, v7

    .line 69
    :goto_2
    move-object v0, v10

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 71
    move-object v0, v10

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 72
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #name:Ljava/lang/Object;
    move-object v10, v7

    goto :goto_2

    .line 67
    .end local v7           #name:Ljava/lang/Object;
    .end local v8           #nameSyntax:Lkawa/lang/SyntaxForm;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #name:Ljava/lang/Object;
    goto :goto_1

    .line 74
    .end local v7           #name:Ljava/lang/Object;
    .restart local v8       #nameSyntax:Lkawa/lang/SyntaxForm;
    :cond_2
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 75
    .restart local v7       #name:Ljava/lang/Object;
    move-object v0, v7

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 77
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "missing macro name for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 126
    .end local v9           #p:Ljava/lang/Object;
    :cond_3
    :goto_3
    return-void

    .line 80
    .restart local v9       #p:Ljava/lang/Object;
    :cond_4
    if-eqz v9, :cond_5

    invoke-static {v9}, Lkawa/lang/Translator;->safeCdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 82
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid syntax for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/define_syntax;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 86
    :cond_6
    move-object/from16 v0, p3

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 87
    .local v5, decl:Lgnu/expr/Declaration;
    sget-object v16, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 90
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object v13, v0

    .line 91
    .local v13, savedMacro:Lkawa/lang/Macro;
    invoke-static {v5}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v6

    .line 92
    .local v6, macro:Lkawa/lang/Macro;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/define_syntax;->hygienic:Z

    move/from16 v16, v0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Macro;->setHygienic(Z)V

    .line 93
    move-object v0, v6

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 94
    check-cast v9, Lgnu/lists/Pair;

    .end local v9           #p:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v12

    .line 95
    .local v12, rule:Lgnu/expr/Expression;
    move-object v0, v13

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 96
    iput-object v12, v6, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 98
    move-object v0, v12

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 99
    move-object v0, v12

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v13, v0

    .end local v13           #savedMacro:Lkawa/lang/Macro;
    const/16 v16, 0x100

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 100
    :cond_7
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v4, v0

    .line 101
    .local v4, args:[Lgnu/expr/Expression;
    const/16 v16, 0x0

    new-instance v17, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v17, v4, v16

    .line 102
    const/16 v16, 0x1

    aput-object v12, v4, v16

    .line 103
    const/16 v16, 0x2

    invoke-static/range {p2 .. p2}, Lgnu/expr/ThisExp;->makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;

    move-result-object v17

    aput-object v17, v4, v16

    .line 104
    new-instance v12, Lgnu/expr/ApplyExp;

    .end local v12           #rule:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/define_syntax;->hygienic:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    sget-object v16, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    :goto_4
    move-object v0, v12

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 106
    .restart local v12       #rule:Lgnu/expr/Expression;
    invoke-virtual {v5, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 107
    const/16 v16, 0x1

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 109
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 111
    new-instance v11, Lgnu/expr/SetExp;

    invoke-direct {v11, v5, v12}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 112
    .local v11, result:Lgnu/expr/SetExp;
    const/16 v16, 0x1

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 114
    const/16 v16, 0x1

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 116
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 118
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 120
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v4, v0

    .line 121
    const/16 v16, 0x0

    new-instance v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v17, v4, v16

    .line 122
    const/16 v16, 0x1

    new-instance v17, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v17, v4, v16

    .line 123
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    new-instance v17, Lgnu/expr/ApplyExp;

    sget-object v18, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 104
    .end local v11           #result:Lgnu/expr/SetExp;
    .end local v12           #rule:Lgnu/expr/Expression;
    :cond_9
    sget-object v16, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    goto/16 :goto_4
.end method
