.class public Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.super Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;
    }
.end annotation


# static fields
.field public static final ACTION_QUERYBROWSER_ACTIVITY:Ljava/lang/String; = "com.htc.music.query_browser_activity"


# instance fields
.field private final RECENT_PLAYLIST_COUNT:I

.field private mCurrentRepeatMode:I

.field private mCurrentShuffleMode:I

.field private mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field private mListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mRecentAlbumInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;

.field private mRecentAlbumMetaDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mRepeatClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;

.field private mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field mShuffleClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;

.field private mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

.field private m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

.field private m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;-><init>()V

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->RECENT_PLAYLIST_COUNT:I

    .line 68
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 69
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 70
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 71
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 75
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentRepeatMode:I

    .line 76
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentShuffleMode:I

    .line 78
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;

    .line 83
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;

    .line 84
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    .line 827
    return-void
.end method

.method static synthetic access$300(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/fusion/fx/controls/FxListItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->startAlbumLibrary(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cycleRepeat()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 1123
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1124
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mMediaPlaybackService == null in cycleRepeat "

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :goto_0
    return-void

    .line 1128
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    .line 1129
    .local v1, mode:I
    if-nez v1, :cond_2

    .line 1130
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1143
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->syncRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    .end local v1           #mode:I
    :catch_0
    move-exception v0

    .line 1145
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cycleRepeat, ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #mode:I
    :cond_2
    if-ne v1, v3, :cond_3

    .line 1133
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1134
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1136
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->syncShuffleButtonImage()V

    goto :goto_1

    .line 1140
    :cond_3
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private goToNoRecentPlaylistPage()V
    .locals 2

    .prologue
    const/high16 v1, 0x4120

    .line 1176
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1182
    :cond_1
    return-void
.end method

.method private goToRecentPlaylistPage()V
    .locals 2

    .prologue
    const/high16 v1, 0x4170

    .line 1167
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1173
    :cond_1
    return-void
.end method

.method private initAllAlbumsList(Lcom/htc/fusion/fx/FxScene;)V
    .locals 5
    .parameter "scene"

    .prologue
    const/4 v4, 0x1

    .line 471
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 472
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v1, :cond_0

    .line 479
    const-string v1, "[MusicWidget3D]"

    const-string v2, "initAllAlbumsList"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "ListViewViewPort"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 481
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v2, 0x0

    invoke-static {v2, v4}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetListItemScenePath(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 489
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 490
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    goto :goto_0

    .line 494
    :cond_3
    const-string v1, "[MusicWidget3D]"

    const-string v2, "initAllAlbumsList, mListView is null."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initForConfigurationChange()V
    .locals 5

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 180
    if-nez v1, :cond_0

    .line 181
    const-string v2, "[MusicWidget3D]"

    const-string v3, "initForConfigurationChange. Scene is null."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initButtonState(Lcom/htc/fusion/fx/FxScene;)V

    .line 193
    iget-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mIsErrorState:Z

    if-nez v2, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToMainPage()V

    .line 195
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToRecentPlaylistPage()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToNoRecentPlaylistPage()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, errorString:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 202
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToNoMusicInfoPage()V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V
    .locals 1
    .parameter "listItem"
    .parameter "enabled"

    .prologue
    .line 818
    if-eqz p1, :cond_0

    .line 819
    invoke-virtual {p1, p2}, Lcom/htc/fusion/fx/controls/FxListItem;->setVisibility(Z)Ljava/util/ArrayList;

    .line 820
    invoke-virtual {p1}, Lcom/htc/fusion/fx/controls/FxListItem;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    .line 821
    .local v0, parent:Lcom/htc/fusion/fx/controls/FxButton;
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 825
    .end local v0           #parent:Lcom/htc/fusion/fx/controls/FxButton;
    :cond_0
    return-void
.end method

.method private startAlbumLibrary(I)V
    .locals 7
    .parameter "albumId"

    .prologue
    const/high16 v6, 0x1000

    .line 835
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 836
    .local v1, i:Landroid/content/Intent;
    const-string v4, "com.htc.music.query_browser_activity"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v4, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 840
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 842
    .local v0, apList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 843
    const-string v4, "[MusicWidget3D]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apList == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 852
    :goto_0
    return-void

    .line 846
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/albumtrack"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string v4, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 850
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private toggleShuffle()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1095
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1096
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mMediaPlaybackService == null in toggleShuffle "

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :goto_0
    return-void

    .line 1101
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    .line 1102
    .local v1, shuffle:I
    if-nez v1, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1104
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1106
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->syncRepeatButtonImage()V

    .line 1116
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->syncShuffleButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    .end local v1           #shuffle:I
    :catch_0
    move-exception v0

    .line 1118
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleShuffle, ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #shuffle:I
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_4

    .line 1111
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1

    .line 1114
    :cond_4
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid shuffle mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method decodeBitmap(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x7f02

    const/16 v4, 0x64

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_2

    .line 903
    const-string v2, "[MusicWidget3D]"

    const-string v3, "decodeBitmap path == null"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    :goto_0
    if-nez v0, :cond_0

    .line 916
    const-string v2, "[MusicWidget3D]"

    const-string v3, "decodeBitmap is null"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 923
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 925
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v4, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 926
    .local v1, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 927
    const/4 v0, 0x0

    .line 928
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 931
    .end local v1           #resizeBitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 912
    :cond_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method disableAllRecentAlbums()V
    .locals 4

    .prologue
    .line 937
    const-string v2, "[MusicWidget3D]"

    const-string v3, "disableAllRecentAlbums start"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 940
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 944
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 945
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget-object v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 948
    .end local v1           #i:I
    :cond_2
    const-string v2, "[MusicWidget3D]"

    const-string v3, "disableAllRecentAlbums end"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doConfigurationChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Scene is null."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 222
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initForConfigurationChange()V

    .line 225
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 231
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initAllAlbumsList(Lcom/htc/fusion/fx/FxScene;)V

    .line 234
    iput-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mIsNoMusic:Z

    .line 235
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurAlbumID:I

    .line 237
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onConfigurationChange, Service is connected, update music info."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 244
    :cond_3
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onConfigurationChange(), Service is not connected, bind it."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method doRefreshRecentAlbums()V
    .locals 3

    .prologue
    .line 806
    const-string v1, "[MusicWidget3D]"

    const-string v2, "doRefreshRecentAlbums"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->needUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->updateRecentAlbumMetaData(I)V

    .line 811
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    return-void
.end method

.method protected doUpdateRecentAlbums()V
    .locals 10

    .prologue
    .line 677
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 678
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    const-string v7, "[MusicWidget3D]"

    const-string v8, "updateRecentAlbums"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v7, :cond_2

    .line 684
    const-string v7, "[MusicWidget3D]"

    const-string v8, "updateRecentAlbums error"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_2
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v7, :cond_3

    .line 689
    const-string v7, "[MusicWidget3D]"

    const-string v8, "mListView is null. It may be landscape mode"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->isWidgetVisible()Z

    move-result v7

    if-nez v7, :cond_4

    .line 694
    const-string v7, "[MusicWidget3D]"

    const-string v8, "widget is invisible don\'t upadte recent albums"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 700
    const-string v7, "[MusicWidget3D]"

    const-string v8, "updateRecentAlbums, isPluginMode"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToNoRecentPlaylistPage()V

    .line 702
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->disableAllRecentAlbums()V

    .line 703
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 704
    const-string v7, "[MusicWidget3D]"

    const-string v8, "isPluginMode. clear  mRecentAlbumInfos"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught exception in updateRecentAlbums. Ex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v3

    .line 710
    .local v3, recentAlbumId:[I
    if-nez v3, :cond_6

    .line 711
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToNoRecentPlaylistPage()V

    .line 712
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->disableAllRecentAlbums()V

    .line 713
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 714
    const-string v7, "[MusicWidget3D]"

    const-string v8, "Recent album id is null. clear mRecentAlbumInfos"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 718
    :cond_6
    array-length v7, v3

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 719
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_1
    array-length v7, v3

    if-lt v2, v7, :cond_7

    .line 720
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v8, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xxx remove xxx album id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 719
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 726
    .end local v2           #i:I
    :cond_7
    const/4 v5, 0x0

    .line 728
    .local v5, recentAlbumListChanged:Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v7, v3

    if-ge v2, v7, :cond_a

    .line 729
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_9

    .line 730
    new-instance v4, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-direct {v4, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    .line 731
    .local v4, recentAlbumInfo:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;
    aget v7, v3, v2

    invoke-virtual {v4, v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->setRecentAlbum(I)Z

    .line 732
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    const/4 v5, 0x1

    .line 728
    .end local v4           #recentAlbumInfo:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 735
    :cond_9
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->setRecentAlbum(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 736
    const/4 v5, 0x1

    goto :goto_3

    .line 741
    :cond_a
    const/4 v6, 0x0

    .line 742
    .local v6, recentAlbumartPath:[Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 743
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7, v3}, Lcom/htc/music/IMediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v6

    .line 745
    :cond_b
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 746
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToRecentPlaylistPage()V

    .line 750
    :goto_4
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->removeUnusedRecentAlbumMetaData()V

    .line 753
    const/4 v2, 0x0

    :goto_5
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_e

    .line 754
    if-eqz v6, :cond_c

    array-length v7, v6

    if-le v7, v2, :cond_c

    .line 755
    const-string v8, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " album id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->setRecentAlbumPath(Ljava/lang/String;)V

    .line 753
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 748
    :cond_d
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->goToNoRecentPlaylistPage()V

    goto :goto_4

    .line 760
    :cond_e
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v7, :cond_10

    .line 761
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 762
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 763
    const-string v7, "[MusicWidget3D]"

    const-string v8, "remove WORKER_MSG_REFRESH_RECENT_ALBUM"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_f
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 772
    :goto_6
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_7
    const/16 v7, 0x8

    if-ge v2, v7, :cond_0

    .line 773
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 774
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget-object v7, v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    .line 772
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 769
    :cond_10
    const-string v7, "[MusicWidget3D]"

    const-string v8, "mWorker is null in doUpdateRecentAlbums."

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 776
    :cond_11
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRecentAlbumItems.get(i) is null i = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method enableAllRecentAlbums()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 952
    const-string v2, "[MusicWidget3D]"

    const-string v3, "enableAllRecentAlbums start"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 955
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v4, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 959
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 960
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mAttachAlbumId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 961
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget-object v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-direct {p0, v2, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    .line 959
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    .end local v1           #i:I
    :cond_3
    const-string v2, "[MusicWidget3D]"

    const-string v3, "enableAllRecentAlbums end"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getDefaultAlbumArt()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getLandScapeScenePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProtraitScenePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected goToMainPage()V
    .locals 0

    .prologue
    .line 1160
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToMainPage()V

    .line 1161
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->enableAllRecentAlbums()V

    .line 1164
    return-void
.end method

.method protected goToNoMusicInfoPage()V
    .locals 0

    .prologue
    .line 1155
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToNoMusicInfoPage()V

    .line 1156
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->disableAllRecentAlbums()V

    .line 1157
    return-void
.end method

.method protected handleUiHandlerMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleUiHandlerMessage(Landroid/os/Message;)Z

    move-result v0

    .line 88
    .local v0, isHandle:Z
    if-eqz v0, :cond_0

    move v1, v0

    .line 101
    .end local v0           #isHandle:Z
    .local v1, isHandle:Z
    :goto_0
    return v1

    .line 91
    .end local v1           #isHandle:Z
    .restart local v0       #isHandle:Z
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 101
    .end local v0           #isHandle:Z
    .restart local v1       #isHandle:Z
    goto :goto_0

    .line 93
    .end local v1           #isHandle:Z
    .restart local v0       #isHandle:Z
    :pswitch_0
    const-string v3, "[MusicWidget3D]"

    const-string v4, "Receovied UI_MSG_UPDATE_RECENT_ALBUM"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 95
    .local v2, pos:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mListCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 97
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected handleWorkerMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleWorkerMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 108
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->doUpdateRecentAlbums()V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->doRefreshRecentAlbums()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Scene is null"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initMainPage(Lcom/htc/fusion/fx/FxScene;)V

    .line 263
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initCommonResource()V

    .line 264
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initWorkerHandler()V

    .line 269
    invoke-direct {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initAllAlbumsList(Lcom/htc/fusion/fx/FxScene;)V

    .line 270
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mIsNoMusic:Z

    .line 272
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurAlbumID:I

    goto :goto_0
.end method

.method protected initButtons(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 453
    const-string v0, "[MusicWidget3D]"

    const-string v1, "initButtons"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 457
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNextClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 460
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 461
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPrevClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 464
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 465
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPlayPauseClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 466
    return-void
.end method

.method protected initControls(Lcom/htc/fusion/fx/FxScene;)V
    .locals 4
    .parameter "scene"

    .prologue
    const/4 v3, 0x2

    .line 279
    sget-object v1, Lcom/htc/MusicWidget3D/Constants;->widget4x4ItemIdentifier:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 281
    .local v0, sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    if-nez v0, :cond_1

    .line 282
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Cannot find children in 4x4 initControls"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    array-length v1, v0

    sget-object v2, Lcom/htc/MusicWidget3D/Constants;->widget4x4ItemIdentifier:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 287
    const-string v1, "[MusicWidget3D]"

    const-string v2, "The count of sceneChildren is diffrenet from widget4x4ItemIdentifier"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 292
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 293
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 294
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 295
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 296
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 297
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 298
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 299
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 300
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 301
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 302
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 303
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 304
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 305
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 306
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 307
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 308
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 309
    const/16 v1, 0x12

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 310
    const/16 v1, 0x13

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 311
    const/16 v1, 0x14

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mPluginIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 312
    const/16 v1, 0x15

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 313
    const/16 v1, 0x16

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 314
    const/16 v1, 0x17

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 315
    const/16 v1, 0x18

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 316
    const/16 v1, 0x19

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 317
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 318
    const/16 v1, 0x1b

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 319
    const/16 v1, 0x1c

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Playlist:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 320
    const/16 v1, 0x1d

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 321
    const/16 v1, 0x1e

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 323
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setTouchOpacity(I)V

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setTouchOpacity(I)V

    .line 332
    :cond_4
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initMarqueeControls()V

    .line 333
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->initTiltFrame()V

    .line 335
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTextRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mNoRecentAlbums:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected initHitbox(Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "scene"

    .prologue
    const/4 v2, 0x1

    .line 402
    const-string v0, "[MusicWidget3D]"

    const-string v1, "initHitbox"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 407
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 408
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWidgetClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 411
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 412
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 413
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mShuffleClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ShuffleClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 416
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 417
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 418
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRepeatClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RepeatClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 420
    return-void
.end method

.method protected initMarqueeControls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 349
    const-string v0, "[MusicWidget3D]"

    const-string v1, "initMarqueeControls"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "timeline.titlemarquee2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 355
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 357
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 358
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mSecMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 360
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mSecMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "timeline.titlemarquee2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 372
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 374
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mSecMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 376
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 377
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mSecMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setFadeout(IF)V

    .line 389
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "saved"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onCreate(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onDestroy()V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onPause()V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onResume()V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onStart()V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onStop()V

    .line 148
    return-void
.end method

.method protected playback()V
    .locals 3

    .prologue
    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 974
    const-string v1, "[MusicWidget3D]"

    const-string v2, "playback, mMediaPlaybackService is null!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    const-string v1, "[MusicWidget3D]"

    const-string v2, "4x4, playback, mMediaPlaybackService is Dmc or PushMode!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 983
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 984
    const-string v1, "[MusicWidget3D]"

    const-string v2, "[ATS][com.htc.MusicWidget][press_pause][successful]"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 986
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 988
    :cond_2
    const-string v1, "[MusicWidget3D]"

    const-string v2, "[ATS][com.htc.MusicWidget][press_play][successful]"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 991
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 993
    :cond_3
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->queueNextRefresh(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method queryAlbumName(I)Ljava/lang/String;
    .locals 10
    .parameter "albumId"

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, where:Ljava/lang/String;
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "albumId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v7, 0x0

    .line 858
    .local v7, albumName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 860
    .local v6, albumCursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 863
    .local v2, album_cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/MusicWidget3D/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 867
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 870
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 871
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore album name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor count "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 876
    :cond_0
    const-string v7, "<unknown>"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 888
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 893
    :goto_1
    const/4 v6, 0x0

    .line 897
    .end local v2           #album_cols:[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v7

    .line 880
    .restart local v2       #album_cols:[Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v7, "<unknown>"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 890
    :catch_0
    move-exception v8

    .line 891
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAlbumName, e:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 883
    .end local v2           #album_cols:[Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 884
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch restoreLocalRecentPlaylist exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 886
    if-eqz v6, :cond_2

    .line 888
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 893
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 890
    :catch_2
    move-exception v8

    .line 891
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAlbumName, e:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 886
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 888
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 893
    :goto_4
    const/4 v6, 0x0

    :cond_4
    throw v0

    .line 890
    :catch_3
    move-exception v8

    .line 891
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v1, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryAlbumName, e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method refreshRecentAlbum(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 7
    .parameter "pos"
    .parameter "listItem"

    .prologue
    const/4 v6, 0x1

    .line 537
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 538
    const-string v3, "[MusicWidget3D]"

    const-string v4, "pos should smaller than mRecentAlbumInfos.size()"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh item index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->setUpdate(Z)V

    .line 544
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;

    .line 546
    .local v1, albumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    const-string v4, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh album id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-nez v1, :cond_1

    .line 548
    const-string v4, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recent album meta data is null. Album id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    monitor-exit p0

    goto/16 :goto_0

    .line 569
    .end local v1           #albumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 552
    .restart local v1       #albumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    :cond_1
    :try_start_1
    const-string v3, "textlabel.reader_label"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 554
    .local v2, albumName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_2

    .line 555
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh albumName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v3, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 560
    :goto_1
    const-string v3, "dynamicimage.reader_pages"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 562
    .local v0, albumCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v0, :cond_3

    .line 563
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v3, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-virtual {p2, v6}, Lcom/htc/fusion/fx/controls/FxListItem;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 558
    .end local v0           #albumCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_2
    :try_start_2
    const-string v3, "[MusicWidget3D]"

    const-string v4, "albumName is null"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 566
    .restart local v0       #albumCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_3
    const-string v3, "[MusicWidget3D]"

    const-string v4, "albumCover is null"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method removeUnusedRecentAlbumMetaData()V
    .locals 9

    .prologue
    .line 786
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 787
    .local v1, albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 788
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 789
    .local v5, removeAlbumId:I
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 790
    const/4 v2, 0x0

    .line 791
    .local v2, exist:Z
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 792
    .local v0, albumId:Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 793
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    invoke-virtual {v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v6

    if-ne v7, v6, :cond_2

    .line 794
    const/4 v2, 0x1

    .line 798
    :cond_1
    if-nez v2, :cond_0

    .line 799
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 792
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 801
    .end local v0           #albumId:Ljava/lang/Integer;
    .end local v2           #exist:Z
    .end local v3           #i:I
    :cond_3
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove albumId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    return-void
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 2
    .parameter "trackName"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 393
    const-string v0, "[MusicWidget3D]"

    const-string v1, "mMediaPlaybackService is null setTrackname "

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected syncRepeatButtonImage()V
    .locals 5

    .prologue
    .line 1038
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1039
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mMediaPlaybackService == null in syncRepeatButtonImage "

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :goto_0
    return-void

    .line 1044
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    .line 1046
    .local v1, repeatMdoe:I
    iget v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentRepeatMode:I

    if-ne v2, v1, :cond_1

    .line 1047
    const-string v2, "[MusicWidget3D]"

    const-string v3, "syncRepeatButtonImage, repeat mode doesn\'t change. No need to play marker and just set frame. => return"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    packed-switch v1, :pswitch_data_0

    .line 1062
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v3, 0x19

    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local v1           #repeatMdoe:I
    :catch_0
    move-exception v0

    .line 1089
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRepeatButtonImage, ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #repeatMdoe:I
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_0

    .line 1057
    :pswitch_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_0

    .line 1069
    :cond_1
    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentRepeatMode:I

    .line 1070
    packed-switch v1, :pswitch_data_1

    .line 1083
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "repeat_off"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :pswitch_2
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "repeat_1"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    :pswitch_3
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Repeat:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "repeat_2"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1049
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1070
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected syncShuffleButtonImage()V
    .locals 5

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1002
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mMediaPlaybackService == null in syncShuffleButtonImage "

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :goto_0
    return-void

    .line 1007
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    .line 1009
    .local v1, shuffleMode:I
    iget v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentShuffleMode:I

    if-ne v2, v1, :cond_2

    .line 1010
    const-string v2, "[MusicWidget3D]"

    const-string v3, "syncShuffleButtonImage, shuffle mode doesn\'t change. No need to play marker and just set frame. => return"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    if-nez v1, :cond_1

    .line 1014
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1032
    .end local v1           #shuffleMode:I
    :catch_0
    move-exception v0

    .line 1033
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncShuffleButtonImage, ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #shuffleMode:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_0

    .line 1022
    :cond_2
    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mCurrentShuffleMode:I

    .line 1023
    if-nez v1, :cond_3

    .line 1024
    const-string v2, "[MusicWidget3D]"

    const-string v3, "syncShuffleButtonImage, PlayMarker(shuffle_off)"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "shuffle_off"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_3
    const-string v2, "[MusicWidget3D]"

    const-string v3, "syncShuffleButtonImage, PlayMarker(shuffle_on)"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->m_tl_Shuffle:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "shuffle_on"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method updateRecentAlbumMetaData(I)V
    .locals 10
    .parameter "pos"

    .prologue
    .line 574
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 575
    const-string v7, "[MusicWidget3D]"

    const-string v8, "pos should smaller than mRecentAlbumInfos.size()"

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRecentAlbumMetaData item index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    .line 580
    .local v4, recentAlbumInfo:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;
    invoke-virtual {v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumId()I

    move-result v3

    .line 581
    .local v3, recentAlbumId:I
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 582
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;

    .line 583
    .local v2, currAlbumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecentAlbumMetaData alread exist. Album ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    if-eqz v2, :cond_4

    .line 585
    iget-object v7, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumPath:Ljava/lang/String;

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 587
    :cond_2
    iget-object v7, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 591
    :cond_3
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path is different. need updateRecentAlbumMetaData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v2           #currAlbumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    :cond_4
    invoke-virtual {v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->getRecentAlbumPath()Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, recentAlbumartPath:Ljava/lang/String;
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecentAlbumMetaData recentAlbumartPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->queryAlbumName(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, albumName:Ljava/lang/String;
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecentAlbumMetaData albumName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 601
    .local v0, albumArt:Landroid/graphics/drawable/Drawable;
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBitmap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v5, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V

    .line 603
    .local v5, recentAlbumMetaData:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
    iput-object v1, v5, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumName:Ljava/lang/String;

    .line 604
    iput-object v0, v5, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    .line 605
    iput-object v6, v5, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->mAlbumPath:Ljava/lang/String;

    .line 606
    monitor-enter p0

    .line 607
    :try_start_0
    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumMetaDatas:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    const-string v7, "[MusicWidget3D]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end updateRecentAlbumMetaData recentAlbumId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
