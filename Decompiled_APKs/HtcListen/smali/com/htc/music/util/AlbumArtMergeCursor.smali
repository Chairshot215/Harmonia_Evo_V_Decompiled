.class public Lcom/htc/music/util/AlbumArtMergeCursor;
.super Landroid/database/AbstractCursor;
.source "AlbumArtMergeCursor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[AlbumArtMergeCursor]"


# instance fields
.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDlAlbumKeyColumn:I

.field private mDlArtPathColumn:I

.field private mDlColumnCount:I

.field private mDlCursor:Landroid/database/Cursor;

.field private mMdAlbumKeyColumn:I

.field private mMdArtPathColumn:I

.field private mMdColumnCount:I

.field private mMdCursor:Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mSortByAlbum:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    iput-boolean v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    new-instance v4, Lcom/htc/music/util/AlbumArtMergeCursor$1;

    invoke-direct {v4, p0}, Lcom/htc/music/util/AlbumArtMergeCursor$1;-><init>(Lcom/htc/music/util/AlbumArtMergeCursor;)V

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Arguments are null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-object p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_art"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    iput-object p2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-boolean v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v4, :cond_4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v6, "dl_album_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_5

    :goto_1
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    const-string v4, "[AlbumArtMergeCursor]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to init AlbumArtMergeCursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/music/util/AlbumArtMergeCursor;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/util/AlbumArtMergeCursor;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Cursors are null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v4, v5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge v2, v4, :cond_3

    aget-object v4, v3, v2

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    if-ge v2, v4, :cond_1

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/2addr v4, v2

    aget-object v5, v0, v2

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 4

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_1
    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getDouble illegal argument"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getFloat illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getInt illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 4

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_1
    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getLong illegal argument"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getShort illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "Cursors are null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_3

    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "getString illegal argument"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge p1, v3, :cond_8

    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    if-ne p1, v3, :cond_7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_6
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_9

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public isClosed()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "isNull illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v9, :cond_2

    :cond_0
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "Cursors are null"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    if-eq p1, p2, :cond_1

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mOriCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_4

    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_4
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v10, "dl_album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v3, v8, :cond_5

    if-ne v1, v8, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove cannot find column index of album id"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-gez v2, :cond_7

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove album id invalid"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    :goto_1
    if-eq v2, v0, :cond_1

    iget-boolean v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v9, :cond_a

    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_9

    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    :cond_a
    if-ge p1, p2, :cond_d

    :cond_b
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gt v2, v0, :cond_b

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_e
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lt v2, v0, :cond_d

    goto/16 :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 5

    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    :cond_0
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    iget-boolean v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v2, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v4, "dl_album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_3
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_4
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
