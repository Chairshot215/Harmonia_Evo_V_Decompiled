.class final Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorIntPair"
.end annotation


# instance fields
.field private final descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final number:I


# direct methods
.method constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;I)V
    .locals 0
    .parameter "descriptor"
    .parameter "number"

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 245
    iput p2, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    .line 246
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 254
    instance-of v2, p1, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 257
    check-cast v0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;

    .line 258
    .local v0, other:Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;
    iget-object v2, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v3, v0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    iget v3, v0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
