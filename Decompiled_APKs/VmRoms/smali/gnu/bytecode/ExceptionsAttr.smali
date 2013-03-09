.class public Lgnu/bytecode/ExceptionsAttr;
.super Lgnu/bytecode/Attribute;
.source "ExceptionsAttr.java"


# instance fields
.field exception_table:[S

.field exceptions:[Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 1
    .parameter "meth"

    .prologue
    .line 19
    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lgnu/bytecode/ExceptionsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 21
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 5
    .parameter "cl"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    .line 46
    .local v1, cp:Lgnu/bytecode/ConstantPool;
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v3

    .line 47
    .local v0, count:I
    new-array v3, v0, [S

    iput-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 48
    const/4 v3, 0x1

    sub-int v2, v0, v3

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 50
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    iget-object v4, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    iget v4, v4, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 48
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    goto :goto_0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .parameter "dst"

    .prologue
    .line 79
    const-string v3, "Attribute \""

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 81
    const-string v3, "\", length:"

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getLength()I

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    const-string v3, ", count: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v1, v3

    .line 85
    .local v1, count:I
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 86
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 88
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v3, v3, v2

    const v4, 0xffff

    and-int v0, v3, v4

    .line 89
    .local v0, catch_type_index:I
    const-string v3, "  "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 91
    const/4 v3, 0x7

    invoke-virtual {p1, v0, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0           #catch_type_index:I
    :cond_0
    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "excep_types"

    .prologue
    .line 39
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 40
    return-void
.end method

.method public setExceptions([SLgnu/bytecode/ClassType;)V
    .locals 4
    .parameter "indices"
    .parameter "cl"

    .prologue
    .line 27
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 28
    array-length v2, p1

    new-array v2, v2, [Lgnu/bytecode/ClassType;

    iput-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p2}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 30
    .local v0, cp:Lgnu/bytecode/ConstantPool;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 31
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-short v2, p1, v1

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v2}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    aput-object v2, v3, v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v2

    .line 70
    .local v0, count:I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
