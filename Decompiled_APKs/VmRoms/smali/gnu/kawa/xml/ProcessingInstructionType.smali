.class public Lgnu/kawa/xml/ProcessingInstructionType;
.super Lgnu/kawa/xml/NodeType;
.source "ProcessingInstructionType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

.field public static final typeProcessingInstructionType:Lgnu/bytecode/ClassType;


# instance fields
.field target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 17
    new-instance v0, Lgnu/kawa/xml/ProcessingInstructionType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    .line 89
    const-string v0, "gnu.kawa.xml.ProcessingInstructionType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    .line 91
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    const-string v1, "coerce"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    .line 93
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 22
    if-nez p1, :cond_0

    const-string v0, "processing-instruction()"

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 25
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing-instruction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 2
    .parameter "obj"
    .parameter "target"

    .prologue
    .line 74
    invoke-static {p0, p1}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    .line 75
    .local v0, pos:Lgnu/kawa/xml/KProcessingInstruction;
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 77
    :cond_0
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 2
    .parameter "obj"
    .parameter "target"

    .prologue
    .line 66
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/KProcessingInstruction;

    .line 68
    .local v0, pos:Lgnu/kawa/xml/KProcessingInstruction;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lgnu/kawa/xml/KProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;
    .locals 1
    .parameter "target"

    .prologue
    .line 29
    if-nez p0, :cond_0

    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/kawa/xml/ProcessingInstructionType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 46
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {p1, v0}, Lgnu/kawa/xml/ProcessingInstructionType;->coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 42
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "incoming"
    .parameter "comp"

    .prologue
    .line 82
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 83
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 87
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 34
    const-string v0, "gnu.kawa.xml.KProcessingInstruction"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {p1, v0}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 4
    .parameter "seq"
    .parameter "ipos"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 52
    .local v0, kind:I
    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 55
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/ProcessingInstructionType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 56
    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingInstructionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "*"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
