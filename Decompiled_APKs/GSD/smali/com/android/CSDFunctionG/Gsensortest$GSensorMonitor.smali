.class public Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;
.super Ljava/lang/Thread;
.source "Gsensortest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/Gsensortest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GSensorMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/Gsensortest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Gsensortest;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/CSDFunctionG/Gsensortest;->Test_Thread_Flag:Z

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 286
    .local v1, l_TimeoutBegin:J
    :cond_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-boolean v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->Test_Thread_Flag:Z

    if-eqz v3, :cond_5

    .line 290
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-boolean v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->g_bDataIn:Z

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iput-boolean v8, v3, Lcom/android/CSDFunctionG/Gsensortest;->g_bDataIn:Z

    .line 298
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    const-string v4, "GSensor Monitor Thread "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    cmpl-float v3, v3, v10

    if-nez v3, :cond_6

    .line 305
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X is 0 error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 319
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    cmpl-float v3, v3, v10

    if-nez v3, :cond_9

    .line 321
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Y is 0 error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 335
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    cmpl-float v3, v3, v10

    if-nez v3, :cond_c

    .line 337
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 338
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z is 0 error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 350
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$200(Lcom/android/CSDFunctionG/Gsensortest;)Z

    move-result v3

    if-ne v3, v9, :cond_0

    .line 352
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1000(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1100(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1200(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1300(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1400(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1500(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_f

    .line 357
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iput-boolean v8, v3, Lcom/android/CSDFunctionG/Gsensortest;->Test_Thread_Flag:Z

    .line 358
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nG-Sensor PASS\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 360
    :cond_4
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v4, v4, Lcom/android/CSDFunctionG/Gsensortest;->m_gsensorObj:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 381
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 382
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iput-boolean v8, v3, Lcom/android/CSDFunctionG/Gsensortest;->g_bDataIn:Z

    .line 383
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v3, v3, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    const-string v4, "GSensor End Of Test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 308
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1000(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1100(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 310
    :cond_7
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " range error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 315
    :cond_8
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 324
    :cond_9
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1200(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1300(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    .line 326
    :cond_a
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 327
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " range error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 331
    :cond_b
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 340
    :cond_c
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmin:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1400(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_d

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmax:F
    invoke-static {v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$1500(Lcom/android/CSDFunctionG/Gsensortest;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    .line 342
    :cond_d
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 343
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " range error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 347
    :cond_e
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 348
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 366
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iput-boolean v8, v3, Lcom/android/CSDFunctionG/Gsensortest;->Test_Thread_Flag:Z

    .line 369
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 370
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F
    invoke-static {v5}, Lcom/android/CSDFunctionG/Gsensortest;->access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\nG-Sensor Fail\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 371
    :cond_10
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 372
    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4
.end method
