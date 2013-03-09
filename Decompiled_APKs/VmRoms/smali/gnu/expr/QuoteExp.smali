.class public Lgnu/expr/QuoteExp;
.super Lgnu/expr/Expression;
.source "QuoteExp.java"


# static fields
.field public static final EXPLICITLY_TYPED:I = 0x2

.field public static final SHARED_CONSTANT:I = 0x4

.field public static abstractExp:Lgnu/expr/QuoteExp;

.field public static final classObjectExp:Lgnu/expr/QuoteExp;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static nullExp:Lgnu/expr/QuoteExp;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static undefined_exp:Lgnu/expr/QuoteExp;

.field public static voidExp:Lgnu/expr/QuoteExp;


# instance fields
.field protected type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    .line 55
    sget-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    .line 59
    const/4 v0, 0x0

    sget-object v1, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 60
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 100
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "val"
    .parameter "type"

    .prologue
    .line 102
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/expr/QuoteExp;->setType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;
    .locals 2
    .parameter "value"
    .parameter "position"

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 83
    .end local p0
    :goto_0
    return-object v1

    .line 71
    .restart local p0
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_1

    .line 72
    sget-object v1, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 73
    :cond_1
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne p0, v1, :cond_2

    .line 74
    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 75
    :cond_2
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v1, :cond_3

    .line 76
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 78
    :cond_3
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 79
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_4
    sget-object v1, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 80
    .restart local p0
    :cond_5
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 81
    .local v0, q:Lgnu/expr/QuoteExp;
    if-eqz p1, :cond_6

    .line 82
    invoke-virtual {v0, p1}, Lgnu/expr/QuoteExp;->setLocation(Lgnu/text/SourceLocator;)V

    :cond_6
    move-object v1, v0

    .line 83
    goto :goto_0
.end method

.method static makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 2
    .parameter "value"

    .prologue
    .line 88
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 89
    .local v0, exp:Lgnu/expr/QuoteExp;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 90
    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;
    .locals 2
    .parameter "value"
    .parameter "type"

    .prologue
    .line 95
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 96
    .local v0, exp:Lgnu/expr/QuoteExp;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 108
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 113
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 121
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 0
    .parameter "mapper"

    .prologue
    .line 127
    return-object p0
.end method

.method public final getRawType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_1

    .line 29
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 31
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p0, v0, :cond_3

    .line 33
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isExplicitlyTyped()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSharedConstant()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 211
    const-string v2, "(Quote"

    const-string v3, ")"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 213
    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    .line 214
    .local v1, val:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .end local v1           #val:Ljava/lang/Object;
    :cond_0
    iget-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 219
    .local v0, saveFormat:Lgnu/lists/AbstractFormat;
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v2

    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 220
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 221
    iget-object v2, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v2, :cond_1

    .line 223
    const-string v2, " ::"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_1
    iput-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 238
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 239
    return-void

    .line 236
    :catchall_0
    move-exception v2

    iput-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v2
.end method

.method public setType(Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 40
    iput-object p1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 42
    return-void
.end method

.method public side_effects()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 22
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "decl"

    .prologue
    .line 138
    sget-object v19, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v19, p1

    .line 199
    :goto_0
    return-object v19

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 141
    .local v9, fval:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 142
    if-eqz p4, :cond_1

    if-nez v9, :cond_2

    :cond_1
    const-string v19, "called value is not a procedure"

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v19

    goto :goto_0

    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "calling "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " which is a "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 145
    :cond_3
    move-object v0, v9

    check-cast v0, Lgnu/mapping/Procedure;

    move-object/from16 v17, v0

    .line 146
    .local v17, proc:Lgnu/mapping/Procedure;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v15

    .line 147
    .local v15, nargs:I
    move-object/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, msg:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 149
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v19

    goto :goto_0

    .line 150
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v11

    .line 151
    .local v11, inlined:Lgnu/expr/Expression;
    if-eqz v11, :cond_5

    move-object/from16 v19, v11

    .line 152
    goto :goto_0

    .line 153
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v5, v0

    .line 154
    .local v5, args:[Lgnu/expr/Expression;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/MethodProc;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/MethodProc;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 155
    .local v6, asMProc:Lgnu/mapping/MethodProc;
    :goto_2
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v15, :cond_9

    .line 157
    if-eqz v6, :cond_8

    invoke-virtual {v6, v10}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v18, v19

    .line 159
    .local v18, ptype:Lgnu/bytecode/Type;
    :goto_4
    const/16 v19, 0x1

    sub-int v19, v15, v19

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-eqz v18, :cond_6

    invoke-virtual {v6}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v19

    if-gez v19, :cond_6

    invoke-virtual {v6}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v19

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 161
    const/16 v18, 0x0

    .line 162
    :cond_6
    aget-object v19, v5, v10

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    aput-object v19, v5, v10

    .line 155
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 154
    .end local v6           #asMProc:Lgnu/mapping/MethodProc;
    .end local v10           #i:I
    .end local v18           #ptype:Lgnu/bytecode/Type;
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v6, v19

    goto :goto_2

    .line 157
    .restart local v6       #asMProc:Lgnu/mapping/MethodProc;
    .restart local v10       #i:I
    :cond_8
    const/16 v19, 0x0

    move-object/from16 v18, v19

    goto :goto_4

    .line 164
    :cond_9
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v8

    .line 167
    .local v8, e:Lgnu/expr/Expression;
    move-object v0, v8

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 168
    move-object/from16 v0, p2

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    goto/16 :goto_0

    .line 170
    .end local v8           #e:Lgnu/expr/Expression;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    .line 171
    .local v7, comp:Lgnu/expr/Compilation;
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->inlineOk(Lgnu/mapping/Procedure;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 173
    invoke-static/range {v17 .. v17}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 175
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_b

    move-object/from16 v19, p1

    .line 176
    goto/16 :goto_0

    .line 177
    :cond_b
    new-instance v19, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v19

    goto/16 :goto_0

    .line 179
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v13

    .line 182
    .local v13, mproc:Lgnu/expr/PrimProcedure;
    if-eqz v13, :cond_10

    .line 185
    invoke-virtual {v13}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v19

    if-nez v19, :cond_d

    if-nez p4, :cond_e

    .line 186
    :cond_d
    new-instance v16, Lgnu/expr/ApplyExp;

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 196
    .local v16, nexp:Lgnu/expr/ApplyExp;
    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v19

    goto/16 :goto_0

    .line 187
    .end local v16           #nexp:Lgnu/expr/ApplyExp;
    :cond_e
    move-object/from16 v0, p4

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    move-object/from16 v19, p1

    .line 188
    goto/16 :goto_0

    .line 191
    :cond_f
    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v12, v0

    .line 192
    .local v12, margs:[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v12

    move/from16 v3, v21

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/16 v19, 0x0

    new-instance v20, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p4

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v20, v12, v19

    .line 194
    new-instance v16, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v16

    move-object v1, v13

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local v16       #nexp:Lgnu/expr/ApplyExp;
    goto :goto_5

    .end local v12           #margs:[Lgnu/expr/Expression;
    .end local v13           #mproc:Lgnu/expr/PrimProcedure;
    .end local v16           #nexp:Lgnu/expr/ApplyExp;
    :cond_10
    move-object/from16 v19, p1

    .line 199
    goto/16 :goto_0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
