.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    return-void
.end method

.method private dump()V
    .locals 4

    const-string v1, "("

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-nez v1, :cond_2

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "now playing list is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v10

    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    :catch_1
    move-exception v10

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "mService is null!!, will return directly"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-eqz v1, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v11, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v1, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_3

    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, v7}, Lcom/htc/music/NowPlayingViewHelper;->access$3300(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$3700(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    new-array v1, v15, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mPos:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mRowIdColumnIndex:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-super/range {p0 .. p0}, Landroid/database/AbstractCursor;->moveToFirst()Z

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    add-int/lit8 v11, v1, -0x1

    :goto_4
    if-ltz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v17, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_8

    aput v17, v16, v13

    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_9
    if-lez v13, :cond_a

    new-array v12, v13, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v16

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v12}, Lcom/htc/music/IMediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v1

    add-int/2addr v14, v1

    :cond_a
    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v10

    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_1
.end method

.method private moveQueueItem(II)V
    .locals 6

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    if-lt p2, v0, :cond_1

    add-int/lit8 p2, v0, -0x1

    :cond_1
    if-ge p1, p2, :cond_4

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ge p2, p1, :cond_3

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    move v1, p1

    :goto_2
    if-le v1, p2, :cond_5

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveQueueItem(II)V

    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z

    return-void
.end method

.method public onMove(II)Z
    .locals 4

    const/4 v2, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iput p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerContentObserver: Illegal Argument."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move v0, p1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    :goto_1
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v4, 0x1

    return v4
.end method

.method public setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterContentObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
