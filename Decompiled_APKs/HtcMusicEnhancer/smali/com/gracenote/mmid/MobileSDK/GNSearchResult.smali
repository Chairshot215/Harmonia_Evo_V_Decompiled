.class public Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
.super Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
.source "GNSearchResult.java"


# instance fields
.field private responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 1
    .parameter "inConfig"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 14
    return-void
.end method

.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V
    .locals 0
    .parameter "inResult"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getResponses()[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    goto :goto_0
.end method

.method setResponses([Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->responses:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 22
    return-void
.end method
