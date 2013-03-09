.class public Lcom/htc/opensense/album/util/ImageManager$SingleImageList;
.super Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;,
        Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;
    }
.end annotation


# instance fields
.field INDEX_ID:I

.field private SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

.field private mChildContext:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDrm:Z

.field private mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

.field private mUri:Landroid/net/Uri;

.field private mbShareAndDelete:Z

.field private mbViewSingleImage:Z

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 6969
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v2

    move-object v7, v2

    .line 6970
    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5548
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 5549
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    .line 6971
    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;

    .line 6972
    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 6973
    iput-boolean v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    .line 6974
    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 6978
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6979
    iput-boolean v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    .line 6984
    :cond_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6985
    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6986
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    .line 6987
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 6990
    :cond_3
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v0, :cond_4

    .line 7000
    :goto_0
    return-void

    .line 6995
    :cond_4
    if-eqz p4, :cond_5

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v0, :cond_5

    .line 6996
    new-instance v2, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;

    const-wide/16 v4, 0x0

    move-object v3, p0

    move-object v6, p3

    move-object v7, p0

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V

    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    goto :goto_0

    .line 6998
    :cond_5
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V
    .locals 10
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "uriAbsoluteFilePath"
    .parameter "bShareAndDelete"

    .prologue
    .line 7004
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 7005
    if-eqz p8, :cond_1

    move-object v3, p2

    :goto_0
    if-eqz p8, :cond_2

    move-object v5, p4

    :goto_1
    if-eqz p8, :cond_3

    move/from16 v6, p6

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5548
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 5549
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    .line 7007
    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 7008
    if-eqz p8, :cond_4

    .end local p7
    :goto_3
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 7009
    new-instance v1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)V

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 7011
    if-nez p8, :cond_5

    .line 7026
    :cond_0
    return-void

    .line 7005
    .restart local p7
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v5, p7

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 p7, p4

    .line 7008
    goto :goto_3

    .line 7014
    .end local p7
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    .line 7015
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    .line 7017
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7019
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    .line 7020
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 7022
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create image cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7023
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5534
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    return v0
.end method

.method private makeInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .parameter "uri"

    .prologue
    .line 7259
    const/4 v1, 0x0

    .line 7261
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 7265
    :goto_0
    return-object v2

    .line 7263
    :catch_0
    move-exception v0

    .line 7264
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Got exception during openInputStream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7265
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7061
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v1, :cond_0

    .line 7062
    const/4 v1, 0x0

    .line 7065
    :goto_0
    return-object v1

    .line 7064
    :cond_0
    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, " ASC"

    .line 7065
    .local v0, ascending:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7064
    .end local v0           #ascending:Ljava/lang/String;
    :cond_1
    const-string v0, " DESC"

    goto :goto_1
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 7108
    return-void
.end method

.method public bridge synthetic checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5534
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5534
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    return-void
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 7116
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 7117
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 7118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    .line 7120
    :cond_0
    return-void
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 5534
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->commitChanges()V

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 7029
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7039
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 7111
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->closeCursor()V

    .line 7112
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 7124
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    if-eqz v1, :cond_1

    .line 7126
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 7127
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 7128
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 7138
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 7130
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7134
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 7135
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .line 7138
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 7142
    if-nez p1, :cond_0

    .line 7143
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 7145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 7160
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7161
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 7163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 7150
    if-nez p1, :cond_0

    .line 7151
    const/4 v0, 0x0

    .line 7156
    :goto_0
    return-object v0

    .line 7153
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7154
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    goto :goto_0

    .line 7156
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageWithId(J)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "id"

    .prologue
    .line 7168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5567
    const-string v0, "SingleImageList"

    return-object v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 7254
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 7198
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 7244
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 7249
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 7178
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 7188
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 7233
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 7193
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 7203
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 7208
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 7183
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 7213
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 7173
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 7218
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 7223
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 7238
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 7228
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic isFavoriteList()Z
    .locals 1

    .prologue
    .line 5534
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v0

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 7271
    const/4 v0, 0x0

    .line 7274
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    .line 7275
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v2

    .line 7276
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7278
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 7279
    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7280
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7282
    invoke-static {p4, p1}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7283
    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v4, v6, :cond_1

    .line 7284
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7285
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7287
    :cond_2
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7291
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 7296
    :goto_0
    return-object v3

    .line 7292
    :catch_0
    move-exception v1

    .line 7293
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got io exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 7305
    const/4 v0, 0x0

    return v0
.end method

.method public removeFavoriteImageAt(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 7310
    return-void
.end method

.method public removeFavoriteImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 7314
    return-void
.end method

.method public bridge synthetic removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5534
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)V
    .locals 8
    .parameter "i"

    .prologue
    .line 7069
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 7070
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 7099
    :goto_0
    return-void

    .line 7073
    :cond_0
    monitor-enter v0

    .line 7079
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 7086
    .local v3, moved:Z
    if-eqz v3, :cond_2

    .line 7088
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v2

    .line 7089
    .local v2, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    .line 7090
    monitor-exit v0

    goto :goto_0

    .line 7098
    .end local v2           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v3           #moved:Z
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 7081
    :catch_0
    move-exception v1

    .line 7083
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7084
    monitor-exit v0

    goto :goto_0

    .line 7092
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .restart local v3       #moved:Z
    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 7093
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7094
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 7095
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->requery()V

    .line 7098
    .end local v2           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v4           #u:Landroid/net/Uri;
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic removeImages([I[I[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 5534
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeImages([I[I[I[I)V

    return-void
.end method

.method public bridge synthetic removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5534
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    return-void
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5534
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V

    return-void
.end method

.method public bridge synthetic setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5534
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    return-void
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 7299
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->requery()V

    .line 7300
    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7046
    const-string v0, "(_data=?)"

    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7050
    iget-boolean v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v3, :cond_0

    .line 7051
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "exist"

    aput-object v3, v2, v4

    .line 7057
    :goto_0
    return-object v2

    .line 7053
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7054
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/String;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7055
    .local v0, sPattern:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7056
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 7057
    .local v2, stringArgs:[Ljava/lang/String;
    goto :goto_0
.end method
