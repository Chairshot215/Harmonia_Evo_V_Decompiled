.class Lcom/htc/android/htcime/HTCIMEService$5;
.super Ljava/lang/Object;
.source "HTCIMEService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/HTCIMEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter

    .prologue
    .line 4214
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMEService$5;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4216
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mIsMemTuneProj:Z

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_2

    .line 4227
    :cond_1
    :goto_0
    return-void

    .line 4217
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4219
    .local v1, startTime:J
    :try_start_0
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v3

    sget-object v4, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3, v4}, Lcom/htc/tracker/ObjectTracker;->visit(Ljava/lang/Object;)V

    .line 4220
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmapDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4221
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " releaseMemoryRunnable() Spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4223
    :catch_0
    move-exception v0

    .line 4224
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    const-string v4, "releaseMemoryRunnable.run(), Releasing bitmap mechanism error, releasing bitmap mechanism not applied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
