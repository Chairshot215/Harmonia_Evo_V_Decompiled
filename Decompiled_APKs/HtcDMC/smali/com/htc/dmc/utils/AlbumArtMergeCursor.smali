.class public Lcom/htc/dmc/utils/AlbumArtMergeCursor;
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
    .parameter "mediaCursor"
    .parameter "albumArtCursor"
    .parameter "sortByAlbum"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 25
    iput-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    .line 28
    iput-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    .line 31
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    .line 34
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    .line 37
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdArtPathColumn:I

    .line 40
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlArtPathColumn:I

    .line 43
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    .line 46
    iput v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    .line 49
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 52
    iput-boolean v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mSortByAlbum:Z

    .line 54
    new-instance v4, Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;

    invoke-direct {v4, p0}, Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;-><init>(Lcom/htc/dmc/utils/AlbumArtMergeCursor;)V

    iput-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 77
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 78
    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Arguments are null"

    invoke-static {v4, v5}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    .local v1, millis:J
    iput-object p1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    .line 84
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    .line 85
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_art"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdArtPathColumn:I

    .line 86
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    .line 88
    iput-object p2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    .line 89
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    .line 90
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlArtPathColumn:I

    .line 91
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    .line 93
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    iget-boolean v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v4, :cond_4

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, position:I
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v6, "dl_album_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 102
    .local v0, albumId:I
    if-gez v0, :cond_5

    .line 108
    :goto_1
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    .end local v0           #albumId:I
    :cond_3
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    .end local v3           #position:I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 114
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

    invoke-static {v4, v5}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .restart local v0       #albumId:I
    .restart local v3       #position:I
    :cond_5
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/dmc/utils/AlbumArtMergeCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/dmc/utils/AlbumArtMergeCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 419
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 444
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 445
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2

    .line 217
    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Cursors are null"

    invoke-static {v4, v5}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    .line 233
    :cond_1
    return-object v1

    .line 221
    :cond_2
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, mediaColumnNames:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, albumArtColumnNames:[Ljava/lang/String;
    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v5, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v4, v5

    new-array v1, v4, [Ljava/lang/String;

    .line 225
    .local v1, columnNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge v2, v4, :cond_3

    .line 226
    aget-object v4, v3, v2

    aput-object v4, v1, v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    if-ge v2, v4, :cond_1

    .line 230
    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/2addr v4, v2

    aget-object v5, v0, v2

    aput-object v5, v1, v4

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 4
    .parameter "column"

    .prologue
    const-wide/16 v0, 0x0

    .line 369
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 370
    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-wide v0

    .line 374
    :cond_1
    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 375
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getDouble illegal argument"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    .line 381
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    .line 384
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 347
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 348
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return v0

    .line 352
    :cond_1
    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 353
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getFloat illegal argument"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    .line 359
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    .line 362
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 303
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return v0

    .line 308
    :cond_1
    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 309
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getInt illegal argument"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 315
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 318
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "column"

    .prologue
    const-wide/16 v0, 0x0

    .line 325
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 326
    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-wide v0

    .line 330
    :cond_1
    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 331
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getLong illegal argument"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 337
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 340
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 281
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return v0

    .line 286
    :cond_1
    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 287
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getShort illegal argument"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    .line 293
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    .line 296
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 239
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 240
    :cond_0
    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "Cursors are null"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_0
    return-object v1

    .line 244
    :cond_2
    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_3

    .line 245
    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "getString illegal argument"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_3
    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge p1, v3, :cond_8

    .line 249
    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdArtPathColumn:I

    if-ne p1, v3, :cond_7

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, downloadPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    const-string v1, ""

    .line 257
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 258
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 255
    :cond_4
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlArtPathColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 260
    :cond_5
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, oriAlbumKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, dlAlbumKey:Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    :cond_6
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 269
    .end local v0           #dlAlbumKey:Ljava/lang/String;
    .end local v1           #downloadPath:Ljava/lang/String;
    .end local v2           #oriAlbumKey:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_8
    iget v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_9

    .line 272
    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 423
    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 424
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_1
    :goto_0
    return v0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x1

    .line 391
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 392
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return v0

    .line 396
    :cond_1
    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 397
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "isNull illegal argument"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_2
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    .line 403
    :cond_3
    iget v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 404
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    .line 406
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 11
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 129
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v9, :cond_2

    .line 130
    :cond_0
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "Cursors are null"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 210
    :cond_1
    :goto_0
    return v6

    .line 134
    :cond_2
    if-eq p1, p2, :cond_1

    .line 139
    const/4 v5, 0x0

    .line 140
    .local v5, result:Z
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    .line 141
    if-nez v5, :cond_3

    .line 142
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 143
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mOriCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, oriIdIndex:I
    if-ne v3, v8, :cond_4

    .line 149
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 151
    :cond_4
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v10, "dl_album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, dlIdIndex:I
    if-eq v3, v8, :cond_5

    if-ne v1, v8, :cond_6

    .line 154
    :cond_5
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 155
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove cannot find column index of album id"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 157
    goto :goto_0

    .line 160
    :cond_6
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 161
    .local v2, mediaAlbumId:I
    if-gez v2, :cond_7

    .line 162
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 164
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove album id invalid"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 165
    goto :goto_0

    .line 168
    :cond_7
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    .line 170
    .local v0, albumArtAlbumId:I
    :goto_1
    if-eq v2, v0, :cond_1

    .line 174
    iget-boolean v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v9, :cond_a

    .line 175
    iget-object v7, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 176
    .local v4, position:Ljava/lang/Integer;
    if-nez v4, :cond_9

    .line 178
    iget-object v7, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 168
    .end local v0           #albumArtAlbumId:I
    .end local v4           #position:Ljava/lang/Integer;
    :cond_8
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    .line 183
    .restart local v0       #albumArtAlbumId:I
    .restart local v4       #position:Ljava/lang/Integer;
    :cond_9
    iget-object v7, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 185
    .end local v4           #position:Ljava/lang/Integer;
    :cond_a
    if-ge p1, p2, :cond_d

    .line 187
    :cond_b
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 188
    if-nez v5, :cond_c

    .line 189
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 190
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 192
    goto/16 :goto_0

    .line 194
    :cond_c
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 195
    if-gt v2, v0, :cond_b

    goto/16 :goto_0

    .line 198
    :cond_d
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    .line 199
    if-nez v5, :cond_e

    .line 200
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    iget-object v6, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 202
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_e
    iget-object v9, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 206
    if-lt v2, v0, :cond_d

    goto/16 :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 487
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 506
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 450
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery +"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 458
    :cond_1
    iget-boolean v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v2, :cond_4

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 462
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v4, "dl_album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 465
    .local v0, albumId:I
    if-gez v0, :cond_5

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    .end local v0           #albumId:I
    :cond_3
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 475
    .end local v1           #position:I
    :cond_4
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery -"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x1

    return v2

    .line 468
    .restart local v0       #albumId:I
    .restart local v1       #position:I
    :cond_5
    iget-object v2, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 496
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 516
    :cond_1
    return-void
.end method
