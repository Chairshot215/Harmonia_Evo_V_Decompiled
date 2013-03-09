.class public Lkawa/standard/define_alias;
.super Lkawa/lang/Syntax;
.source "define_alias.java"


# static fields
.field public static final define_alias:Lkawa/standard/define_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/define_alias;

    invoke-direct {v0}, Lkawa/standard/define_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    .line 11
    sget-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    const-string v1, "define-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_alias;->setName(Ljava/lang/String;)V

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
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 88
    const-string v0, "define-alias is only allowed in a <body>"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 17
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 16
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 17
    .local v8, formCdr:Ljava/lang/Object;
    const/4 v9, 0x0

    .line 18
    .local v9, formSyntax:Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v15, v8, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_0

    .line 20
    move-object v0, v8

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v9, v0

    .line 21
    invoke-interface {v9}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 23
    :cond_0
    instance-of v15, v8, Lgnu/lists/Pair;

    if-eqz v15, :cond_8

    .line 25
    move-object v0, v8

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    .line 26
    .local v12, p:Lgnu/lists/Pair;
    move-object v11, v9

    .line 27
    .local v11, nameSyntax:Lkawa/lang/SyntaxForm;
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 28
    .local v10, name:Ljava/lang/Object;
    :goto_1
    instance-of v15, v10, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_1

    .line 30
    move-object v0, v10

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v11, v0

    .line 31
    invoke-interface {v11}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 34
    :goto_2
    instance-of v15, v8, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_2

    .line 36
    move-object v0, v8

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v9, v0

    .line 37
    invoke-interface {v9}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 39
    :cond_2
    instance-of v15, v10, Ljava/lang/String;

    if-nez v15, :cond_3

    instance-of v15, v10, Lgnu/mapping/Symbol;

    if-eqz v15, :cond_8

    :cond_3
    instance-of v15, v8, Lgnu/lists/Pair;

    if-eqz v15, :cond_8

    move-object v0, v8

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 43
    move-object/from16 v0, p4

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 44
    .local v6, decl:Lgnu/expr/Declaration;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 45
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 46
    move-object/from16 v0, p4

    move-object v1, v12

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 47
    .local v4, arg:Lgnu/expr/Expression;
    instance-of v15, v4, Lgnu/expr/ReferenceExp;

    if-eqz v15, :cond_6

    .line 49
    move-object v0, v4

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v13, v0

    .line 50
    .local v13, rarg:Lgnu/expr/ReferenceExp;
    invoke-virtual {v13}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v15

    invoke-static {v15}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 52
    .local v5, d:Lgnu/expr/Declaration;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    .local v7, dval:Lgnu/expr/Expression;
    instance-of v15, v7, Lgnu/expr/ClassExp;

    if-nez v15, :cond_4

    instance-of v15, v7, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_5

    .line 56
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 57
    const-wide/16 v15, 0x4000

    move-object v0, v6

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 72
    .end local v5           #d:Lgnu/expr/Declaration;
    .end local v7           #dval:Lgnu/expr/Expression;
    .end local v13           #rarg:Lgnu/expr/ReferenceExp;
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 73
    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 74
    new-instance v14, Lgnu/expr/SetExp;

    invoke-direct {v14, v6, v4}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 75
    .local v14, sexp:Lgnu/expr/SetExp;
    move-object/from16 v0, p4

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V

    .line 76
    invoke-virtual {v6, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 77
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 78
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    const/4 v15, 0x1

    .line 83
    .end local v4           #arg:Lgnu/expr/Expression;
    .end local v6           #decl:Lgnu/expr/Declaration;
    .end local v10           #name:Ljava/lang/Object;
    .end local v11           #nameSyntax:Lkawa/lang/SyntaxForm;
    .end local v12           #p:Lgnu/lists/Pair;
    .end local v14           #sexp:Lgnu/expr/SetExp;
    :goto_4
    return v15

    .line 60
    .restart local v4       #arg:Lgnu/expr/Expression;
    .restart local v5       #d:Lgnu/expr/Declaration;
    .restart local v6       #decl:Lgnu/expr/Declaration;
    .restart local v10       #name:Ljava/lang/Object;
    .restart local v11       #nameSyntax:Lkawa/lang/SyntaxForm;
    .restart local v12       #p:Lgnu/lists/Pair;
    .restart local v13       #rarg:Lgnu/expr/ReferenceExp;
    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    goto :goto_3

    .line 62
    .end local v5           #d:Lgnu/expr/Declaration;
    .end local v13           #rarg:Lgnu/expr/ReferenceExp;
    :cond_6
    instance-of v15, v4, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_7

    .line 64
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 65
    const-wide/16 v15, 0x4000

    move-object v0, v6

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 69
    :cond_7
    move-object v0, v4

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    .line 70
    const-string v15, "gnu.mapping.Location"

    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v15

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_3

    .line 82
    .end local v4           #arg:Lgnu/expr/Expression;
    .end local v6           #decl:Lgnu/expr/Declaration;
    .end local v10           #name:Ljava/lang/Object;
    .end local v11           #nameSyntax:Lkawa/lang/SyntaxForm;
    .end local v12           #p:Lgnu/lists/Pair;
    :cond_8
    const/16 v15, 0x65

    const-string v16, "invalid syntax for define-alias"

    move-object/from16 v0, p4

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 83
    const/4 v15, 0x0

    goto :goto_4
.end method
