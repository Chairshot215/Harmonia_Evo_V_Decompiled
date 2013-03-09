.class public Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
.super Ljava/lang/Object;
.source "GNCoverArt.java"


# instance fields
.field private data:[B

.field private mimeType:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 4
    .parameter "inSize"
    .parameter "inData"
    .parameter "inMimeType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "size"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->size:Ljava/lang/String;

    .line 16
    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "data"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->data:[B

    .line 18
    if-eqz p3, :cond_2

    :goto_2
    const-string v0, "mimeType"

    invoke-static {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 19
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->mimeType:Ljava/lang/String;

    .line 20
    return-void

    :cond_0
    move v0, v2

    .line 14
    goto :goto_0

    :cond_1
    move v0, v2

    .line 16
    goto :goto_1

    :cond_2
    move v1, v2

    .line 18
    goto :goto_2
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->data:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->size:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coverArt => size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
