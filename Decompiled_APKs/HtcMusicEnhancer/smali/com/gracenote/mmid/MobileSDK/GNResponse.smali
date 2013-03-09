.class Lcom/gracenote/mmid/MobileSDK/GNResponse;
.super Ljava/lang/Object;
.source "GNResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;
    }
.end annotation


# instance fields
.field private status:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "inStatus"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->OK:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResponse;->status:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    .line 21
    :goto_0
    return-void

    .line 14
    :cond_0
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->ERROR:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResponse;->status:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "NO_MATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->NO_MATCH:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResponse;->status:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unmatched status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getStatus()Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResponse;->status:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    return-object v0
.end method
