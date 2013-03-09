.class public Lgnu/bytecode/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field protected name:Ljava/lang/String;

.field name_index:I

.field signature_index:I

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final setName(ILgnu/bytecode/ConstantPool;)V
    .locals 2
    .parameter "name_index"
    .parameter "constants"

    .prologue
    .line 26
    if-gtz p1, :cond_0

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    .line 34
    :goto_0
    iput p1, p0, Lgnu/bytecode/Location;->name_index:I

    .line 35
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 32
    .local v0, nameConstant:Lgnu/bytecode/CpoolUtf8;
    iget-object v1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v1, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSignature(ILgnu/bytecode/ConstantPool;)V
    .locals 2
    .parameter "signature_index"
    .parameter "constants"

    .prologue
    .line 51
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 53
    .local v0, sigConstant:Lgnu/bytecode/CpoolUtf8;
    iput p1, p0, Lgnu/bytecode/Location;->signature_index:I

    .line 54
    iget-object v1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    .line 55
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 44
    iput-object p1, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    .line 45
    return-void
.end method
