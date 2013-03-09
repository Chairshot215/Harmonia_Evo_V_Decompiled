.class Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;
.super Ljava/lang/Object;
.source "RecognizeMusic.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/RecognizeMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReRecognizeMusicByText"
.end annotation


# instance fields
.field mAlbumId:I

.field mAlbumNameHint:Ljava/lang/String;

.field mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

.field final synthetic this$0:Lcom/htc/musicenhancer/RecognizeMusic;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V
    .locals 0
    .parameter
    .parameter "albumId"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    .line 262
    return-void
.end method


# virtual methods
.method public GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 273
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReRecognizeMusicByText result albumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReRecognizeMusicByText result albumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "[RecognizeMusic]"

    const-string v3, "ReRecognizeMusicByText fail. Use previous result"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "ReRecognizeMusicByText fail. Use previous result"

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    iget-object v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    .line 310
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isAnySearchNoMatchStatus()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-result-object v2

    if-nez v2, :cond_2

    .line 281
    :cond_1
    const-string v2, "[RecognizeMusic]"

    const-string v3, "No Match Status. Use previous result"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "No Match Status. Use previous result"

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    iget-object v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-result-object v0

    .line 287
    .local v0, bestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re search album = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original album  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumNameHint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumNameHint:Ljava/lang/String;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->correlateStrings(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$100(Lcom/htc/musicenhancer/RecognizeMusic;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    const-string v2, "[RecognizeMusic]"

    const-string v3, "use re-search result "

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;

    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    invoke-direct {v1, v2, v3}, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;-><init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V

    .line 294
    .local v1, fetchResult:Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->setPrevBestResponse(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 295
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/musicenhancer/RecognizeMusic;->access$200(Lcom/htc/musicenhancer/RecognizeMusic;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    invoke-static {v2}, Lcom/htc/musicenhancer/RecognizeMusic;->access$300(Lcom/htc/musicenhancer/RecognizeMusic;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->fetchByAlbumId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v1           #fetchResult:Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;
    :cond_3
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumId:I

    iget-object v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto/16 :goto_0
.end method

.method setAlbumNameHint(Ljava/lang/String;)V
    .locals 0
    .parameter "albumNameHint"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mAlbumNameHint:Ljava/lang/String;

    .line 270
    return-void
.end method

.method setPrevBestResponse(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 0
    .parameter "prevBestResponse"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->mPrevBestResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 266
    return-void
.end method
