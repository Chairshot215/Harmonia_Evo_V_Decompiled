.class public Lcom/htc/music/browserlayer/AlbumBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field public static final DIALOG_FOR_LONG_PRESS_UNKNOWN:I = 0x2

.field private static final PLAY_ALL_SORT_ORDER:Ljava/lang/String; = "track"

.field private static final SEARCH:I = 0x17

.field private static final TAG:Ljava/lang/String; = "[AlbumBrowserActivity]"


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field mAsyncUri:Landroid/net/Uri;

.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapterSent:Z

    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numsongs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Dlna(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Local(I)V

    return-void
.end method

.method private dialog_OnClick_Dlna(I)V
    .locals 11

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v10, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I

    move-result-object v9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v9, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "AddToPlaylistData"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v8, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->doSearch()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dialog_OnClick_Local(I)V
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v11, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I

    move-result-object v10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, v10, v12, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v9, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "pickermode"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "AddToPlaylistData"

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v9, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->doSearch()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album = \'<unknown>\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_4

    const/16 v20, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "album LIKE ?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v20, 0x1

    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v2, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT DISTINCT album_id FROM audio_meta WHERE audio_meta.artist_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v1, -0x1

    cmp-long v1, v18, v1

    if-nez v1, :cond_5

    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/16 v16, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    if-eqz v20, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v16

    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v15}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "album COLLATE NOCASE ASC"

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_3

    new-instance v17, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    const/4 v2, 0x1

    aput-object v21, v1, v2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v16, v17

    goto/16 :goto_3
.end method

.method private setTitle()V
    .locals 4

    const v3, 0x7f07001e

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method doSearch()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->closeContextMenu()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->hideEmptyErrorView()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v4, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_1
    if-ne p2, v4, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p0, v0, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    const-string v4, "playlist"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {p0, v0, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_3
    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCountTemplate:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03000d

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->enableSearch()V

    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "artistid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "genreid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v0, "composer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x3

    const/4 v7, 0x2

    const v10, 0x20c01fc

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    :goto_0
    return-object v6

    :pswitch_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x4

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    :goto_1
    invoke-virtual {p0, v0, v5, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    :goto_2
    invoke-virtual {p0, v0, v5, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    :cond_2
    new-array v4, v11, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/htc/music/browserlayer/AlbumBrowserActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "[AlbumBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "albumid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "artistid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "composer"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "genreid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ShowActivityTitle"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "albumid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4

    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick mCurrentAlbumName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "AlbumBrowserActivity not handle mAdapter is NULL when receive newIntent case!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->removeDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3

    const-string v0, "[AlbumBrowserActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(Z)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAllAction(Z)Z
    .locals 14

    const/4 v1, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND title"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != \'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_5

    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v0, " AND album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-static {v8, v12, v0}, Lcom/htc/music/util/MusicUtils;->mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v11

    :cond_3
    if-eqz p1, :cond_9

    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    const-string v0, "external"

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND composer = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method
