.class Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;
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
    name = "RecognizeMusicOperation"
.end annotation


# instance fields
.field mAlbumId:I

.field mAlbumName:Ljava/lang/String;

.field mSearchingMode:C

.field final synthetic this$0:Lcom/htc/musicenhancer/RecognizeMusic;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V
    .locals 1
    .parameter
    .parameter "albumId"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mSearchingMode:C

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    .line 163
    iput p2, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    .line 164
    return-void
.end method


# virtual methods
.method public GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 167
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognize result albumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recognize result albumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getErrCode()I

    move-result v0

    .line 172
    .local v0, errorCode:I
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getErrMessage()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, errorMessage:Ljava/lang/String;
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail : Error Code =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "[RecognizeMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail : Error Message =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail : Error Code = + errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isNetworkFailure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    const/4 v4, 0x4

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v5, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    .line 194
    .end local v0           #errorCode:I
    .end local v1           #errorMessage:Ljava/lang/String;
    :goto_0
    return-void

    .line 179
    .restart local v0       #errorCode:I
    .restart local v1       #errorMessage:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isAnyWebservicesFailure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    const/4 v4, 0x3

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v5, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    const/4 v4, 0x5

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v5, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 186
    .end local v0           #errorCode:I
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isAnySearchNoMatchStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    const-string v2, "[RecognizeMusic]"

    const-string v3, "Can\'t find match"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "Fail :Can\'t find match"

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    const/4 v4, 0x1

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v2, v3, v5, v4}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getBestResponse()Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->getBestMatch(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    goto :goto_0
.end method

.method getBestMatch(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 9
    .parameter "bestResponse"

    .prologue
    const/4 v8, 0x0

    .line 205
    const-string v5, "[RecognizeMusic]"

    const-string v6, "get bestResponse"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v5, "Get best response"

    invoke-static {v5}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 208
    iget-char v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mSearchingMode:C

    if-nez v5, :cond_1

    .line 209
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v5, v6, p1, v8}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-char v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mSearchingMode:C

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 211
    const-string v5, "[RecognizeMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "best Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " album name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->correlateStrings(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7}, Lcom/htc/musicenhancer/RecognizeMusic;->access$100(Lcom/htc/musicenhancer/RecognizeMusic;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v5, v6, p1, v8}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v5, "[RecognizeMusic]"

    const-string v6, "bestRespose didn\'t match albumname. re search by text"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "bestRespose didn\'t match albumname. re search by text"

    invoke-static {v5}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, artistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    .line 219
    .local v0, albumName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, trackName:Ljava/lang/String;
    const-string v5, "[RecognizeMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re search by Artist = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " album = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " track = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re search by Artist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " album = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " track = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 226
    new-instance v3, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;

    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-direct {v3, v5, v6}, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;-><init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V

    .line 228
    .local v3, recoginzeOp:Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->setAlbumNameHint(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, p1}, Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;->setPrevBestResponse(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 230
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$200(Lcom/htc/musicenhancer/RecognizeMusic;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    invoke-static {v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$300(Lcom/htc/musicenhancer/RecognizeMusic;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v5

    invoke-static {v3, v5, v1, v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->searchByText(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v3           #recoginzeOp:Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;
    .end local v4           #trackName:Ljava/lang/String;
    :cond_3
    iget-char v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mSearchingMode:C

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    move-result-object v5

    if-nez v5, :cond_4

    .line 237
    new-instance v2, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;

    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-direct {v2, v5, v6}, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;-><init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V

    .line 238
    .local v2, fetchResult:Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;
    invoke-virtual {v2, p1}, Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;->setPrevBestResponse(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 239
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$200(Lcom/htc/musicenhancer/RecognizeMusic;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    #getter for: Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    invoke-static {v5}, Lcom/htc/musicenhancer/RecognizeMusic;->access$300(Lcom/htc/musicenhancer/RecognizeMusic;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->fetchByAlbumId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    .end local v2           #fetchResult:Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;
    :cond_4
    iget-object v5, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->this$0:Lcom/htc/musicenhancer/RecognizeMusic;

    iget v6, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumId:I

    #calls: Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    invoke-static {v5, v6, p1, v8}, Lcom/htc/musicenhancer/RecognizeMusic;->access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto/16 :goto_0
.end method

.method reRecognizeMusicByText()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mAlbumName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method setSearchingMode(C)V
    .locals 0
    .parameter "searchingMode"

    .prologue
    .line 197
    iput-char p1, p0, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->mSearchingMode:C

    .line 198
    return-void
.end method
