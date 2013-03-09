.class public Lgnu/bytecode/SourceFileAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceFileAttr.java"


# instance fields
.field filename:Ljava/lang/String;

.field filename_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/ClassType;)V
    .locals 3
    .parameter "index"
    .parameter "ctype"

    .prologue
    .line 58
    const-string v1, "SourceFile"

    invoke-direct {p0, v1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 61
    .local v0, filenameConstant:Lgnu/bytecode/CpoolUtf8;
    iget-object v1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 62
    iput p1, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 52
    const-string v0, "SourceFile"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static fixSourceFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fname"

    .prologue
    const/16 v4, 0x2f

    .line 26
    const-string v2, "file.separator"

    const-string v3, "/"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, fsep:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 30
    .local v1, fsep0:C
    if-eq v1, v4, :cond_0

    .line 31
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 33
    .end local v1           #fsep0:C
    :cond_0
    return-object p0
.end method

.method public static setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 3
    .parameter "cl"
    .parameter "filename"

    .prologue
    .line 38
    const-string v2, "SourceFile"

    invoke-static {p0, v2}, Lgnu/bytecode/Attribute;->get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 39
    .local v0, attr:Lgnu/bytecode/Attribute;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lgnu/bytecode/SourceFileAttr;

    if-eqz v2, :cond_0

    .line 41
    check-cast v0, Lgnu/bytecode/SourceFileAttr;

    .end local v0           #attr:Lgnu/bytecode/Attribute;
    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 45
    .restart local v0       #attr:Lgnu/bytecode/Attribute;
    :cond_0
    new-instance v1, Lgnu/bytecode/SourceFileAttr;

    invoke-direct {v1, p1}, Lgnu/bytecode/SourceFileAttr;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, sattr:Lgnu/bytecode/SourceFileAttr;
    invoke-virtual {v1, p0}, Lgnu/bytecode/SourceFileAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    goto :goto_0
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "cl"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 69
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 71
    :cond_0
    return-void
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 2
    .parameter "dst"

    .prologue
    const/16 v1, 0x22

    .line 82
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 86
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 88
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 89
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 91
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 20
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 22
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    return-void
.end method
