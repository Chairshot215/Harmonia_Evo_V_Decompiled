.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;
.super Ljava/lang/Thread;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailThread"
.end annotation


# instance fields
.field private newSize:Lcom/scalado/base/Size;

.field private stopFlag:Z

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter
    .parameter "size"

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->stopFlag:Z

    .line 1373
    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->newSize:Lcom/scalado/base/Size;

    .line 1374
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1385
    .local v0, beginTime:J
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1387
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RenderThumbnailAllPreset: mHandler is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    const/4 v6, 0x0

    .line 1391
    .local v6, inStream:Lcom/scalado/stream/FileStream;
    const/4 v10, 0x0

    .line 1392
    .local v10, session:Lcom/scalado/caps/Session;
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v11

    if-nez v11, :cond_8

    .line 1393
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v11

    if-nez v11, :cond_4

    .line 1394
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1395
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Create FileStream"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_2
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/stream/FileStream;

    move-result-object v6

    .line 1398
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1399
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Initial Error"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1402
    :cond_3
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v10

    .line 1403
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1404
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Initial Error"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1408
    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1409
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Reuse Image, set mRotate to null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_5
    new-instance v3, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1412
    .local v3, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v10, Lcom/scalado/caps/Session;

    .end local v10           #session:Lcom/scalado/caps/Session;
    invoke-direct {v10, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1413
    .restart local v10       #session:Lcom/scalado/caps/Session;
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    const/4 v12, 0x0

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v11, v12}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$602(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Rotation;)Lcom/scalado/caps/Rotation;

    .line 1420
    .end local v3           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    :cond_6
    :goto_1
    new-instance v5, Lcom/scalado/base/Image;

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->newSize:Lcom/scalado/base/Size;

    sget-object v12, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v5, v11, v12}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1421
    .local v5, image:Lcom/scalado/base/Image;
    new-instance v9, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v9, v10, v5}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 1422
    .local v9, screen:Lcom/scalado/caps/screen/Screen;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/scalado/caps/screen/Screen;->setDitheringEnabled(Z)V

    .line 1423
    const/4 v2, 0x1

    .line 1425
    .local v2, cropping:Z
    const/4 v4, 0x1

    .local v4, i:I
    :goto_2
    sget v11, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->MAX_PRESET:I

    if-gt v4, v11, :cond_13

    .line 1426
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-eqz v11, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    iget-object v13, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->aniDuration:I
    invoke-static {v13}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)I

    move-result v13

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    .line 1427
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->setPriority(I)V

    .line 1428
    const-wide/16 v0, 0x0

    .line 1431
    :cond_7
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1432
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RenderThumbnailAllPreset: mHandler is null, stop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1434
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1416
    .end local v2           #cropping:Z
    .end local v4           #i:I
    .end local v5           #image:Lcom/scalado/base/Image;
    .end local v9           #screen:Lcom/scalado/caps/screen/Screen;
    :cond_8
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1417
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Reuse session"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1437
    .restart local v2       #cropping:Z
    .restart local v4       #i:I
    .restart local v5       #image:Lcom/scalado/base/Image;
    .restart local v9       #screen:Lcom/scalado/caps/screen/Screen;
    :cond_9
    iget-boolean v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->stopFlag:Z

    if-eqz v11, :cond_b

    .line 1438
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1439
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: ForceStop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_a
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1442
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1443
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1447
    :cond_b
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RenderThumbnailAllPreset: Apply effect_Thumbnail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v12, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    const/4 v13, 0x1

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IZ)Ljava/util/List;
    invoke-static {v12, v4, v13}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IZ)Ljava/util/List;

    move-result-object v12

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    invoke-static {v11, v12, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1452
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v12, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->newSize:Lcom/scalado/base/Size;

    const/4 v13, 0x0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;
    invoke-static {v11, v9, v12, v13}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1454
    .local v8, result:Landroid/graphics/Bitmap;
    iget-boolean v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->stopFlag:Z

    if-eqz v11, :cond_e

    .line 1455
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1456
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: ForceStop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_c
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1459
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1460
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    if-nez v11, :cond_d

    .line 1461
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: mHandler is null, stop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1464
    :cond_d
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1466
    if-eqz v8, :cond_0

    .line 1467
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 1471
    :cond_e
    if-eqz v8, :cond_11

    .line 1472
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1473
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: Return bitmap by handler"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_f
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    if-nez v11, :cond_10

    .line 1476
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: mHandler is null, stop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1478
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1481
    :cond_10
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1482
    .local v7, msg:Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v7, Landroid/os/Message;->arg1:I

    .line 1484
    add-int/lit8 v11, v4, -0x1

    iput v11, v7, Landroid/os/Message;->arg2:I

    .line 1485
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1486
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1487
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ThumbnailThread: Apply effect_Thumbnail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " end"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v7           #msg:Landroid/os/Message;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1489
    :cond_11
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    if-nez v11, :cond_12

    .line 1490
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread: mHandler is null, stop thread"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1492
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1495
    :cond_12
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1510
    .end local v8           #result:Landroid/graphics/Bitmap;
    :cond_13
    const/4 v9, 0x0

    .line 1511
    const/4 v5, 0x0

    .line 1512
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1513
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1514
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1515
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ThumbnailThread end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->stopFlag:Z

    .line 1520
    return-void
.end method
