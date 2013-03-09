.class Lcom/android/camera/component/PanoramaController$6$1$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/CameraThread$StorePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/component/PanoramaController$6$1;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$6$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError([BLjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/camera/component/PanoramaController;->access$602(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method public storeImage(Ljava/io/OutputStream;[B)Z
    .locals 28

    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create temp file for original panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "camera_org_panorama"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v21, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No need to rotate panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save image to temp file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v21

    if-ne v0, v2, :cond_5

    const/16 v26, 0x0

    :try_start_1
    new-instance v27, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v27, :cond_0

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create review image"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/camera/component/PanoramaController;->access$5100(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Insert EXIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/media/ExifInterface;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception occurred while saving image"

    invoke-static {v2, v3, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v23, :cond_2

    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v2, 0x1

    return v2

    :pswitch_1
    :try_start_5
    sget-object v21, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Panorama picture needs to be rotated 90 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    :cond_3
    throw v2

    :pswitch_2
    :try_start_6
    sget-object v21, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Panorama picture needs to be rotated 270 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v21, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Panorama picture needs to be rotated 180 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    :goto_5
    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    const/16 v26, 0x0

    :try_start_7
    new-instance v27, Lcom/scalado/stream/FileStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v18, Lcom/scalado/stream/BufferStream;

    new-instance v2, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, v18

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v2, v0}, Lcom/android/camera/component/PanoramaController;->access$4900(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v16

    new-instance v22, Lcom/scalado/caps/Session;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v20, Lcom/scalado/caps/filter/Rotate;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    invoke-virtual/range {v20 .. v21}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v21

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v21

    if-eq v0, v2, :cond_6

    new-instance v17, Lcom/scalado/base/Size;

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    move-object/from16 v16, v17

    :cond_6
    new-instance v11, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v2, 0x3f80

    invoke-virtual {v11, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v19

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v27, :cond_0

    :try_start_9
    invoke-virtual/range {v27 .. v27}, Lcom/scalado/stream/FileStream;->close()V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    :goto_6
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/scalado/stream/FileStream;->close()V

    :cond_7
    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No UI to send review image"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Copy data to target file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v24, 0x0

    :try_start_a
    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v2, 0x1000

    :try_start_b
    new-array v8, v2, [B

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    :goto_7
    if-lez v9, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2, v9}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result v9

    goto :goto_7

    :catchall_3
    move-exception v2

    :goto_8
    if-eqz v24, :cond_a

    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v2

    :cond_b
    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :cond_c
    if-eqz v23, :cond_2

    goto/16 :goto_4

    :catchall_4
    move-exception v2

    move-object/from16 v24, v25

    goto :goto_8

    :catchall_5
    move-exception v2

    move-object/from16 v26, v27

    goto :goto_6

    :catchall_6
    move-exception v2

    move-object/from16 v26, v27

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
