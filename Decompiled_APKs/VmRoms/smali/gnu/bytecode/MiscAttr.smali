.class public Lgnu/bytecode/MiscAttr;
.super Lgnu/bytecode/Attribute;
.source "MiscAttr.java"


# instance fields
.field data:[B

.field dataLength:I

.field offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "name"
    .parameter "data"

    .prologue
    .line 27
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .parameter "name"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 21
    iput p3, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 22
    iput p4, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .parameter "dst"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 91
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 92
    invoke-virtual {p0}, Lgnu/bytecode/MiscAttr;->getLength()I

    move-result v2

    .line 93
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_3

    .line 95
    iget-object v3, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v0, v3, v1

    .line 96
    .local v0, b:I
    rem-int/lit8 v3, v1, 0x14

    if-nez v3, :cond_1

    .line 97
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 98
    :cond_1
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 99
    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 100
    and-int/lit8 v3, v0, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    rem-int/lit8 v3, v1, 0x14

    if-eqz v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto :goto_0

    .line 105
    .end local v0           #b:I
    :cond_3
    return-void
.end method

.method protected put1(I)V
    .locals 4
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    if-nez v1, :cond_1

    .line 59
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 66
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 67
    return-void

    .line 60
    :cond_1
    iget v1, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    iget-object v2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 63
    .local v0, tmp:[B
    iget-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    goto :goto_0
.end method

.method protected put2(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 71
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 72
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 73
    return-void
.end method

.method protected put2(II)V
    .locals 3
    .parameter "offset"
    .parameter "val"

    .prologue
    .line 77
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 78
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 79
    return-void
.end method

.method protected u1()I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->u1(I)I

    move-result v0

    return v0
.end method

.method protected u1(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected u2()I
    .locals 2

    .prologue
    .line 51
    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v1}, Lgnu/bytecode/MiscAttr;->u2(I)I

    move-result v0

    .line 52
    .local v0, v:I
    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 53
    return v0
.end method

.method protected u2(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lgnu/bytecode/MiscAttr;->data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
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
    .line 86
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    iget v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 87
    return-void
.end method
