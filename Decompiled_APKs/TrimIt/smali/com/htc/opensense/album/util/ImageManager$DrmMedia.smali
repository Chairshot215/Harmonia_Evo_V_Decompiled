.class public abstract Lcom/htc/opensense/album/util/ImageManager$DrmMedia;
.super Lcom/htc/opensense/album/util/ImageManager$Image;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DrmMedia"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDrmState:I

.field protected mFrameCount:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 3487
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 3488
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;II)V

    .line 3484
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3489
    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    .line 3490
    return-void
.end method


# virtual methods
.method public IsDrmStateBeenChecked()Z
    .locals 2

    .prologue
    .line 3574
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract decryptDrmMedia()Ljava/io/InputStream;
.end method

.method protected abstract decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public abstract forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3505
    const-string v1, ""

    .line 3506
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3507
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 3513
    :goto_0
    return-object v2

    .line 3508
    :cond_0
    monitor-enter v0

    .line 3509
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3510
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3512
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 3513
    goto :goto_0

    .line 3512
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3529
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmState()I
    .locals 3

    .prologue
    .line 3549
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3550
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/opensense/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3552
    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method

.method public getDrmStateWithoutDialog()I
    .locals 3

    .prologue
    .line 3556
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3557
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/opensense/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3559
    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method

.method public abstract getDrmType()I
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 3493
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mFrameCount:I

    return v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3517
    const-string v1, ""

    .line 3518
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3519
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 3525
    :goto_0
    return-object v2

    .line 3520
    :cond_0
    monitor-enter v0

    .line 3521
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3522
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3524
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 3525
    goto :goto_0

    .line 3524
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 3497
    const/4 v0, 0x1

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 3501
    const/4 v0, 0x1

    return v0
.end method

.method public isSharable()Z
    .locals 2

    .prologue
    .line 3534
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 3536
    .local v0, type:I
    const/4 v1, 0x0

    return v1
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public setDrmStateToNonCheck()V
    .locals 2

    .prologue
    .line 3564
    const-string v0, "ImageManager"

    const-string v1, "set drm state to non-checked"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3566
    return-void
.end method

.method public abstract thumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public updateDrmState(Z)I
    .locals 2
    .parameter "withDownloadRightDialog"

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/htc/opensense/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3570
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method
