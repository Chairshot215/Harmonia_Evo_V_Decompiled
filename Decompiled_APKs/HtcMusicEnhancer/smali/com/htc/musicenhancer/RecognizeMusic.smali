.class public Lcom/htc/musicenhancer/RecognizeMusic;
.super Ljava/lang/Object;
.source "RecognizeMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;,
        Lcom/htc/musicenhancer/RecognizeMusic$FetchResult;,
        Lcom/htc/musicenhancer/RecognizeMusic$ReRecognizeMusicByText;,
        Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;
    }
.end annotation


# instance fields
.field private final MAX_RECOGNIZING_COUNT:I

.field private final SEARCH_BY_FINGERPRINT:C

.field private final SEARCH_BY_FINGERPRINT_UPDATE_CURRENT:C

.field private final SEARCH_BY_TEXT:C

.field private final TAG:Ljava/lang/String;

.field private levenshteinDistance:I

.field private mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field private mOnCompletedListener:Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;

.field private mRecognizingQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "[RecognizeMusic]"

    iput-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->MAX_RECOGNIZING_COUNT:I

    .line 22
    iput-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 23
    iput-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mOnCompletedListener:Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;

    .line 24
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    .line 26
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->SEARCH_BY_FINGERPRINT:C

    .line 27
    const/4 v0, 0x1

    iput-char v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->SEARCH_BY_TEXT:C

    .line 28
    const/4 v0, 0x2

    iput-char v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->SEARCH_BY_FINGERPRINT_UPDATE_CURRENT:C

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/musicenhancer/RecognizeMusic;ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/RecognizeMusic;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/musicenhancer/RecognizeMusic;->correlateStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/RecognizeMusic;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/RecognizeMusic;)Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    return-object v0
.end method

.method private correlateStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "strA"
    .parameter "strB"

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 368
    :cond_1
    const-string v3, "(\\[.*?\\]|[/].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, strACpy:Ljava/lang/String;
    const-string v3, "(\\[.*?\\]|[/].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, strBCpy:Ljava/lang/String;
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][E|e][S|s][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][E|e][S|s][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][I|i][N|n][G|g][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][I|i][N|n][G|g][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][I|i][N|n][G|g][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v3, "(\\(.*?\\)|[F|f][E|e][A|a][T|t][U|u][R|r][I|i][N|n][G|g][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string v3, "(\\(.*?\\)|[ ][&][ ].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v3, "(\\(.*?\\)|[ ][&][ ].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    const-string v3, "(\\(.*?\\)|[V|v][S|s][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    const-string v3, "(\\(.*?\\)|[V|v][S|s][\\.].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    const-string v3, "(\\(.*?\\)|[P|p][R|r][E|e][S|s][E|e][N|n][T|t][S|s].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v3, "(\\(.*?\\)|[P|p][R|r][E|e][S|s][E|e][N|n][T|t][S|s].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    const-string v3, "(\\(.*?\\)|[A|a][K|k][A|a].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v3, "(\\(.*?\\)|[A|a][K|k][A|a].*|^[ \t]+|[ \t]+$)"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    iget v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->levenshteinDistance:I

    invoke-static {v0, v1, v3}, Lcom/htc/musicenhancer/util/Levenshtein;->areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V
    .locals 3
    .parameter "albumId"
    .parameter "searchResopnse"
    .parameter "state"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/htc/musicenhancer/SearchResult;

    invoke-direct {v0, p2}, Lcom/htc/musicenhancer/SearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 148
    .local v0, searchResult:Lcom/htc/musicenhancer/SearchResult;
    invoke-virtual {v0, p3}, Lcom/htc/musicenhancer/SearchResult;->updateState(I)V

    .line 149
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mOnCompletedListener:Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;

    invoke-interface {v1, p1, v0}, Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;->onCompleted(ILcom/htc/musicenhancer/SearchResult;)V

    .line 150
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 128
    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 130
    .local v0, data:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    .line 133
    .local v2, op:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;
    if-eqz v2, :cond_0

    .line 134
    invoke-static {v2}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancel(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)V

    goto :goto_0

    .line 137
    .end local v2           #op:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;
    :cond_1
    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 139
    .end local v0           #data:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;>;"
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;>;"
    :cond_2
    return-void
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerOnCompletedListener(Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mOnCompletedListener:Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;

    .line 143
    return-void
.end method

.method public start(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 4
    .parameter "downloadAlbumInfo"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    if-nez v1, :cond_1

    .line 40
    const-string v1, "[RecognizeMusic]"

    const-string v2, "mConfig is null"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "[RecognizeMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognize album id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v0

    .line 48
    .local v0, currStatus:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getFingerprintData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/htc/musicenhancer/RecognizeMusic;->startByFingerprint(Lcom/htc/musicenhancer/DownloadAlbumInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/htc/musicenhancer/RecognizeMusic;->startByText(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto :goto_0
.end method

.method public startByFingerprint(Lcom/htc/musicenhancer/DownloadAlbumInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "downloadAlbumInfo"
    .parameter "fingerprintData"

    .prologue
    .line 57
    const-string v3, "[RecognizeMusic]"

    const-string v4, "startByfingerprint"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognize by Fingerprint. Album Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 60
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 61
    new-instance v1, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;-><init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V

    .line 63
    .local v1, recoginzeOp:Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 64
    .local v2, trackCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 65
    .local v0, albumName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 66
    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->setAlbumName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->isUpdateCurrent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->setSearchingMode(C)V

    .line 73
    const-string v3, "[RecognizeMusic]"

    const-string v4, "SEARCH_BY_FINGERPRINT"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-static {v1, v3, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->searchByFingerprint(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V

    .line 80
    return-void

    .line 75
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->setSearchingMode(C)V

    .line 76
    const-string v3, "[RecognizeMusic]"

    const-string v4, "SEARCH_BY_FINGERPRINT_UPDATE_CURRENT"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startByText(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 9
    .parameter "downloadAlbumInfo"

    .prologue
    .line 83
    const-string v6, "[RecognizeMusic]"

    const-string v7, "startByText"

    invoke-static {v6, v7}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recognize by Text. Album Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 86
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 87
    new-instance v3, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v6

    invoke-direct {v3, p0, v6}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;-><init>(Lcom/htc/musicenhancer/RecognizeMusic;I)V

    .line 89
    .local v3, recoginzeOp:Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;
    iget-object v6, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mRecognizingQueue:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 91
    .local v4, trackCursor:Landroid/database/Cursor;
    if-eqz v4, :cond_4

    .line 93
    :try_start_0
    const-string v6, "artist"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, artistName:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    :cond_0
    const/4 v1, 0x0

    .line 100
    :cond_1
    const-string v6, "album"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, albumName:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    :cond_2
    const/4 v0, 0x0

    .line 107
    :cond_3
    const-string v6, "title"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, trackName:Ljava/lang/String;
    const-string v6, "[RecognizeMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Artist = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " album = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " track = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Artist = "

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

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v0}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->setAlbumName(Ljava/lang/String;)V

    .line 114
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/htc/musicenhancer/RecognizeMusic$RecognizeMusicOperation;->setSearchingMode(C)V

    .line 115
    iget-object v6, p0, Lcom/htc/musicenhancer/RecognizeMusic;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-static {v3, v6, v1, v0, v5}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->searchByText(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v5           #trackName:Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "[RecognizeMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException in start ByText : Ex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/musicenhancer/RecognizeMusic;->finished(ILcom/gracenote/mmid/MobileSDK/GNSearchResponse;I)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v2

    .line 120
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "[RecognizeMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in start ByText : Ex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
