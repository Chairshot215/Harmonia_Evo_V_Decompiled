.class public Lkawa/standard/define_class;
.super Lkawa/lang/Syntax;
.source "define_class.java"


# static fields
.field public static final define_class:Lkawa/standard/define_class;

.field public static final define_simple_class:Lkawa/standard/define_class;


# instance fields
.field isSimple:Z

.field objectSyntax:Lkawa/standard/object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-class"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_class:Lkawa/standard/define_class;

    .line 11
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-simple-class"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_simple_class:Lkawa/standard/define_class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "isSimple"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    iput-object v0, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    .line 28
    return-void
.end method

.method constructor <init>(Lkawa/standard/object;Z)V
    .locals 0
    .parameter "objectSyntax"
    .parameter "isSimple"

    .prologue
    .line 18
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    .line 21
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 8
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, form_cdr:Ljava/lang/Object;
    instance-of v6, v3, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 103
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, form_car:Ljava/lang/Object;
    instance-of v6, v2, Lgnu/expr/Declaration;

    if-nez v6, :cond_0

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/define_class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used in <body>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 113
    .end local v2           #form_car:Ljava/lang/Object;
    .end local p0
    :goto_0
    return-object v6

    .line 107
    .restart local v2       #form_car:Ljava/lang/Object;
    .restart local p0
    :cond_0
    move-object v0, v2

    check-cast v0, Lgnu/expr/Declaration;

    move-object v1, v0

    .line 109
    .end local v2           #form_car:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    check-cast v4, Lgnu/expr/ClassExp;

    .line 110
    .local v4, oexp:Lgnu/expr/ClassExp;
    iget-object v6, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 111
    new-instance v5, Lgnu/expr/SetExp;

    invoke-direct {v5, v1, v4}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 112
    .local v5, sexp:Lgnu/expr/SetExp;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/SetExp;->setDefining(Z)V

    move-object v6, v5

    .line 113
    goto :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 17
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 34
    .local v14, st_cdr:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 35
    .local v8, nameSyntax:Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v15, v14, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_0

    .line 37
    move-object v0, v14

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 38
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 40
    :cond_0
    instance-of v15, v14, Lgnu/lists/Pair;

    if-nez v15, :cond_1

    .line 41
    invoke-super/range {p0 .. p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v15

    .line 93
    :goto_1
    return v15

    .line 42
    :cond_1
    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 43
    .local v11, p:Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 44
    .local v7, name:Ljava/lang/Object;
    :goto_2
    instance-of v15, v7, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_2

    .line 46
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 47
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 49
    :cond_2
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 50
    instance-of v15, v7, Ljava/lang/String;

    if-nez v15, :cond_3

    instance-of v15, v7, Lgnu/mapping/Symbol;

    if-nez v15, :cond_3

    .line 52
    const/16 v15, 0x65

    const-string v16, "missing class name"

    move-object/from16 v0, p4

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    const/4 v15, 0x0

    goto :goto_1

    .line 55
    :cond_3
    move-object/from16 v0, p4

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 56
    .local v5, decl:Lgnu/expr/Declaration;
    instance-of v15, v11, Lgnu/lists/PairWithPosition;

    if-eqz v15, :cond_4

    .line 57
    move-object v0, v11

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v12, v0

    invoke-virtual {v5, v12}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 58
    :cond_4
    new-instance v10, Lgnu/expr/ClassExp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/define_class;->isSimple:Z

    move v15, v0

    invoke-direct {v10, v15}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 59
    .local v10, oexp:Lgnu/expr/ClassExp;
    invoke-virtual {v5, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 60
    const-wide/32 v15, 0x20004000

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 61
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/define_class;->isSimple:Z

    move v15, v0

    if-eqz v15, :cond_6

    sget-object v15, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    :goto_3
    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 62
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 64
    instance-of v15, v7, Lgnu/mapping/Symbol;

    if-eqz v15, :cond_7

    check-cast v7, Lgnu/mapping/Symbol;

    .end local v7           #name:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v4, v15

    .line 66
    .local v4, cname:Ljava/lang/String;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 67
    .local v9, nlen:I
    const/4 v15, 0x2

    if-le v9, v15, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3c

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    const/4 v15, 0x1

    sub-int v15, v9, v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3e

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 68
    const/4 v15, 0x1

    const/16 v16, 0x1

    sub-int v16, v9, v16

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 69
    :cond_5
    invoke-virtual {v10, v4}, Lgnu/expr/ClassExp;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 72
    .local v6, members:Ljava/lang/Object;
    :goto_5
    instance-of v15, v6, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_8

    .line 74
    move-object v0, v6

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 75
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    .line 61
    .end local v4           #cname:Ljava/lang/String;
    .end local v6           #members:Ljava/lang/Object;
    .end local v9           #nlen:I
    .restart local v7       #name:Ljava/lang/Object;
    :cond_6
    sget-object v15, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    goto :goto_3

    .line 64
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v4, v15

    goto :goto_4

    .line 77
    .end local v7           #name:Ljava/lang/Object;
    .restart local v4       #cname:Ljava/lang/String;
    .restart local v6       #members:Ljava/lang/Object;
    .restart local v9       #nlen:I
    :cond_8
    instance-of v15, v6, Lgnu/lists/Pair;

    if-nez v15, :cond_9

    .line 79
    const/16 v15, 0x65

    const-string v16, "missing class members"

    move-object/from16 v0, p4

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 80
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 82
    :cond_9
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 83
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v12

    .line 84
    .local v12, save_scope:Lgnu/expr/ScopeExp;
    if-eqz v8, :cond_a

    .line 85
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v15

    move-object/from16 v0, p4

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 86
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    move-object v15, v0

    move-object v0, v15

    move-object v1, v11

    move-object v2, v10

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v13

    .line 87
    .local v13, saved:[Ljava/lang/Object;
    if-eqz v8, :cond_b

    .line 88
    move-object/from16 v0, p4

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 89
    :cond_b
    if-nez v13, :cond_c

    .line 90
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 91
    :cond_c
    invoke-static {v11, v5, v13}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/4 v15, 0x1

    goto/16 :goto_1
.end method
