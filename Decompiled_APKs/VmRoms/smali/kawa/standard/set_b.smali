.class public Lkawa/standard/set_b;
.super Lkawa/lang/Syntax;
.source "set_b.java"


# static fields
.field public static final set:Lkawa/standard/set_b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/set_b;

    invoke-direct {v0}, Lkawa/standard/set_b;-><init>()V

    sput-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    .line 15
    sget-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    const-string v1, "set!"

    invoke-virtual {v0, v1}, Lkawa/standard/set_b;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 26
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 19
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 20
    .local v11, o1:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 21
    .local v20, syntax:Lkawa/lang/SyntaxForm;
    :goto_0
    move-object v0, v11

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 23
    move-object v0, v11

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 24
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v11

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 27
    const-string v23, "missing name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    .line 89
    :goto_1
    return-object v23

    .line 28
    :cond_1
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object v13, v0

    .line 29
    .local v13, p1:Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v9

    .line 30
    .local v9, name:Lgnu/expr/Expression;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 31
    .local v12, o2:Ljava/lang/Object;
    :goto_2
    move-object v0, v12

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 33
    move-object v0, v12

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 34
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    .line 37
    :cond_2
    move-object v0, v12

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object v0, v12

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    .local v14, p2:Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 39
    .end local v14           #p2:Lgnu/lists/Pair;
    :cond_3
    const-string v23, "missing or extra arguments to set!"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    goto :goto_1

    .line 40
    .restart local v14       #p2:Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v0, p2

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    .line 42
    .local v21, value:Lgnu/expr/Expression;
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 46
    move-object v0, v9

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v5, v0

    .line 47
    .local v5, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 48
    .local v6, args:[Lgnu/expr/Expression;
    array-length v10, v6

    .line 49
    .local v10, nargs:I
    const/16 v19, 0x0

    .line 50
    .local v19, skip:I
    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    .line 51
    .local v8, func:Lgnu/expr/Expression;
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_5

    move-object v0, v8

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object v0, v8

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v9, v0

    .end local v9           #name:Lgnu/expr/Expression;
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v23

    sget-object v24, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 54
    const/16 v19, 0x1

    .line 55
    add-int/lit8 v10, v10, -0x1

    .line 56
    const/16 v23, 0x0

    aget-object v8, v6, v23

    .line 58
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    aput-object v8, v17, v23

    .line 59
    .local v17, setterArgs:[Lgnu/expr/Expression;
    add-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v22, v0

    .line 60
    .local v22, xargs:[Lgnu/expr/Expression;
    const/16 v23, 0x0

    move-object v0, v6

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    aput-object v21, v22, v10

    .line 62
    sget-object v16, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 63
    .local v16, setter:Lgnu/expr/Declaration;
    new-instance v23, Lgnu/expr/ApplyExp;

    new-instance v24, Lgnu/expr/ApplyExp;

    new-instance v25, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_1

    .line 66
    .end local v5           #aexp:Lgnu/expr/ApplyExp;
    .end local v6           #args:[Lgnu/expr/Expression;
    .end local v8           #func:Lgnu/expr/Expression;
    .end local v10           #nargs:I
    .end local v16           #setter:Lgnu/expr/Declaration;
    .end local v17           #setterArgs:[Lgnu/expr/Expression;
    .end local v19           #skip:I
    .end local v22           #xargs:[Lgnu/expr/Expression;
    .restart local v9       #name:Lgnu/expr/Expression;
    :cond_6
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 67
    const-string v23, "first set! argument is not a variable name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    goto/16 :goto_1

    .line 69
    :cond_7
    move-object v0, v9

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v15, v0

    .line 70
    .local v15, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    .line 71
    .local v7, decl:Lgnu/expr/Declaration;
    new-instance v18, Lgnu/expr/SetExp;

    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 72
    .local v18, sexp:Lgnu/expr/SetExp;
    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 73
    if-eqz v7, :cond_a

    .line 75
    const/16 v23, 0x1

    move-object v0, v7

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 76
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    invoke-static {v7}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_8

    .line 79
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 80
    :cond_8
    const-wide/16 v23, 0x4000

    move-object v0, v7

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 81
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "constant variable "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is set!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v23

    goto/16 :goto_1

    .line 82
    :cond_9
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_a

    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    const-wide/32 v23, 0x10000000

    move-object v0, v7

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v23

    if-nez v23, :cond_a

    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v23, v0

    const/high16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ScopeExp;->getFlag(I)Z

    move-result v23

    if-nez v23, :cond_a

    .line 87
    const/16 v23, 0x77

    const-string v24, "imported variable "

    const-string v25, " is set!"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object v2, v7

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v23, v18

    .line 89
    goto/16 :goto_1
.end method
