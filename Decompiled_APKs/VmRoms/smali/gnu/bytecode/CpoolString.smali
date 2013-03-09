.class public Lgnu/bytecode/CpoolString;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolString.java"


# instance fields
.field str:Lgnu/bytecode/CpoolUtf8;


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
    .parameter "str"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    iput-object p3, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    .line 19
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 28
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v0

    const v1, 0xf30f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getString()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    .line 34
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 2
    .parameter "dst"
    .parameter "verbosity"

    .prologue
    .line 45
    if-lez p2, :cond_0

    .line 47
    const-string v0, "String "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 49
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 52
    return-void
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
    .line 39
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    return-void
.end method
