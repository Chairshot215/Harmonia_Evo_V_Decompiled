.class public Lgnu/bytecode/LineNumbersAttr;
.super Lgnu/bytecode/Attribute;
.source "LineNumbersAttr.java"


# instance fields
.field linenumber_count:I

.field linenumber_table:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 24
    const-string v0, "LineNumberTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lgnu/bytecode/LineNumbersAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 27
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "numbers"
    .parameter "code"

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 32
    iput-object p1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 33
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 34
    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    return v0
.end method

.method public getLineNumberTable()[S
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4
    .parameter "dst"

    .prologue
    const v3, 0xffff

    .line 73
    const-string v1, "Attribute \""

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v1, "\", length:"

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 77
    const-string v1, ", count: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    if-ge v0, v1, :cond_0

    .line 81
    const-string v1, "  line: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    const-string v1, " at pc: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    mul-int/lit8 v2, v0, 0x2

    aget-short v1, v1, v2

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public put(II)V
    .locals 4
    .parameter "linenumber"
    .parameter "PC"

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    if-nez v1, :cond_1

    .line 42
    const/16 v1, 0x20

    new-array v1, v1, [S

    iput-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 50
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    iget v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v2, 0x2

    int-to-short v3, p2

    aput-short v3, v1, v2

    .line 51
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    iget v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 52
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 53
    return-void

    .line 43
    :cond_1
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 45
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 46
    .local v0, new_linenumbers:[S
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    iget v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    goto :goto_0
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
    .line 63
    iget v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    iget v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v2, 0x2

    .line 65
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
