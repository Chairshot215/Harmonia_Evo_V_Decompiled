.class public Lgnu/expr/StackTarget;
.super Lgnu/expr/Target;
.source "StackTarget.java"


# instance fields
.field type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    iput-object p1, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method static compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 4
    .parameter "comp"
    .parameter "stackType"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 29
    if-ne p2, p1, :cond_0

    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 32
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 43
    :cond_1
    instance-of v1, p1, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_4

    .line 45
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq p2, v1, :cond_2

    const-string v1, "java.lang.Cloneable"

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v3

    .line 47
    goto :goto_0

    .line 37
    :cond_3
    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    move v1, v3

    .line 40
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/Type;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    .line 52
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 54
    :cond_5
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "comp"
    .parameter "stackType"
    .parameter "targetType"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p2, p0}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected static emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "type"
    .parameter "comp"

    .prologue
    .line 66
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 67
    .local v0, code:Lgnu/bytecode/CodeAttr;
    instance-of v1, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 71
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 72
    const-string v1, "gnu.bytecode.Type"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "coerceFromObject"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 78
    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 1
    .parameter "type"

    .prologue
    .line 17
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_1
    new-instance v0, Lgnu/expr/StackTarget;

    invoke-direct {v0, p0}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "comp"
    .parameter "stackType"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {v0, p1}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z
    .locals 1
    .parameter "comp"
    .parameter "stackType"

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {p1, p2, v0}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-object v0
.end method
