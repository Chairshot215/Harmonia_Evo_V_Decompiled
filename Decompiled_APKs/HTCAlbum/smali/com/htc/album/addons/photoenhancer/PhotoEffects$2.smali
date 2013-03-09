.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;
.super Ljava/lang/Thread;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;->ExportAll(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

.field final synthetic val$dst:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->val$dst:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1767
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1768
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: mHandler is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :goto_0
    return-void

    .line 1771
    :cond_0
    const/4 v8, 0x0

    .line 1772
    .local v8, inStream:Lcom/scalado/stream/FileStream;
    const/4 v1, 0x0

    .line 1773
    .local v1, dstStream:Lcom/scalado/stream/FileStream;
    const/4 v9, 0x0

    .line 1774
    .local v9, session:Lcom/scalado/caps/Session;
    const/4 v0, 0x0

    .line 1775
    .local v0, dstFilePath:Ljava/lang/String;
    sget v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->MAX_PRESET:I

    new-array v6, v10, [Ljava/lang/String;

    .line 1776
    .local v6, fileList:[Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)I

    move-result v11

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setRotateDegree(I)V
    invoke-static {v10, v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;I)V

    .line 1777
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    sget v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->MAX_PRESET:I

    if-ge v7, v10, :cond_6

    .line 1778
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1779
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->val$dst:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->val$dst:Ljava/lang/String;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-batch-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1780
    aput-object v0, v6, v7

    .line 1782
    :try_start_0
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/stream/FileStream;

    move-result-object v8

    .line 1783
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1784
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Initial Error"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v10, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto :goto_0

    .line 1787
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v9

    .line 1788
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1789
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Initial Error"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1813
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v10, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1792
    :cond_2
    :try_start_2
    new-instance v2, Lcom/scalado/stream/FileStream;

    sget-object v10, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v2, v0, v10}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1793
    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .local v2, dstStream:Lcom/scalado/stream/FileStream;
    :try_start_3
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1794
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: Apply effect"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_3
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    const/4 v12, 0x0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IZ)Ljava/util/List;
    invoke-static {v11, v7, v12}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IZ)Ljava/util/List;

    move-result-object v11

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    invoke-static {v10, v11, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1797
    if-nez v9, :cond_4

    .line 1798
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: Session is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    const/4 v11, 0x1

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v10, v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1813
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v10, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto/16 :goto_0

    .line 1802
    :cond_4
    :try_start_4
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1803
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: Encode jpeg"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_5
    new-instance v4, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {v9}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v10

    invoke-direct {v4, v2, v10}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1806
    .local v4, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    invoke-virtual {v9, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 1807
    .local v5, encoderIterator:Lcom/scalado/base/Iterator;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1813
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v10, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    move-object v1, v2

    .line 1777
    .end local v2           #dstStream:Lcom/scalado/stream/FileStream;
    .end local v4           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v5           #encoderIterator:Lcom/scalado/base/Iterator;
    .restart local v1       #dstStream:Lcom/scalado/stream/FileStream;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1808
    :catch_0
    move-exception v3

    .line 1809
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: Saving file error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1811
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1813
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v10, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v10, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    goto :goto_2

    .line 1813
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_4
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v11, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1814
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1815
    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v11, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    throw v10

    .line 1818
    :cond_6
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v10

    if-nez v10, :cond_7

    .line 1819
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ExportAll: End mHandler is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1822
    :cond_7
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1823
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v6, v11, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1825
    :cond_8
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1813
    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #dstStream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #dstStream:Lcom/scalado/stream/FileStream;
    goto :goto_4

    .line 1808
    .end local v1           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #dstStream:Lcom/scalado/stream/FileStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dstStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #dstStream:Lcom/scalado/stream/FileStream;
    goto :goto_3
.end method
