.class public Lkawa/standard/define_member_alias;
.super Lkawa/lang/Syntax;
.source "define_member_alias.java"


# static fields
.field public static final define_member_alias:Lkawa/standard/define_member_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/define_member_alias;

    invoke-direct {v0}, Lkawa/standard/define_member_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    .line 12
    sget-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    const-string v1, "define-member-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_member_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 16
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 36
    .local v7, obj:Ljava/lang/Object;
    instance-of v14, v7, Lgnu/lists/Pair;

    if-eqz v14, :cond_0

    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0

    .local v8, p1:Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/String;

    if-nez v14, :cond_1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lgnu/expr/Declaration;

    if-nez v14, :cond_1

    .line 39
    .end local v8           #p1:Lgnu/lists/Pair;
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "missing name in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    .line 78
    :goto_0
    return-object v14

    .line 40
    .restart local v8       #p1:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lgnu/lists/Pair;

    if-eqz v14, :cond_5

    .line 44
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 45
    .local v9, p1_car:Ljava/lang/Object;
    instance-of v14, v9, Lgnu/expr/Declaration;

    if-eqz v14, :cond_3

    .line 47
    move-object v0, v9

    check-cast v0, Lgnu/expr/Declaration;

    move-object v4, v0

    .line 48
    .local v4, decl:Lgnu/expr/Declaration;
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/lists/Pair;

    .line 56
    .local v10, p2:Lgnu/lists/Pair;
    const/4 v5, 0x0

    .line 57
    .local v5, fname:Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    .line 58
    .local v2, arg:Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 59
    .local v11, p2_cdr:Ljava/lang/Object;
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v14, :cond_4

    .line 60
    new-instance v5, Lgnu/expr/QuoteExp;

    .end local v5           #fname:Lgnu/expr/Expression;
    invoke-static {v6}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 67
    .restart local v5       #fname:Lgnu/expr/Expression;
    :cond_2
    :goto_2
    if-eqz v5, :cond_5

    .line 69
    const-string v14, "gnu.kawa.reflect.ClassMemberConstraint"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 71
    .local v13, t:Lgnu/bytecode/ClassType;
    const/4 v14, 0x3

    new-array v3, v14, [Lgnu/expr/Expression;

    .line 72
    .local v3, args:[Lgnu/expr/Expression;
    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/QuoteExp;

    invoke-direct {v15, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v15, v3, v14

    .line 73
    const/4 v14, 0x1

    aput-object v2, v3, v14

    .line 74
    const/4 v14, 0x2

    aput-object v5, v3, v14

    .line 75
    const-string v14, "define"

    invoke-static {v13, v14, v3}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v14

    goto :goto_0

    .line 52
    .end local v2           #arg:Lgnu/expr/Expression;
    .end local v3           #args:[Lgnu/expr/Expression;
    .end local v4           #decl:Lgnu/expr/Declaration;
    .end local v5           #fname:Lgnu/expr/Expression;
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #p2:Lgnu/lists/Pair;
    .end local v11           #p2_cdr:Ljava/lang/Object;
    .end local v13           #t:Lgnu/bytecode/ClassType;
    :cond_3
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 53
    .restart local v6       #name:Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #decl:Lgnu/expr/Declaration;
    goto :goto_1

    .line 61
    .restart local v2       #arg:Lgnu/expr/Expression;
    .restart local v5       #fname:Lgnu/expr/Expression;
    .restart local v10       #p2:Lgnu/lists/Pair;
    .restart local v11       #p2_cdr:Ljava/lang/Object;
    :cond_4
    instance-of v14, v11, Lgnu/lists/Pair;

    if-eqz v14, :cond_2

    .line 63
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    .line 64
    .local v12, p3:Lgnu/lists/Pair;
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v15, :cond_2

    .line 65
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_2

    .line 78
    .end local v2           #arg:Lgnu/expr/Expression;
    .end local v4           #decl:Lgnu/expr/Declaration;
    .end local v5           #fname:Lgnu/expr/Expression;
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #p1_car:Ljava/lang/Object;
    .end local v10           #p2:Lgnu/lists/Pair;
    .end local v11           #p2_cdr:Ljava/lang/Object;
    .end local v12           #p3:Lgnu/lists/Pair;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid syntax for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    goto/16 :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 5
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v4, 0x1

    .line 19
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .local v2, p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 22
    .end local v2           #p:Lgnu/lists/Pair;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    .line 29
    :goto_0
    return v3

    .line 23
    .restart local v2       #p:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, name:Ljava/lang/Object;
    check-cast v1, Ljava/lang/String;

    .end local v1           #name:Ljava/lang/Object;
    sget-object v3, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, v1, v3}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 26
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 27
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {p1, p0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v4

    .line 29
    goto :goto_0
.end method
