.class public Lcom/android/camera/component/ReviewAnimationController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "ReviewAnimationController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ReviewAnimation Controller"


# instance fields
.field private m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;

.field private m_ThumbnailImagePath:Ljava/lang/String;

.field private m_ThumbnailImageTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "ReviewAnimation Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ReviewAnimationController;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ReviewAnimationController;->sendReviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createThumbnailImage()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "createThumbnailImage  start"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v23, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown storage type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v23, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

    invoke-virtual {v2}, Lcom/android/camera/component/ReviewAnimation;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const-string v5, "_data LIKE ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/DCFRuler;->getDCFRootDirectoryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "datetaken ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "datetaken"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v2

    const/4 v2, 0x1

    const-string v5, "_data"

    aput-object v5, v6, v2

    const/4 v2, 0x2

    const-string v5, "datetaken"

    aput-object v5, v6, v2

    const/4 v2, 0x3

    const-string v5, "mime_type"

    aput-object v5, v6, v2

    const-string v7, "_data LIKE ?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/DCFRuler;->getDefaultDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/%"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v9, "datetaken ASC"

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-lez v2, :cond_2

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v2, "datetaken"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    :cond_2
    :goto_3
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    const/16 v20, 0x0

    if-eqz v14, :cond_9

    if-eqz v17, :cond_8

    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    :goto_4
    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The latest media file is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImagePath:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImageTime:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail image for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has already been created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/component/ReviewAnimationController;->sendReviewImage(Landroid/graphics/Bitmap;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "createThumbnailImage() - end"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v23, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while querying image file"

    invoke-static {v2, v4, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v14, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while querying image file"

    invoke-static {v2, v4, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :catch_2
    move-exception v13

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while querying video file"

    invoke-static {v2, v4, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v17, 0x0

    goto/16 :goto_3

    :catch_3
    move-exception v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while querying video file"

    invoke-static {v2, v4, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v17, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    move-object/from16 v21, v17

    move-object/from16 v22, v18

    goto/16 :goto_4

    :cond_8
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    goto/16 :goto_4

    :cond_9
    if-eqz v17, :cond_a

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    goto/16 :goto_4

    :cond_a
    const/16 v21, 0x0

    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_b
    :try_start_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    invoke-static {v14, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v20

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImagePath:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImageTime:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while creating thumbnail image"

    invoke-static {v2, v4, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v21, 0x0

    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v20, 0x0

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImagePath:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImageTime:Ljava/lang/String;

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x1

    :try_start_8
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "No media path retrieved, no thumbnail image created"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImagePath:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ThumbnailImageTime:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final isSupported()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    return v0
.end method

.method private onMediaSaved()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ReviewAnimationController;->createThumbnailImage()V

    return-void
.end method

.method private sendReviewImage(Landroid/graphics/Bitmap;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

    if-eqz v2, :cond_0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ReviewAnimationController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v2, 0x42b4

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/ReviewAnimationController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v21, 0x5a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/ReviewAnimationController;->m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/camera/component/ReviewAnimationController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimationController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "ReviewAnimation.PostviewCreated"

    new-instance v3, Lcom/android/camera/component/ReviewAnimationController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ReviewAnimationController$1;-><init>(Lcom/android/camera/component/ReviewAnimationController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/ReviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationController;->m_ReviewAnimationUI:Lcom/android/camera/component/ReviewAnimation;

    return-void
.end method
