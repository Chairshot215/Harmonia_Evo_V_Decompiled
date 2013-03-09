.class public Lkawa/standard/let;
.super Lkawa/lang/Syntax;
.source "let.java"


# static fields
.field public static final let:Lkawa/standard/let;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lkawa/standard/let;

    invoke-direct {v0}, Lkawa/standard/let;-><init>()V

    sput-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    .line 18
    sget-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    const-string v1, "let"

    invoke-virtual {v0, v1}, Lkawa/standard/let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 26
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 22
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 23
    const-string v24, "missing let arguments"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    .line 136
    .end local p0
    :goto_0
    return-object v24

    .line 24
    .restart local p0
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v17, v0

    .line 25
    .local v17, pair:Lgnu/lists/Pair;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 26
    .local v8, bindings:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 27
    .local v9, body:Ljava/lang/Object;
    invoke-static {v8}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v11

    .line 28
    .local v11, decl_count:I
    if-gez v11, :cond_1

    .line 29
    const-string v24, "bindings not a proper list"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto :goto_0

    .line 31
    :cond_1
    new-array v14, v11, [Lgnu/expr/Expression;

    .line 32
    .local v14, inits:[Lgnu/expr/Expression;
    new-instance v15, Lgnu/expr/LetExp;

    invoke-direct {v15, v14}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 33
    .local v15, let:Lgnu/expr/LetExp;
    const/16 v18, 0x0

    .line 34
    .local v18, renamedAliases:Ljava/util/Stack;
    const/16 v19, 0x0

    .line 35
    .local v19, renamedAliasesCount:I
    const/16 v22, 0x0

    .line 36
    .local v22, syntaxRest:Lkawa/lang/SyntaxForm;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v11, :cond_13

    .line 38
    :goto_2
    move-object v0, v8

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 40
    move-object v0, v8

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v22, v0

    .line 41
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 45
    :cond_2
    move-object v0, v8

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    .line 46
    .local v4, bind_pair:Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 47
    .local v5, bind_pair_car:Ljava/lang/Object;
    move-object/from16 v21, v22

    .line 48
    .local v21, syntax:Lkawa/lang/SyntaxForm;
    move-object v0, v5

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 50
    move-object v0, v5

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v21, v0

    .line 51
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    .line 53
    :cond_3
    move-object v0, v5

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 54
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "let binding is not a pair:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto :goto_0

    .line 55
    :cond_4
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 56
    .local v6, binding:Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v16

    .line 58
    .local v16, name:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 60
    move-object/from16 v0, v16

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 61
    .local v20, sf:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v16

    .line 62
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v23

    .line 66
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    .local v23, templateScope:Lkawa/lang/TemplateScope;
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 67
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 68
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "variable "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in let binding is not a symbol: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 65
    .end local v23           #templateScope:Lkawa/lang/TemplateScope;
    :cond_5
    if-nez v21, :cond_6

    const/16 v24, 0x0

    move-object/from16 v23, v24

    .restart local v23       #templateScope:Lkawa/lang/TemplateScope;
    :goto_4
    goto :goto_3

    .end local v23           #templateScope:Lkawa/lang/TemplateScope;
    :cond_6
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v24

    move-object/from16 v23, v24

    goto :goto_4

    .line 70
    .restart local v23       #templateScope:Lkawa/lang/TemplateScope;
    :cond_7
    invoke-virtual/range {v15 .. v16}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v10

    .line 71
    .local v10, decl:Lgnu/expr/Declaration;
    const-wide/32 v24, 0x40000

    move-object v0, v10

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 72
    if-eqz v23, :cond_9

    .line 74
    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 75
    .local v3, alias:Lgnu/expr/Declaration;
    if-nez v18, :cond_8

    .line 76
    new-instance v18, Ljava/util/Stack;

    .end local v18           #renamedAliases:Ljava/util/Stack;
    invoke-direct/range {v18 .. v18}, Ljava/util/Stack;-><init>()V

    .line 77
    .restart local v18       #renamedAliases:Ljava/util/Stack;
    :cond_8
    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v19, v19, 0x1

    .line 81
    .end local v3           #alias:Lgnu/expr/Declaration;
    :cond_9
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 82
    .local v7, binding_cdr:Ljava/lang/Object;
    :goto_5
    move-object v0, v7

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 84
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v21, v0

    .line 85
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_5

    .line 87
    :cond_a
    move-object v0, v7

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 88
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "let has no value for \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 89
    :cond_b
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 90
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 92
    :goto_6
    move-object v0, v7

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 94
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v21, v0

    .line 95
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_6

    .line 97
    :cond_c
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    const-string v25, "::"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 99
    move-object v0, v7

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 101
    :cond_d
    const-string v24, "missing type after \'::\' in let"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 102
    :cond_e
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 103
    :goto_7
    move-object v0, v7

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 105
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v21, v0

    .line 106
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_7

    .line 109
    :cond_f
    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v7

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 111
    move-object v13, v6

    .line 121
    .local v13, init:Lgnu/lists/Pair;
    :goto_8
    move-object/from16 v0, p2

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v24

    aput-object v24, v14, v12

    .line 122
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 123
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "junk after declaration of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 113
    .end local v13           #init:Lgnu/lists/Pair;
    :cond_10
    move-object v0, v7

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 115
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 116
    const-wide/16 v24, 0x2000

    move-object v0, v10

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 117
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v13, v0

    .restart local v13       #init:Lgnu/lists/Pair;
    goto :goto_8

    .line 120
    .end local v13           #init:Lgnu/lists/Pair;
    :cond_11
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "let binding for \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' is improper list"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 124
    .restart local v13       #init:Lgnu/lists/Pair;
    :cond_12
    aget-object v24, v14, v12

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 36
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 128
    .end local v4           #bind_pair:Lgnu/lists/Pair;
    .end local v5           #bind_pair_car:Ljava/lang/Object;
    .end local v6           #binding:Lgnu/lists/Pair;
    .end local v7           #binding_cdr:Ljava/lang/Object;
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v13           #init:Lgnu/lists/Pair;
    .end local v16           #name:Ljava/lang/Object;
    .end local v21           #syntax:Lkawa/lang/SyntaxForm;
    .end local v23           #templateScope:Lkawa/lang/TemplateScope;
    :cond_13
    move/from16 v12, v19

    .end local p0
    :goto_9
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_14

    .line 129
    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Declaration;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_9

    .line 131
    :cond_14
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 132
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v15

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 133
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    move-object/from16 v24, v15

    .line 136
    goto/16 :goto_0
.end method
