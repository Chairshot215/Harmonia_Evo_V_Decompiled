.class final Lcom/htc/cscore/util/ModelID$DEVICE;
.super Ljava/lang/Object;
.source "ModelID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/util/ModelID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DEVICE"
.end annotation


# instance fields
.field public DEVICE:S


# direct methods
.method constructor <init>(S)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/htc/cscore/util/ModelID$DEVICE;->DEVICE:S

    iput-short p1, p0, Lcom/htc/cscore/util/ModelID$DEVICE;->DEVICE:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/htc/cscore/util/ModelID$DEVICE;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/cscore/util/ModelID$DEVICE;

    iget-short v1, v0, Lcom/htc/cscore/util/ModelID$DEVICE;->DEVICE:S

    iget-short v2, p0, Lcom/htc/cscore/util/ModelID$DEVICE;->DEVICE:S

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/cscore/util/ModelID$DEVICE;->DEVICE:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
