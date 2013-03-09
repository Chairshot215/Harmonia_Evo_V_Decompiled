.class final Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SaveImageContentsCancelable"
.end annotation


# instance fields
.field mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2948
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    iget-object v0, p1, Lcom/htc/opensense2/album/util/ImageManager$Image;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    .line 2946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    .line 2949
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 2952
    monitor-enter p0

    .line 2953
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    .line 2954
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 2955
    :cond_0
    monitor-exit p0

    .line 2956
    const/4 v0, 0x1

    return v0

    .line 2955
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2962
    const/4 v4, 0x0

    .line 2964
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2965
    .local v3, thumbData:[B
    const/4 v8, 0x7

    :try_start_0
    new-array v2, v8, [J

    .line 2966
    .local v2, t:[J
    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v2, v8

    .line 2968
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v8, v8, Lcom/htc/opensense2/album/util/ImageManager$Image;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-wide v9, v9, Lcom/htc/opensense2/album/util/ImageManager$Image;->mId:J

    invoke-virtual {v8, v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 2969
    .local v5, uri:Landroid/net/Uri;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 2971
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    invoke-virtual {v8, v9, v10, v5}, Lcom/htc/opensense2/album/util/ImageManager$Image;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    .line 2972
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2974
    :try_start_2
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->get()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 3077
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return v6

    .line 2972
    .restart local v2       #t:[J
    .restart local v5       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3073
    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 3074
    .local v0, ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :try_start_5
    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got canceled... need to cleanup, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3077
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto :goto_0

    .line 2977
    .end local v0           #ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    .restart local v2       #t:[J
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v8, 0x1

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v2, v8

    .line 2981
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2982
    :try_start_7
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2983
    :try_start_8
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2984
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2985
    .local v1, filePath:Ljava/lang/String;
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3010
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3019
    :try_start_a
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 3021
    const/4 v8, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v2, v8

    .line 3066
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v8, v8, Lcom/htc/opensense2/album/util/ImageManager$Image;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v5}, Lcom/htc/opensense2/album/util/ImageManager;->forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3068
    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v2, v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_0

    .line 3077
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    move v6, v7

    goto :goto_0

    .line 2985
    .end local v1           #filePath:Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v7

    .line 3010
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_d .. :try_end_d} :catch_0

    .line 3077
    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    throw v6
.end method
