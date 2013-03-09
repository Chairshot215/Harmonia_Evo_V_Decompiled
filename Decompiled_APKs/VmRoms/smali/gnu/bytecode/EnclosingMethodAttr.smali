.class public Lgnu/bytecode/EnclosingMethodAttr;
.super Lgnu/bytecode/Attribute;
.source "EnclosingMethodAttr.java"


# instance fields
.field class_index:I

.field method:Lgnu/bytecode/Method;

.field method_index:I


# direct methods
.method public constructor <init>(IILgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "class_index"
    .parameter "method_index"
    .parameter "ctype"

    .prologue
    .line 21
    invoke-direct {p0, p3}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 22
    iput p1, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 23
    iput p2, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "cl"

    .prologue
    .line 15
    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lgnu/bytecode/EnclosingMethodAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 17
    return-void
.end method

.method public static getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;
    .locals 1
    .parameter "attr"

    .prologue
    .line 30
    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lgnu/bytecode/EnclosingMethodAttr;

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    check-cast p0, Lgnu/bytecode/EnclosingMethodAttr;

    .end local p0
    return-object p0

    .line 28
    .restart local p0
    :cond_1
    iget-object p0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "cl"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 40
    iget-object v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 43
    .local v0, constants:Lgnu/bytecode/ConstantPool;
    iget-object v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/CpoolClass;->getIndex()I

    move-result v1

    iput v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 44
    iget-object v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/CpoolNameAndType;->getIndex()I

    move-result v1

    iput v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    .line 46
    .end local v0           #constants:Lgnu/bytecode/ConstantPool;
    :cond_0
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x4

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .parameter "dst"

    .prologue
    .line 57
    iget-object v2, p0, Lgnu/bytecode/EnclosingMethodAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 58
    .local v2, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    .line 59
    .local v1, constants:Lgnu/bytecode/ConstantPool;
    const-string v3, "Attribute \""

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/EnclosingMethodAttr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 61
    const-string v3, "\", length:"

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lgnu/bytecode/EnclosingMethodAttr;->getLength()I

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 63
    const-string v3, "  class: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    iget v3, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 65
    iget v3, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .line 66
    .local v0, centry:Lgnu/bytecode/CpoolEntry;
    check-cast v0, Lgnu/bytecode/CpoolClass;

    .end local v0           #centry:Lgnu/bytecode/CpoolEntry;
    invoke-virtual {v0}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    const-string v3, ", method: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v3, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 69
    iget v3, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .line 70
    .restart local v0       #centry:Lgnu/bytecode/CpoolEntry;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 71
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 72
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
    .line 51
    iget v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method
