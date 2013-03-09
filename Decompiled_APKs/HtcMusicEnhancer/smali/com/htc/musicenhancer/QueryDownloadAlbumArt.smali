.class public Lcom/htc/musicenhancer/QueryDownloadAlbumArt;
.super Ljava/lang/Object;
.source "QueryDownloadAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;,
        Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FAIL_COUNT:I = 0x1

.field private static final MINIMUM_ALBUMART_HEIGHT:I = 0x1c2

.field private static final MINIMUM_ALBUMART_WIDTH:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "[QueryDownloadAlbumArt]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadAlbumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/musicenhancer/DownloadAlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFailCount:I

.field private mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

.field private mQueryThread:Ljava/lang/Thread;

.field mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "contex"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    .line 25
    iput-object v2, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    .line 27
    iput-object v2, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    .line 29
    iput-boolean v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mStop:Z

    .line 30
    iput v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I

    .line 33
    iput-object p1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->doQueryDownloadAlbumArt(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->extractAlbumInfoFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->doQueryDownloadAlbumArtTrack()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->completeQuery()V

    return-void
.end method

.method private addDownloadAlbumArtInfo(ILjava/lang/String;)V
    .locals 2
    .parameter "albumId"
    .parameter "albumKey"

    .prologue
    .line 299
    new-instance v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-direct {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;-><init>()V

    .line 300
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v0, p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumId(I)V

    .line 301
    invoke-virtual {v0, p2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumKey(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method private checkIfDownloadedBefore(ILjava/lang/String;)Z
    .locals 13
    .parameter "albumId"
    .parameter "albumKey"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 198
    const-string v1, "[QueryDownloadAlbumArt]"

    const-string v4, "resolver == null in checkIfDownloadedBefore"

    invoke-static {v1, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v10, 0x0

    .line 260
    :cond_0
    :goto_0
    return v10

    .line 202
    :cond_1
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "dl_is_failed"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "dl_album_key"

    aput-object v4, v2, v1

    .line 209
    .local v2, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 211
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 213
    .local v10, isDownloadBefore:Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 216
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 217
    const-string v1, "dl_album_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 221
    .local v12, queryAlbumKey:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    :cond_2
    const/4 v10, 0x0

    .line 224
    :cond_3
    const-string v1, "dl_is_failed"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 226
    .local v11, isFail:I
    const/4 v1, 0x1

    if-lt v11, v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    iget v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v10, 0x1

    .line 254
    .end local v11           #isFail:I
    .end local v12           #queryAlbumKey:Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v8, :cond_0

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 256
    const/4 v8, 0x0

    goto :goto_0

    .line 232
    .restart local v11       #isFail:I
    .restart local v12       #queryAlbumKey:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v1, "dl_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, albumArtPath:Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 235
    const/4 v10, 0x1

    goto :goto_1

    .line 237
    :cond_6
    const-string v1, "dl_data_backup"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, backupAlbumArtPath:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lez v1, :cond_4

    .line 240
    const/4 v10, 0x1

    goto :goto_1

    .line 246
    .end local v6           #albumArtPath:Ljava/lang/String;
    .end local v7           #backupAlbumArtPath:Ljava/lang/String;
    .end local v11           #isFail:I
    .end local v12           #queryAlbumKey:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 250
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 251
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "[QueryDownloadAlbumArt]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception in checkIfDownloadedBefore. EX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    if-eqz v8, :cond_8

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 256
    const/4 v8, 0x0

    .line 260
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 254
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 256
    const/4 v8, 0x0

    .line 254
    :cond_9
    throw v1
.end method

.method private completeQuery()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mStop:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/musicenhancer/DownloadAlbumInfo;

    iget v2, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I

    invoke-interface {v1, v0, v2}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;->onCompleted([Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    .line 311
    return-void
.end method

.method private doQueryDownloadAlbumArt(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "where"

    .prologue
    const/4 v7, 0x0

    .line 120
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "[EnhancerService]"

    const-string v1, "mDownloadAlbumInfo == null "

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-object v7

    .line 125
    :cond_0
    const/4 v7, 0x0

    .line 127
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v3, v0

    .line 132
    .local v3, cols:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "album_key"

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 135
    .end local v3           #cols:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 136
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception in doQueryDownloadAlbumArt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doQueryDownloadAlbumArtTrack()V
    .locals 11

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v10, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "title"

    aput-object v1, v3, v0

    .line 278
    .local v3, album_cols:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 279
    .local v9, trackCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 280
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 285
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-virtual {v0, v9}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setTrackCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 289
    .end local v3           #album_cols:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #trackCursor:Landroid/database/Cursor;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 290
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception in doQueryDownloadAlbumArt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private extractAlbumInfoFromCursor(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    const/16 v9, 0x1c2

    const/4 v8, 0x1

    .line 145
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, albumPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, albumKey:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 151
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 153
    .local v0, albumId:I
    const-string v7, "album_art"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v7, "album_key"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v5, 0x0

    .line 161
    .local v5, needToDownloadAlbumArt:Z
    if-nez v2, :cond_2

    .line 162
    const/4 v5, 0x1

    .line 180
    :cond_0
    :goto_1
    if-ne v5, v8, :cond_1

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->checkIfDownloadedBefore(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->addDownloadAlbumArtInfo(ILjava/lang/String;)V

    .line 186
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_2
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 167
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 168
    invoke-static {v2, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 169
    sget-boolean v7, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-eqz v6, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #albumId:I
    .end local v1           #albumKey:Ljava/lang/String;
    .end local v2           #albumPath:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #needToDownloadAlbumArt:Z
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 190
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "[QueryDownloadAlbumArt]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught extractAlbumInfoFromCursor ex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    return-void

    .line 170
    .restart local v0       #albumId:I
    .restart local v1       #albumKey:Ljava/lang/String;
    .restart local v2       #albumPath:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #needToDownloadAlbumArt:Z
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-eqz v6, :cond_0

    .line 171
    :try_start_1
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v7, v9, :cond_5

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v7, v9, :cond_0

    .line 173
    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 114
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 107
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 108
    goto :goto_0

    .line 109
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 110
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[QueryDownloadAlbumArt]"

    const-string v2, "error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 111
    goto :goto_0

    .line 112
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 113
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[QueryDownloadAlbumArt]"

    const-string v2, "error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mStop:Z

    .line 93
    :cond_0
    return-void
.end method

.method public queryAlbumId(II)I
    .locals 13
    .parameter "albumId"
    .parameter "audioId"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, where:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->doQueryDownloadAlbumArt(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 49
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v8, 0x0

    .line 51
    .local v8, albumPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, albumKey:Ljava/lang/String;
    const-string v0, "album_art"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    const-string v0, "album_key"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "title"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "_id"

    aput-object v1, v3, v0

    .line 65
    .local v3, album_cols:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 66
    .local v12, trackCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 68
    new-instance v10, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-direct {v10}, Lcom/htc/musicenhancer/DownloadAlbumInfo;-><init>()V

    .line 69
    .local v10, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v10, p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumId(I)V

    .line 70
    invoke-virtual {v10, v7}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumKey(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v10, v12}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setTrackCursor(Landroid/database/Cursor;)V

    .line 72
    invoke-virtual {v10, p2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setSearchingAudioId(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

    invoke-interface {v0, v10}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;->onCompleted(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 83
    .end local v3           #album_cols:[Ljava/lang/String;
    .end local v7           #albumKey:Ljava/lang/String;
    .end local v8           #albumPath:Ljava/lang/String;
    .end local v10           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    .end local v12           #trackCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 77
    :cond_1
    const-string v0, "[QueryDownloadAlbumArt]"

    const-string v1, "Cursor error in queryAlbumId"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v11

    .line 80
    .local v11, ex:Ljava/lang/Exception;
    const-string v0, "[QueryDownloadAlbumArt]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception in queryAlbumId. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerOnCompletedListener(Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mOnCompletedListener:Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;

    .line 97
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mStop:Z

    .line 39
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mDownloadAlbumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;

    invoke-direct {v1, p0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;-><init>(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    .line 41
    iget-object v0, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    :cond_0
    return-void
.end method

.method public startQueryCurrentAlbum(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 88
    return-void
.end method
