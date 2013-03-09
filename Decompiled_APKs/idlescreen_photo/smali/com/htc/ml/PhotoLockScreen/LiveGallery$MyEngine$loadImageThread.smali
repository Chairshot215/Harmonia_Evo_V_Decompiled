.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;
.super Ljava/lang/Thread;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadImageThread"
.end annotation


# instance fields
.field private c:I

.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2096
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->c:I

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1983
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->loadBehindPhoto(I)V

    return-void
.end method

.method private loadBehindPhoto(I)V
    .locals 14
    .parameter "BPIdx"

    .prologue
    const/16 v13, 0x80

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1986
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1988
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1990
    const-string v7, "brian_LiveGallery_IdleScreen"

    const-string v8, "loadBehindPhoto - m_listMedia.size() == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    if-ltz p1, :cond_2

    const/16 v7, 0x16

    if-lt p1, v7, :cond_3

    .line 1995
    :cond_2
    const-string v7, "brian_LiveGallery_IdleScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBehindPhoto - BPIdx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " out of range"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2000
    :cond_3
    if-ne p1, v12, :cond_5

    .line 2002
    const/4 v0, 0x1

    .line 2003
    .local v0, bDelayed:Z
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 2004
    const/4 v0, 0x0

    .line 2008
    :cond_4
    if-eqz v0, :cond_6

    .line 2010
    const-string v7, "brian_LiveGallery_IdleScreen"

    const-string v8, "Delay 1000ms"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2013
    .local v2, m:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2014
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2038
    .end local v0           #bDelayed:Z
    .end local v2           #m:Landroid/os/Message;
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getIsImageSet(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2040
    const-string v7, "brian_LiveGallery_IdleScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBehindPhoto - BPIdx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "- Image set already"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1001

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2045
    .restart local v2       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2018
    .end local v2           #m:Landroid/os/Message;
    .restart local v0       #bDelayed:Z
    :cond_6
    const-string v7, "brian_LiveGallery_IdleScreen"

    const-string v8, "No Delay"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V
    invoke-static {v7, v10}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    .line 2022
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    if-eq v7, v8, :cond_7

    .line 2024
    const-string v7, "brian_LiveGallery_IdleScreen"

    const-string v8, "mCurrentScene != mScene"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v7, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1802(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 2026
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    invoke-virtual {v7, v8, v11}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 2028
    :cond_7
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindLoop()V
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    .line 2030
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 2049
    .end local v0           #bDelayed:Z
    :cond_8
    if-nez p1, :cond_9

    .line 2054
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8, v11, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2055
    .restart local v2       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2057
    .end local v2           #m:Landroid/os/Message;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2058
    .local v3, startTime:J
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int v1, p1, v7

    .line 2059
    .local v1, imageIdx:I
    if-ltz v1, :cond_c

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    .line 2061
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseBmp()V

    .line 2062
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseScaledBmp()V

    .line 2064
    const-string v8, "brian_LiveGallery_IdleScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBehindPhoto - imageIdx: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->isImage()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2069
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->decodeFileByScalado(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v9, v7, v13, v13}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setmBmp(Landroid/graphics/Bitmap;)V

    .line 2079
    :goto_2
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_b

    .line 2080
    const-string v8, "brian_LiveGallery_IdleScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not create Thumbnail: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2074
    :cond_a
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;

    move-result-object v8

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v7}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setmBmp(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 2085
    :cond_b
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2086
    .restart local v2       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v3

    .line 2088
    .local v5, t:J
    const-string v7, "brian_LiveGallery_IdleScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBehindPhoto - timeDiff: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2092
    .end local v2           #m:Landroid/os/Message;
    .end local v5           #t:J
    :cond_c
    const-string v7, "brian_LiveGallery_IdleScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBehindPhoto - imageIdx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " out of range"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public loadPhoDeoPhoto(III)V
    .locals 10
    .parameter "phoDeoIdx"
    .parameter "imageIdx"
    .parameter "message"

    .prologue
    .line 2099
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    if-ltz p2, :cond_0

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p2, v5, :cond_1

    .line 2135
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseBmp()V

    .line 2106
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseScaledBmp()V

    .line 2108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2109
    .local v1, startTime:J
    const-string v6, "brian_LiveGallery_IdleScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadPhoDeoPhoto phoDeoIdx:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " imageIdx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->isImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2114
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoWidth:I
    invoke-static {v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoHeight:I
    invoke-static {v9}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v9

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->decodeFileByScalado(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v7, v6, v8, v9}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setmBmp(Landroid/graphics/Bitmap;)V

    .line 2124
    :goto_1
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    .line 2125
    const-string v6, "brian_LiveGallery_IdleScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not create Thumbnail: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2119
    :cond_2
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setmBmp(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2130
    :cond_3
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2131
    .local v0, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 2134
    .local v3, timeDiff:J
    const-string v5, "brian_LiveGallery_IdleScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadPhoDeoPhoto end - timeDiff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2137
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "loadImageThread entering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2139
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    new-instance v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;

    invoke-direct {v1, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;)V

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1202(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2169
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2170
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "loadImageThread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return-void
.end method
