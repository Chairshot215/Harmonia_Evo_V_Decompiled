.class public Lcom/htc/musicenhancer/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# static fields
.field public static final STATE_MATCH:I = 0x0

.field public static final STATE_NETWORK_ERROR:I = 0x4

.field public static final STATE_NO_MATCH:I = 0x1

.field public static final STATE_SEARCH_TEXT_ERROR:I = 0x2

.field public static final STATE_UNKNOWN_ERROR:I = 0x5

.field public static final STATE_WEBSERVCIE_ERROR:I = 0x3

.field public static final TAG:Ljava/lang/String; = "[SearchResult]"


# instance fields
.field private mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 2
    .parameter "searchResponse"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 19
    iput v1, p0, Lcom/htc/musicenhancer/SearchResult;->mStatus:I

    .line 22
    iput-object p1, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 23
    invoke-virtual {p0}, Lcom/htc/musicenhancer/SearchResult;->isMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iput v1, p0, Lcom/htc/musicenhancer/SearchResult;->mStatus:I

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/SearchResult;->mStatus:I

    goto :goto_0
.end method


# virtual methods
.method public getAlbumArt()[B
    .locals 3

    .prologue
    .line 34
    const-string v0, "[SearchResult]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumart getCoverArt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/musicenhancer/SearchResult;->isMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "[SearchResult]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumart data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;->getData()[B

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/musicenhancer/SearchResult;->mStatus:I

    return v0
.end method

.method public isMatch()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/musicenhancer/SearchResult;->mSearchResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/musicenhancer/SearchResult;->mStatus:I

    .line 45
    return-void
.end method
