.class public Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
.super Ljava/lang/Object;
.source "RlzProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol$PingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RLZ"
.end annotation


# instance fields
.field private final accessPoint:Ljava/lang/String;

.field private final rlzString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ap"
    .parameter "rs"

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access point and RLZ cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->accessPoint:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->rlzString:Ljava/lang/String;

    .line 437
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 453
    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    instance-of v2, p1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 459
    check-cast v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    .line 460
    .local v0, other:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->accessPoint:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->accessPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->rlzString:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->rlzString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAccessPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->accessPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->accessPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->rlzString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRlzString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->rlzString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
