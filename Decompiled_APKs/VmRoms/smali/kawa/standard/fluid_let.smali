.class public Lkawa/standard/fluid_let;
.super Lkawa/lang/Syntax;
.source "fluid_let.java"


# static fields
.field public static final fluid_let:Lkawa/standard/fluid_let;


# instance fields
.field defaultInit:Lgnu/expr/Expression;

.field star:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/fluid_let;

    invoke-direct {v0}, Lkawa/standard/fluid_let;-><init>()V

    sput-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    .line 15
    sget-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    const-string v1, "fluid-set"

    invoke-virtual {v0, v1}, Lkawa/standard/fluid_let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZLgnu/expr/Expression;)V
    .locals 0
    .parameter "star"
    .parameter "defaultInit"

    .prologue
    .line 25
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 26
    iput-boolean p1, p0, Lkawa/standard/fluid_let;->star:Z

    .line 27
    iput-object p2, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 28
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 15
    .parameter "bindings"
    .parameter "body"
    .parameter "tr"

    .prologue
    .line 45
    iget-boolean v13, p0, Lkawa/standard/fluid_let;->star:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    move v5, v13

    .line 46
    .local v5, decl_count:I
    :goto_0
    new-array v8, v5, [Lgnu/expr/Expression;

    .line 47
    .local v8, inits:[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/FluidLetExp;

    invoke-direct {v9, v8}, Lgnu/expr/FluidLetExp;-><init>([Lgnu/expr/Expression;)V

    .line 48
    .local v9, let:Lgnu/expr/FluidLetExp;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 50
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 51
    .local v2, bind_pair:Lgnu/lists/Pair;
    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 56
    .local v11, savePos:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 57
    .local v10, name:Ljava/lang/Object;
    instance-of v13, v10, Ljava/lang/String;

    if-nez v13, :cond_0

    instance-of v13, v10, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_4

    .line 59
    :cond_0
    iget-object v12, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 81
    .local v12, value:Lgnu/expr/Expression;
    :goto_2
    invoke-virtual {v9, v10}, Lgnu/expr/FluidLetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 82
    .local v4, decl:Lgnu/expr/Declaration;
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v6

    .line 83
    .local v6, found:Lgnu/expr/Declaration;
    if-eqz v6, :cond_1

    .line 85
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 86
    iput-object v6, v4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 87
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 88
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 90
    :cond_1
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 91
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 92
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 93
    if-nez v12, :cond_2

    .line 94
    new-instance v12, Lgnu/expr/ReferenceExp;

    .end local v12           #value:Lgnu/expr/Expression;
    invoke-direct {v12, v10}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 95
    .restart local v12       #value:Lgnu/expr/Expression;
    :cond_2
    aput-object v12, v8, v7

    .line 96
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 101
    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 45
    .end local v2           #bind_pair:Lgnu/lists/Pair;
    .end local v4           #decl:Lgnu/expr/Declaration;
    .end local v5           #decl_count:I
    .end local v6           #found:Lgnu/expr/Declaration;
    .end local v7           #i:I
    .end local v8           #inits:[Lgnu/expr/Expression;
    .end local v9           #let:Lgnu/expr/FluidLetExp;
    .end local v10           #name:Ljava/lang/Object;
    .end local v11           #savePos:Ljava/lang/Object;
    .end local v12           #value:Lgnu/expr/Expression;
    :cond_3
    invoke-static/range {p1 .. p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v13

    move v5, v13

    goto :goto_0

    .line 61
    .restart local v2       #bind_pair:Lgnu/lists/Pair;
    .restart local v5       #decl_count:I
    .restart local v7       #i:I
    .restart local v8       #inits:[Lgnu/expr/Expression;
    .restart local v9       #let:Lgnu/expr/FluidLetExp;
    .restart local v10       #name:Ljava/lang/Object;
    .restart local v11       #savePos:Ljava/lang/Object;
    :cond_4
    :try_start_1
    instance-of v13, v10, Lgnu/lists/Pair;

    if-eqz v13, :cond_a

    move-object v0, v10

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .local v3, binding:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/String;

    if-nez v13, :cond_5

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-nez v13, :cond_5

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_a

    .line 66
    :cond_5
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 67
    instance-of v13, v10, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_6

    .line 68
    check-cast v10, Lkawa/lang/SyntaxForm;

    .end local v10           #name:Ljava/lang/Object;
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    .line 70
    .restart local v10       #name:Ljava/lang/Object;
    :cond_6
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v13, v14, :cond_7

    .line 71
    iget-object v12, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .restart local v12       #value:Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 72
    .end local v12           #value:Lgnu/expr/Expression;
    :cond_7
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_8

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #binding:Lgnu/lists/Pair;
    check-cast v3, Lgnu/lists/Pair;

    .restart local v3       #binding:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v13, v14, :cond_9

    .line 74
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad syntax for value of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 101
    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 110
    .end local v2           #bind_pair:Lgnu/lists/Pair;
    .end local v3           #binding:Lgnu/lists/Pair;
    .end local v10           #name:Ljava/lang/Object;
    .end local v11           #savePos:Ljava/lang/Object;
    :goto_3
    return-object v13

    .line 77
    .restart local v2       #bind_pair:Lgnu/lists/Pair;
    .restart local v3       #binding:Lgnu/lists/Pair;
    .restart local v10       #name:Ljava/lang/Object;
    .restart local v11       #savePos:Ljava/lang/Object;
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v12

    .restart local v12       #value:Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 80
    .end local v3           #binding:Lgnu/lists/Pair;
    .end local v12           #value:Lgnu/expr/Expression;
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " syntax"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 101
    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_3

    .end local v10           #name:Ljava/lang/Object;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v13

    .line 104
    .end local v2           #bind_pair:Lgnu/lists/Pair;
    .end local v11           #savePos:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    iget-boolean v13, p0, Lkawa/standard/fluid_let;->star:Z

    if-eqz v13, :cond_c

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v13

    if-eq v0, v1, :cond_c

    .line 106
    invoke-virtual/range {p0 .. p3}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v9, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    .line 109
    :goto_4
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    move-object v13, v9

    .line 110
    goto :goto_3

    .line 108
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v9, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    goto :goto_4
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 37
    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    .line 38
    const-string v2, "missing let arguments"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 40
    :goto_0
    return-object v2

    .line 39
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 40
    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0
.end method
