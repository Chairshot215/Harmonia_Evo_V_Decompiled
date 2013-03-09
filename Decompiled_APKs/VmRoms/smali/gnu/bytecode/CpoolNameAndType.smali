.class public Lgnu/bytecode/CpoolNameAndType;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolNameAndType.java"


# instance fields
.field name:Lgnu/bytecode/CpoolUtf8;

.field type:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V
    .locals 0
    .parameter "cpool"
    .parameter "hash"
    .parameter "n"
    .parameter "t"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 20
    iput-object p3, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 21
    iput-object p4, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    .line 22
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I
    .locals 2
    .parameter "name"
    .parameter "type"

    .prologue
    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xc

    return v0
.end method

.method public final getType()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0, v1}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    .line 45
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 2
    .parameter "dst"
    .parameter "verbosity"

    .prologue
    const/4 v1, 0x1

    .line 57
    if-ne p2, v1, :cond_1

    .line 58
    const-string v0, "NameAndType "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printName(Ljava/lang/String;)V

    .line 65
    if-gt p2, v1, :cond_2

    .line 66
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 72
    :goto_1
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    .line 73
    return-void

    .line 59
    :cond_1
    if-le p2, v1, :cond_0

    .line 61
    const-string v0, "NameAndType name: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, ", signature: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

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
    .line 50
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method
