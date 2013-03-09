.class Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;
.super Landroid/database/AbstractCursor;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mNowPlaying:[I

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    iput-object p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->makeNowPlayingCursor()V

    return-void
.end method

.method private dump()V
    .locals 4

    const-string v1, "("

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

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
    .locals 13

    const/4 v4, 0x0

    const/4 v12, -0x1

    iput-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    aput v0, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    if-nez v0, :cond_2

    iput v12, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-eqz v0, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-ge v8, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v0, v0, v8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_3

    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$200(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v0, v10, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_7

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v8

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iput v12, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurPos:I

    goto/16 :goto_1
.end method


# virtual methods
.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$400(Lcom/htc/music/browserlayer/EditPlaylistActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 4

    const/4 v2, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v1, v3, p2

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iput p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurPos:I

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->makeNowPlayingCursor()V

    const/4 v0, 0x1

    return v0
.end method
