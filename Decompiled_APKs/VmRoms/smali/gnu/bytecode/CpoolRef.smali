.class public Lgnu/bytecode/CpoolRef;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolRef.java"


# instance fields
.field clas:Lgnu/bytecode/CpoolClass;

.field nameAndType:Lgnu/bytecode/CpoolNameAndType;

.field tag:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 33
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    iput p1, p0, Lgnu/bytecode/CpoolRef;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;IILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)V
    .locals 0
    .parameter "cpool"
    .parameter "hash"
    .parameter "tag"
    .parameter "clas"
    .parameter "nameAndType"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 39
    iput p3, p0, Lgnu/bytecode/CpoolRef;->tag:I

    .line 40
    iput-object p4, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    .line 41
    iput-object p5, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    .line 42
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I
    .locals 2
    .parameter "clas"
    .parameter "nameAndType"

    .prologue
    .line 46
    invoke-virtual {p0}, Lgnu/bytecode/CpoolClass;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lgnu/bytecode/CpoolNameAndType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getCpoolClass()Lgnu/bytecode/CpoolClass;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    return-object v0
.end method

.method public final getNameAndType()Lgnu/bytecode/CpoolNameAndType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lgnu/bytecode/CpoolRef;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lgnu/bytecode/CpoolRef;->hash:I

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    iget-object v1, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    invoke-static {v0, v1}, Lgnu/bytecode/CpoolRef;->hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolRef;->hash:I

    .line 53
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolRef;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 4
    .parameter "dst"
    .parameter "verbosity"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 66
    iget v1, p0, Lgnu/bytecode/CpoolRef;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 71
    const-string v0, "<Unknown>Ref"

    .line 73
    .local v0, str:Ljava/lang/String;
    :goto_0
    if-lez p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    if-ne p2, v2, :cond_2

    .line 78
    const-string v1, " class: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 84
    :cond_0
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    invoke-virtual {v1, p1, v3}, Lgnu/bytecode/CpoolClass;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 85
    if-ge p2, v2, :cond_3

    .line 86
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 93
    :goto_2
    iget-object v1, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    invoke-virtual {v1, p1, v3}, Lgnu/bytecode/CpoolNameAndType;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 94
    if-ne p2, v2, :cond_1

    .line 95
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 96
    :cond_1
    return-void

    .line 68
    .end local v0           #str:Ljava/lang/String;
    :pswitch_0
    const-string v0, "Field"

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0           #str:Ljava/lang/String;
    :pswitch_1
    const-string v0, "Method"

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0           #str:Ljava/lang/String;
    :pswitch_2
    const-string v0, "InterfaceMethod"

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 89
    :cond_3
    const-string v1, " name_and_type: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 91
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2

    .line 66
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 58
    iget v0, p0, Lgnu/bytecode/CpoolRef;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    iget-object v0, p0, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    iget v0, v0, Lgnu/bytecode/CpoolClass;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    iget v0, v0, Lgnu/bytecode/CpoolNameAndType;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    return-void
.end method
