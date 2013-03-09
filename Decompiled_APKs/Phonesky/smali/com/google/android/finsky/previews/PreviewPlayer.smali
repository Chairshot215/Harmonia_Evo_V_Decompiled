.class public Lcom/google/android/finsky/previews/PreviewPlayer;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

.field private mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private final mJsonListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

.field private final mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/previews/StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$1;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    .line 114
    new-instance v0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    .line 118
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    .line 120
    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 122
    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 124
    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 126
    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    .line 359
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$2;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 368
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$3;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mJsonListener:Lcom/android/volley/Response$Listener;

    .line 392
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$4;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 400
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$5;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 408
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$6;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/previews/PreviewPlayer;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyError()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/previews/PreviewPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/StatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/finsky/previews/PreviewPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/previews/PreviewPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    move-result v0

    return v0
.end method

.method private isCurrentTrack(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Z
    .locals 2
    .parameter "song"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyError()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 321
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    .line 322
    return-void
.end method

.method private notifyQueueChanged()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/StatusListener;->queueChanged(I)V

    .line 246
    return-void
.end method

.method private playNextTrack()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 254
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->updateAudioFocus()V

    .line 257
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->resetWhileStayingAwake()V

    .line 260
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iput-object v4, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 262
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 269
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->cancel()V

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    iput-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 276
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    .line 278
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, previewUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mJsonListener:Lcom/android/volley/Response$Listener;

    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v1}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;)V

    .line 284
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 286
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->unrolling()V

    .line 287
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    .line 292
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    .line 293
    .local v5, uri:Ljava/net/URI;
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 294
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 295
    .local v2, pair:Lorg/apache/http/NameValuePair;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 296
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pair:Lorg/apache/http/NameValuePair;
    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 297
    .restart local v2       #pair:Lorg/apache/http/NameValuePair;
    const-string v6, "mode"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    :cond_0
    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_1
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "mode"

    const-string v8, "streaming"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, query:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 311
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 301
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #query:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateAudioFocus()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 233
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 234
    .local v0, queueIsEmpty:Z
    if-nez v0, :cond_1

    iget v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    if-eq v1, v4, :cond_1

    .line 235
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 237
    iput v4, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    if-eq v1, v3, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 240
    iput v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    goto :goto_0
.end method


# virtual methods
.method public addStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .parameter "statusListener"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 187
    return-void
.end method

.method public getCurrentQueueSize()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTrack()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 221
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 226
    return-void
.end method

.method public notifyListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .parameter "statusListener"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    :pswitch_0
    return-void

    .line 339
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    goto :goto_0

    .line 345
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    goto :goto_0

    .line 348
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    goto :goto_0

    .line 351
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    goto :goto_0

    .line 354
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public play(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V
    .locals 1
    .parameter "track"

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    .line 156
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    .line 157
    return-void
.end method

.method public play(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, tracks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 137
    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 139
    .local v0, child:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    .line 140
    .local v1, details:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    if-eqz v1, :cond_0

    .line 141
    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v0           #child:Lcom/google/android/finsky/api/model/Document;
    .end local v1           #details:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    .line 146
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    .line 147
    return-void
.end method

.method public removeStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .parameter "statusListener"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->reset()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 205
    return-void
.end method

.method public skip()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    .line 182
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->stop()V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public togglePlayback(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V
    .locals 2
    .parameter "song"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->cancel()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    .line 166
    .local v0, state:I
    invoke-direct {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->isCurrentTrack(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->play(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    goto :goto_0
.end method
