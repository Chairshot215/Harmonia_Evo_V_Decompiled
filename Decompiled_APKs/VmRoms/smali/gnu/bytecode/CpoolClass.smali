.class public Lgnu/bytecode/CpoolClass;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolClass.java"


# instance fields
.field clas:Lgnu/bytecode/ObjectType;

.field name:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V
    .locals 0
    .parameter "cpool"
    .parameter "hash"
    .parameter "n"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    iput-object p3, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    .line 19
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v0

    xor-int/lit16 v0, v0, 0xf0f

    return v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassType()Lgnu/bytecode/ObjectType;
    .locals 5

    .prologue
    .line 42
    iget-object v1, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 43
    .local v1, otype:Lgnu/bytecode/ObjectType;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 51
    .end local v1           #otype:Lgnu/bytecode/ObjectType;
    .local v2, otype:Lgnu/bytecode/ObjectType;
    :goto_0
    return-object v2

    .line 45
    .end local v2           #otype:Lgnu/bytecode/ObjectType;
    .restart local v1       #otype:Lgnu/bytecode/ObjectType;
    :cond_0
    iget-object v3, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 46
    .local v0, name:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    .line 47
    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .end local v1           #otype:Lgnu/bytecode/ObjectType;
    check-cast v1, Lgnu/bytecode/ObjectType;

    .line 50
    .restart local v1       #otype:Lgnu/bytecode/ObjectType;
    :goto_1
    iput-object v1, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    move-object v2, v1

    .line 51
    .end local v1           #otype:Lgnu/bytecode/ObjectType;
    .restart local v2       #otype:Lgnu/bytecode/ObjectType;
    goto :goto_0

    .line 49
    .end local v2           #otype:Lgnu/bytecode/ObjectType;
    .restart local v1       #otype:Lgnu/bytecode/ObjectType;
    :cond_1
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_1
.end method

.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public final getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    .line 63
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 5
    .parameter "dst"
    .parameter "verbosity"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    if-ne p2, v3, :cond_1

    .line 75
    const-string v2, "Class "

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    iget-object v2, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 82
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 83
    .local v0, nlen:I
    if-le v0, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    .line 84
    invoke-static {v1, v4, v0, p1}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 87
    :goto_1
    return-void

    .line 76
    .end local v0           #nlen:I
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    if-le p2, v3, :cond_0

    .line 78
    const-string v2, "Class name: "

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0

    .line 86
    .restart local v0       #nlen:I
    .restart local v1       #str:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    return-void
.end method
