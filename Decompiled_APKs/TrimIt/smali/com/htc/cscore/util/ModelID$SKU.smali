.class final Lcom/htc/cscore/util/ModelID$SKU;
.super Ljava/lang/Object;
.source "ModelID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/util/ModelID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SKU"
.end annotation


# instance fields
.field public DEVICE:S

.field public LANGUAGE:S

.field public PROJECT:S


# direct methods
.method constructor <init>(SSS)V
    .locals 1
    .parameter "DEV"
    .parameter "PRJ"
    .parameter "LANG"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-short v0, p0, Lcom/htc/cscore/util/ModelID$SKU;->DEVICE:S

    .line 16
    iput-short v0, p0, Lcom/htc/cscore/util/ModelID$SKU;->PROJECT:S

    .line 17
    iput-short v0, p0, Lcom/htc/cscore/util/ModelID$SKU;->LANGUAGE:S

    .line 20
    iput-short p1, p0, Lcom/htc/cscore/util/ModelID$SKU;->DEVICE:S

    .line 21
    iput-short p2, p0, Lcom/htc/cscore/util/ModelID$SKU;->PROJECT:S

    .line 22
    iput-short p3, p0, Lcom/htc/cscore/util/ModelID$SKU;->LANGUAGE:S

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 27
    instance-of v1, p1, Lcom/htc/cscore/util/ModelID$SKU;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/htc/cscore/util/ModelID$SKU;

    .line 29
    .local v0, sku:Lcom/htc/cscore/util/ModelID$SKU;
    iget-short v1, v0, Lcom/htc/cscore/util/ModelID$SKU;->DEVICE:S

    iget-short v2, p0, Lcom/htc/cscore/util/ModelID$SKU;->DEVICE:S

    if-ne v1, v2, :cond_0

    iget-short v1, v0, Lcom/htc/cscore/util/ModelID$SKU;->PROJECT:S

    iget-short v2, p0, Lcom/htc/cscore/util/ModelID$SKU;->PROJECT:S

    if-ne v1, v2, :cond_0

    iget-short v1, v0, Lcom/htc/cscore/util/ModelID$SKU;->LANGUAGE:S

    iget-short v2, p0, Lcom/htc/cscore/util/ModelID$SKU;->LANGUAGE:S

    if-ne v1, v2, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 36
    .end local v0           #sku:Lcom/htc/cscore/util/ModelID$SKU;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/cscore/util/ModelID$SKU;->DEVICE:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/cscore/util/ModelID$SKU;->PROJECT:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/cscore/util/ModelID$SKU;->LANGUAGE:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
