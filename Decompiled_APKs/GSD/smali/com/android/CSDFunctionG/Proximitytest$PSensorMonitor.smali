.class public Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;
.super Ljava/lang/Thread;
.source "Proximitytest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/Proximitytest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PSensorMonitor"
.end annotation


# instance fields
.field lStartTime:J

.field lTimeLenForTimeout:J

.field final synthetic this$0:Lcom/android/CSDFunctionG/Proximitytest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Proximitytest;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 254
    iput-object p1, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 252
    iput-wide v0, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->lStartTime:J

    iput-wide v0, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->lTimeLenForTimeout:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/CSDFunctionG/Proximitytest;->Test_Thread_Flag:Z

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->lStartTime:J

    .line 257
    return-void
.end method


# virtual methods
.method public StopThread()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/CSDFunctionG/Proximitytest;->Test_Thread_Flag:Z

    .line 262
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 267
    .local v1, l_TimeoutBegin:J
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-boolean v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->Test_Thread_Flag:Z

    if-eqz v3, :cond_5

    .line 271
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_1
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-boolean v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->g_bDataIn:Z

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iput-boolean v6, v3, Lcom/android/CSDFunctionG/Proximitytest;->g_bDataIn:Z

    .line 279
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v4, "GSensor Monitor Thread "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->m_psensorState:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 284
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v4, "Please Cover the Proximity "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "Please Cover the Proximity "

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v4, "Pass proximity "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "   Proximity   Test   "

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 292
    :cond_2
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iput-boolean v6, v3, Lcom/android/CSDFunctionG/Proximitytest;->Test_Thread_Flag:Z

    .line 293
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "\n Pass \n"

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 299
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v4, "Please unCover the Proximity "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 301
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Proximitytest;->access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "Please Uncover the Proximity"

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget v4, v3, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    .line 303
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starttest_flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget v5, v5, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :cond_5
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v4, v4, Lcom/android/CSDFunctionG/Proximitytest;->m_PsensorObj:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 309
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/CSDFunctionG/Proximitytest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 310
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iput-boolean v6, v3, Lcom/android/CSDFunctionG/Proximitytest;->g_bDataIn:Z

    .line 311
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v4, "Proximity End Of Test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method
