.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;
.super Ljava/lang/Thread;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;->Save(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

.field final synthetic val$dst:Ljava/lang/String;

.field final synthetic val$mFrameId:I

.field final synthetic val$mPresetId:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$dst:Ljava/lang/String;

    iput p3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$mPresetId:I

    iput p4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$mFrameId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1680
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1681
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1682
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: mHandler is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :goto_0
    return-void

    .line 1685
    :cond_0
    const/4 v5, 0x0

    .line 1686
    .local v5, inStream:Lcom/scalado/stream/FileStream;
    const/4 v0, 0x0

    .line 1687
    .local v0, dstStream:Lcom/scalado/stream/FileStream;
    const/4 v6, 0x0

    .line 1688
    .local v6, session:Lcom/scalado/caps/Session;
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I
    invoke-static {v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)I

    move-result v9

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setRotateDegree(I)V
    invoke-static {v8, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;I)V

    .line 1696
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/stream/FileStream;

    move-result-object v5

    .line 1697
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1698
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1699
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Initial Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto :goto_0

    .line 1702
    :cond_1
    :try_start_1
    new-instance v1, Lcom/scalado/stream/FileStream;

    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$dst:Ljava/lang/String;

    sget-object v9, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v1, v8, v9}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1703
    .end local v0           #dstStream:Lcom/scalado/stream/FileStream;
    .local v1, dstStream:Lcom/scalado/stream/FileStream;
    :try_start_2
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1704
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: Apply effect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_2
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v6

    .line 1707
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1708
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Initial Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1710
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1711
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1714
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$mPresetId:I

    iget v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$mFrameId:I

    const/4 v12, 0x0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IIZ)Ljava/util/List;
    invoke-static {v9, v10, v11, v12}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IIZ)Ljava/util/List;

    move-result-object v9

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    invoke-static {v8, v9, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1715
    if-nez v6, :cond_4

    .line 1716
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: Session is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    const/4 v9, 0x1

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v8, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)Z

    .line 1718
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1719
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1722
    :cond_4
    :try_start_4
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1723
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: Encode jpeg"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_5
    new-instance v3, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {v6}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    invoke-direct {v3, v1, v8}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1726
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    invoke-virtual {v6}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 1727
    .local v7, size:Lcom/scalado/base/Size;
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encode size w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-virtual {v6, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1729
    .local v4, encoderIterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1730
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1731
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: Success mHandler is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1733
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->val$dst:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1735
    :cond_6
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1736
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1737
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1740
    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    move-object v0, v1

    .line 1749
    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dstStream:Lcom/scalado/stream/FileStream;
    goto/16 :goto_0

    .line 1741
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #encoderIterator:Lcom/scalado/base/Iterator;
    .end local v7           #size:Lcom/scalado/base/Size;
    :catch_0
    move-exception v2

    .line 1742
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Save: Saving file error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1744
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1746
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v8, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v8, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1746
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v9, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1747
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v9, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1748
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v9, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    throw v8

    .line 1746
    .end local v0           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #dstStream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dstStream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 1741
    .end local v0           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #dstStream:Lcom/scalado/stream/FileStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dstStream:Lcom/scalado/stream/FileStream;
    goto :goto_1
.end method
