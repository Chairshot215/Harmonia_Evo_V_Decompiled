.class public Lgnu/expr/BindingInitializer;
.super Lgnu/expr/Initializer;
.source "BindingInitializer.java"


# static fields
.field static final typeThreadLocation:Lgnu/bytecode/ClassType;


# instance fields
.field decl:Lgnu/expr/Declaration;

.field value:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "gnu.mapping.ThreadLocation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 1
    .parameter "decl"
    .parameter "value"

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    .line 32
    iput-object p2, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    .line 33
    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iput-object v0, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    .line 34
    return-void
.end method

.method public static create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "decl"
    .parameter "value"
    .parameter "comp"

    .prologue
    .line 16
    new-instance v0, Lgnu/expr/BindingInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/BindingInitializer;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 17
    .local v0, init:Lgnu/expr/BindingInitializer;
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    :cond_0
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 20
    iput-object v0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 27
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :cond_2
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v1, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 25
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_0
.end method

.method public static makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 130
    .local v0, atypes:[Lgnu/bytecode/Type;
    instance-of v1, p0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    .line 134
    :goto_0
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "make"

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    return-object v1

    .line 133
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 19
    .parameter "comp"

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    sget-object v17, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 46
    .local v4, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object v3, v0

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 49
    .local v14, val:Ljava/lang/Object;
    if-eqz v14, :cond_2

    move-object v0, v14

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 51
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v7

    .line 52
    .local v7, lit:Lgnu/expr/Literal;
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 57
    .end local v7           #lit:Lgnu/expr/Literal;
    .end local v14           #val:Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v6

    .line 58
    .local v6, line:I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    .line 59
    .local v9, messages:Lgnu/text/SourceMessages;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v12

    .line 60
    .local v12, saveLoc:Lgnu/text/SourceLocator;
    if-lez v6, :cond_3

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 62
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v16

    if-nez v16, :cond_4

    .line 63
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 65
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 67
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v5

    .line 68
    .local v5, func:Z
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v16

    if-eqz v16, :cond_7

    sget-object v16, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object/from16 v11, v16

    .line 71
    .local v11, property:Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v10

    .line 73
    .local v10, name:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    const-wide/32 v17, 0x10010000

    invoke-virtual/range {v16 .. v18}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 75
    move-object v0, v10

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 76
    sget-object v16, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    check-cast v10, Ljava/lang/String;

    .end local v10           #name:Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    .line 77
    :cond_5
    sget-object v16, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 78
    if-nez v11, :cond_8

    .line 79
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 82
    :goto_2
    sget-object v16, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v17, "getInstance"

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 110
    .end local v5           #func:Z
    .end local v11           #property:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    if-nez v16, :cond_e

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v15

    .line 113
    .local v15, var:Lgnu/bytecode/Variable;
    if-nez v15, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v15

    .line 115
    :cond_6
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 121
    .end local v15           #var:Lgnu/bytecode/Variable;
    :goto_4
    invoke-virtual {v9, v12}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    goto/16 :goto_0

    .line 68
    .restart local v5       #func:Z
    :cond_7
    const/16 v16, 0x0

    move-object/from16 v11, v16

    goto :goto_1

    .line 81
    .restart local v11       #property:Ljava/lang/Object;
    :cond_8
    sget-object v16, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, p1

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_2

    .line 84
    .restart local v10       #name:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 89
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v3, v0

    .line 90
    .local v3, atypes:[Lgnu/bytecode/Type;
    const/16 v16, 0x0

    move-object v0, v10

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    sget-object v17, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    :goto_5
    aput-object v17, v3, v16

    .line 92
    sget-object v16, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 93
    sget-object v16, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v17, "makeAnonymous"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    .line 95
    .local v8, m:Lgnu/bytecode/Method;
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 90
    .end local v8           #m:Lgnu/bytecode/Method;
    :cond_a
    sget-object v17, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 99
    .end local v3           #atypes:[Lgnu/bytecode/Type;
    :cond_b
    sget-object v16, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 100
    invoke-static {v10}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_3

    .line 105
    .end local v5           #func:Z
    .end local v10           #name:Ljava/lang/Object;
    .end local v11           #property:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v16

    move-object/from16 v13, v16

    .line 106
    .local v13, type:Lgnu/bytecode/Type;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    invoke-static {v13}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_3

    .line 105
    .end local v13           #type:Lgnu/bytecode/Type;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v16

    move-object/from16 v13, v16

    goto :goto_6

    .line 117
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_4

    .line 120
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_4
.end method
