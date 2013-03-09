.class public abstract Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.super Lcom/htc/opensense2/album/util/ImageManager$Image;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DrmMedia"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDrmState:I

.field protected mFrameCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 3745
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 3746
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;II)V

    .line 3742
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3747
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    .line 3748
    return-void
.end method


# virtual methods
.method public IsDrmStateBeenChecked()Z
    .locals 2

    .prologue
    .line 3830
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

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

.method public abstract forceMakeThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3763
    const-string v1, ""

    .line 3764
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3765
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 3771
    :goto_0
    return-object v2

    .line 3766
    :cond_0
    monitor-enter v0

    .line 3767
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3768
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3770
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 3771
    goto :goto_0

    .line 3770
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 3844
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 3837
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3787
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmState()I
    .locals 3

    .prologue
    .line 3805
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3806
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3808
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method

.method public getDrmStateWithoutDialog()I
    .locals 3

    .prologue
    .line 3812
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3813
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3815
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method

.method public abstract getDrmType()I
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 3751
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mFrameCount:I

    return v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3775
    const-string v1, ""

    .line 3776
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3777
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 3783
    :goto_0
    return-object v2

    .line 3778
    :cond_0
    monitor-enter v0

    .line 3779
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3780
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3782
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 3783
    goto :goto_0

    .line 3782
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
    .line 3755
    const/4 v0, 0x1

    return v0
.end method

.method public isDrmStateSuccess()Z
    .locals 1

    .prologue
    .line 3874
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmStateWithoutDialog()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3858
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isGif()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3859
    const/4 v1, 0x0

    .line 3861
    .local v1, frameCount:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3865
    :goto_0
    if-le v1, v2, :cond_0

    .line 3869
    .end local v1           #frameCount:I
    :goto_1
    return v2

    .line 3862
    .restart local v1       #frameCount:I
    :catch_0
    move-exception v0

    .line 3863
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    const-string v4, "out of memory"

    invoke-static {v3, v4, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3869
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #frameCount:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 3759
    const/4 v0, 0x1

    return v0
.end method

.method public isSharable()Z
    .locals 2

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 3793
    .local v0, type:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public setDrmStateToNonCheck()V
    .locals 2

    .prologue
    .line 3820
    const-string v0, "ImageManager"

    const-string v1, "set drm state to non-checked"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3822
    return-void
.end method

.method public abstract thumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public updateDrmState(Z)I
    .locals 2
    .parameter "withDownloadRightDialog"

    .prologue
    .line 3825
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    .line 3826
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mDrmState:I

    return v0
.end method
