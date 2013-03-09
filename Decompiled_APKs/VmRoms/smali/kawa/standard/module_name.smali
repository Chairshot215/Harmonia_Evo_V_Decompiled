.class public Lkawa/standard/module_name;
.super Lkawa/lang/Syntax;
.source "module_name.java"


# static fields
.field public static final module_name:Lkawa/standard/module_name;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_name;

    invoke-direct {v0}, Lkawa/standard/module_name;-><init>()V

    sput-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    .line 10
    sget-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    const-string v1, "module-name"

    invoke-virtual {v0, v1}, Lkawa/standard/module_name;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 19
    .parameter "form"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 14
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 15
    .local v8, form_cdr:Ljava/lang/Object;
    const/4 v13, 0x0

    .line 16
    .local v13, nameSyntax:Lkawa/lang/SyntaxForm;
    :goto_0
    move-object v0, v8

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 18
    move-object v0, v8

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v13, v0

    .line 19
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v8

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast v8, Lgnu/lists/Pair;

    .end local v8           #form_cdr:Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    .line 22
    .local v4, arg:Ljava/lang/Object;
    :goto_1
    move-object v0, v4

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 24
    move-object v0, v4

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v13, v0

    .line 25
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 21
    .end local v4           #arg:Ljava/lang/Object;
    .restart local v8       #form_cdr:Ljava/lang/Object;
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v4, v16

    goto :goto_1

    .line 27
    .end local v8           #form_cdr:Ljava/lang/Object;
    .restart local v4       #arg:Ljava/lang/Object;
    :cond_2
    const/4 v12, 0x0

    .line 29
    .local v12, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 30
    .local v7, err:Ljava/lang/String;
    const/4 v6, 0x0

    .line 31
    .local v6, decl:Lgnu/expr/Declaration;
    move-object v0, v4

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .local v15, p:Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v16

    const-string v17, "quote"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 33
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 34
    move-object v0, v4

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 37
    :cond_3
    const-string v7, "invalid quoted symbol for \'module-name\'"

    .line 57
    .end local v15           #p:Lgnu/lists/Pair;
    :goto_2
    if-eqz v7, :cond_a

    .line 58
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_3
    return-void

    .line 39
    .restart local v15       #p:Lgnu/lists/Pair;
    :cond_4
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #name:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12       #name:Ljava/lang/String;
    goto :goto_2

    .line 41
    .end local v15           #p:Lgnu/lists/Pair;
    :cond_5
    move-object v0, v4

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object v0, v4

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 42
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 43
    :cond_7
    move-object v0, v4

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    .line 47
    .local v10, len:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_8

    const/16 v16, 0x0

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    sub-int v16, v10, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3e

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 51
    const/16 v16, 0x1

    const/16 v17, 0x1

    sub-int v17, v10, v17

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 53
    :cond_8
    move-object/from16 v0, p3

    move-object v1, v4

    move-object v2, v13

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 54
    goto :goto_2

    .line 56
    .end local v10           #len:I
    :cond_9
    const-string v7, "un-implemented expression in module-name"

    goto/16 :goto_2

    .line 61
    :cond_a
    const/16 v16, 0x2e

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 62
    .local v9, index:I
    move-object v5, v12

    .line 63
    .local v5, className:Ljava/lang/String;
    if-ltz v9, :cond_e

    .line 64
    const/16 v16, 0x0

    add-int/lit8 v17, v9, 0x1

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    .line 70
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v11

    .line 71
    .local v11, module:Lgnu/expr/ModuleExp;
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    .line 72
    new-instance v16, Lgnu/bytecode/ClassType;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    .line 81
    :cond_b
    :goto_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 82
    invoke-virtual {v11, v12}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 84
    if-eqz v6, :cond_d

    .line 86
    new-instance v16, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    sget-object v18, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-direct/range {v16 .. v18}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    const-wide/32 v16, 0x1004000

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/ModuleExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 89
    const-wide/16 v16, 0x800

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 90
    :cond_c
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 91
    sget-object v16, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 93
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    goto/16 :goto_3

    .line 67
    .end local v11           #module:Lgnu/expr/ModuleExp;
    :cond_e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 68
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 75
    .restart local v11       #module:Lgnu/expr/ModuleExp;
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, oldName:Ljava/lang/String;
    if-nez v14, :cond_10

    .line 77
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 78
    :cond_10
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 79
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "duplicate module-name: old name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_5
.end method
