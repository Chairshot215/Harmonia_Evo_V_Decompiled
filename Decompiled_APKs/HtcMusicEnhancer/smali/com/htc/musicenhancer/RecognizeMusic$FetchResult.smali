.class Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;
.super Ljava/lang/Object;
.source "RecognizeMusic.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/RecognizeMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResult"
.end annotation


# instance fields
.field mAlbumId:I

.field mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

.field final synthetic this$0:Lcom/htc/musicenhancer/RecognizeMusic;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V
    .locals 0
    .parameter
    .parameter "albumId"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p2, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mAlbumId:I

    .line 319
    return-void
.end method


# virtual methods
.method public GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "[RecognizeMusic]"

    const-string v2, "ReRecognizeMusicByText fail. Use previous result"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "ReRecognizeMusicByText fail. Use previous result"

    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mAlbumId:I

    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    .line 346
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isAnySearchNoMatchStatus()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-result-object v1

    if-nez v1, :cond_2

    .line 333
    :cond_1
    const-string v1, "[RecognizeMusic]"

    const-string v2, "No Match Status. Use previous result"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "No Match Status. Use previous result"

    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mAlbumId:I

    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-result-object v0

    .line 339
    .local v0, bestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    const-string v1, "[RecognizeMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch result cover art = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v1

    if-nez v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mAlbumId:I

    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mAlbumId:I

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v1, v2, v0, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0
.end method

.method setPrevBestResponse(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 0
    .parameter "prevBestResponse"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 323
    return-void
.end method
