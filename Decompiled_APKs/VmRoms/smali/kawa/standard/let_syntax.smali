.class public Lkawa/standard/let_syntax;
.super Lkawa/lang/Syntax;
.source "let_syntax.java"


# static fields
.field public static final let_syntax:Lkawa/standard/let_syntax;

.field public static final letrec_syntax:Lkawa/standard/let_syntax;


# instance fields
.field recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x0

    const-string v2, "let-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->let_syntax:Lkawa/standard/let_syntax;

    .line 15
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x1

    const-string v2, "letrec-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->letrec_syntax:Lkawa/standard/let_syntax;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "recursive"
    .parameter "name"

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-boolean p1, p0, Lkawa/standard/let_syntax;->recursive:Z

    .line 24
    return-void
.end method

.method private push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V
    .locals 1
    .parameter "let"
    .parameter "tr"
    .parameter "renamedAliases"

    .prologue
    .line 134
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result v0

    .end local p0
    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 137
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Declaration;

    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 138
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 35
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 28
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-nez v33, :cond_0

    .line 29
    const-string v33, "missing let-syntax arguments"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    .line 129
    :goto_0
    return-object v33

    .line 30
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v24, v0

    .line 31
    .local v24, pair:Lgnu/lists/Pair;
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 32
    .local v10, bindings:Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 33
    .local v11, body:Ljava/lang/Object;
    invoke-static {v10}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v13

    .line 34
    .local v13, decl_count:I
    if-gez v13, :cond_1

    .line 35
    const-string v33, "bindings not a proper list"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto :goto_0

    .line 36
    :cond_1
    const/16 v25, 0x0

    .line 37
    .local v25, renamedAliases:Ljava/util/Stack;
    const/16 v26, 0x0

    .line 38
    .local v26, renamedAliasesCount:I
    move v0, v13

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v16, v0

    .line 39
    .local v16, inits:[Lgnu/expr/Expression;
    new-array v14, v13, [Lgnu/expr/Declaration;

    .line 40
    .local v14, decls:[Lgnu/expr/Declaration;
    move v0, v13

    new-array v0, v0, [Lkawa/lang/Macro;

    move-object/from16 v21, v0

    .line 41
    .local v21, macros:[Lkawa/lang/Macro;
    move v0, v13

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v31, v0

    .line 42
    .local v31, transformers:[Lgnu/lists/Pair;
    move v0, v13

    new-array v0, v0, [Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    .line 43
    .local v30, trSyntax:[Lkawa/lang/SyntaxForm;
    new-instance v17, Lgnu/expr/LetExp;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 44
    .local v17, let:Lgnu/expr/LetExp;
    const/16 v18, 0x0

    .line 45
    .local v18, listSyntax:Lkawa/lang/SyntaxForm;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v13, :cond_f

    .line 47
    :goto_2
    move-object v0, v10

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 49
    move-object v0, v10

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v0

    .line 50
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    .line 52
    :cond_2
    move-object/from16 v8, v18

    .line 53
    .local v8, bindingSyntax:Lkawa/lang/SyntaxForm;
    move-object v0, v10

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    .line 54
    .local v5, bind_pair:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 55
    .local v6, bind_pair_car:Ljava/lang/Object;
    move-object v0, v6

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 57
    move-object v0, v6

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 58
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    .line 60
    :cond_3
    move-object v0, v6

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-nez v33, :cond_4

    .line 61
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " binding is not a pair"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto/16 :goto_0

    .line 62
    :cond_4
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 63
    .local v7, binding:Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    .line 64
    .local v22, name:Ljava/lang/Object;
    move-object/from16 v23, v8

    .line 65
    .local v23, nameSyntax:Lkawa/lang/SyntaxForm;
    :goto_3
    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 67
    move-object/from16 v0, v22

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v23, v0

    .line 68
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v22

    goto :goto_3

    .line 70
    :cond_5
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v33, v0

    if-nez v33, :cond_6

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v33, v0

    if-nez v33, :cond_6

    .line 71
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "variable in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " binding is not a symbol"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto/16 :goto_0

    .line 72
    :cond_6
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 73
    .local v9, binding_cdr:Ljava/lang/Object;
    :goto_4
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 75
    move-object v0, v9

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 76
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    .line 78
    :cond_7
    move-object v0, v9

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-nez v33, :cond_8

    .line 79
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " has no value for \'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto/16 :goto_0

    .line 80
    :cond_8
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 81
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_9

    .line 82
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "let binding for \'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\' is improper list"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v33

    goto/16 :goto_0

    .line 83
    :cond_9
    new-instance v12, Lgnu/expr/Declaration;

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 84
    .local v12, decl:Lgnu/expr/Declaration;
    invoke-static {v12}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v20

    .line 85
    .local v20, macro:Lkawa/lang/Macro;
    aput-object v20, v21, v15

    .line 86
    aput-object v7, v31, v15

    .line 87
    aput-object v8, v30, v15

    .line 88
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 89
    if-nez v23, :cond_c

    const/16 v33, 0x0

    move-object/from16 v29, v33

    .line 90
    .local v29, templateScope:Lgnu/expr/ScopeExp;
    :goto_5
    if-eqz v29, :cond_b

    .line 92
    move-object/from16 v0, p2

    move-object v1, v12

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 93
    .local v4, alias:Lgnu/expr/Declaration;
    if-nez v25, :cond_a

    .line 94
    new-instance v25, Ljava/util/Stack;

    .end local v25           #renamedAliases:Ljava/util/Stack;
    invoke-direct/range {v25 .. v25}, Ljava/util/Stack;-><init>()V

    .line 95
    .restart local v25       #renamedAliases:Ljava/util/Stack;
    :cond_a
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v26, v26, 0x1

    .line 98
    .end local v4           #alias:Lgnu/expr/Declaration;
    :cond_b
    if-eqz v8, :cond_d

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v33

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Macro;->setCapturedScope(Lgnu/expr/ScopeExp;)V

    .line 100
    aput-object v12, v14, v15

    .line 101
    sget-object v33, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v33, v16, v15

    .line 102
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 45
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 89
    .end local v29           #templateScope:Lgnu/expr/ScopeExp;
    :cond_c
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v33

    move-object/from16 v29, v33

    goto :goto_5

    .line 98
    .restart local v29       #templateScope:Lgnu/expr/ScopeExp;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    move-object/from16 v33, v17

    goto :goto_6

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v33

    goto :goto_6

    .line 104
    .end local v5           #bind_pair:Lgnu/lists/Pair;
    .end local v6           #bind_pair_car:Ljava/lang/Object;
    .end local v7           #binding:Lgnu/lists/Pair;
    .end local v8           #bindingSyntax:Lkawa/lang/SyntaxForm;
    .end local v9           #binding_cdr:Ljava/lang/Object;
    .end local v12           #decl:Lgnu/expr/Declaration;
    .end local v20           #macro:Lkawa/lang/Macro;
    .end local v22           #name:Ljava/lang/Object;
    .end local v23           #nameSyntax:Lkawa/lang/SyntaxForm;
    .end local v29           #templateScope:Lgnu/expr/ScopeExp;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 106
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object/from16 v28, v0

    .line 107
    .local v28, savedMacro:Lkawa/lang/Macro;
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_12

    .line 109
    aget-object v20, v21, v15

    .line 110
    .restart local v20       #macro:Lkawa/lang/Macro;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 111
    aget-object v33, v31, v15

    aget-object v34, v30, v15

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v32

    .line 112
    .local v32, value:Lgnu/expr/Expression;
    aput-object v32, v16, v15

    .line 113
    aget-object v12, v14, v15

    .line 114
    .restart local v12       #decl:Lgnu/expr/Declaration;
    move-object/from16 v0, v32

    move-object/from16 v1, v20

    iput-object v0, v1, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 115
    new-instance v33, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v12

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 116
    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v33, v0

    if-eqz v33, :cond_11

    .line 118
    move-object/from16 v0, v32

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    .line 119
    .local v19, lvalue:Lgnu/expr/LambdaExp;
    move-object v0, v12

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 120
    invoke-virtual {v12}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 107
    .end local v19           #lvalue:Lgnu/expr/LambdaExp;
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 123
    .end local v12           #decl:Lgnu/expr/Declaration;
    .end local v20           #macro:Lkawa/lang/Macro;
    .end local v32           #value:Lgnu/expr/Expression;
    :cond_12
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v33, v0

    if-nez v33, :cond_13

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 126
    :cond_13
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v27

    .line 127
    .local v27, result:Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 128
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    move-object/from16 v33, v27

    .line 129
    goto/16 :goto_0
.end method
