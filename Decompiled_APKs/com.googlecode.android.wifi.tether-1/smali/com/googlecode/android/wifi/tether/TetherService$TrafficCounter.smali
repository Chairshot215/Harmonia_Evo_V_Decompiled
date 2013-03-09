.class Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficCounter"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x2


# instance fields
.field lastTimeChecked:J

.field previousDownload:J

.field previousUpload:J

.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 970
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousUpload:J

    iput-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousDownload:J

    .line 971
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->lastTimeChecked:J

    .line 973
    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getTetherNetworkDevice()Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, tetherNetworkDevice:Ljava/lang/String;
    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v8, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getDataTraffic(Ljava/lang/String;)[J

    move-result-object v4

    .line 976
    .local v4, startCount:[J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1010
    return-void

    .line 978
    :cond_0
    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v8, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getDataTraffic(Ljava/lang/String;)[J

    move-result-object v6

    .line 979
    .local v6, trafficCount:[J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 980
    .local v0, currentTime:J
    iget-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->lastTimeChecked:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-float v3, v8

    .line 981
    .local v3, elapsedTime:F
    iput-wide v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->lastTimeChecked:J

    .line 989
    const/4 v8, 0x4

    new-array v7, v8, [J

    .line 990
    .local v7, trafficData:[J
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    const/4 v11, 0x0

    aget-wide v11, v4, v11

    sub-long/2addr v9, v11

    aput-wide v9, v7, v8

    .line 991
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-wide v9, v6, v9

    const/4 v11, 0x1

    aget-wide v11, v4, v11

    sub-long/2addr v9, v11

    aput-wide v9, v7, v8

    .line 992
    const/4 v8, 0x2

    const/4 v9, 0x0

    aget-wide v9, v7, v9

    iget-wide v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousUpload:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x8

    mul-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v9, v3

    float-to-long v9, v9

    aput-wide v9, v7, v8

    .line 993
    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-wide v9, v7, v9

    iget-wide v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousDownload:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x8

    mul-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v9, v3

    float-to-long v9, v9

    aput-wide v9, v7, v8

    .line 996
    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v8, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->sendTrafficBroadcast([J)V

    .line 998
    const/4 v8, 0x2

    aget-wide v8, v7, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    const/4 v8, 0x3

    aget-wide v8, v7, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 999
    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/googlecode/android/wifi/tether/TetherService;->timestampCounterUpdate:J

    .line 1002
    :cond_1
    const/4 v8, 0x0

    aget-wide v8, v7, v8

    iput-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousUpload:J

    .line 1003
    const/4 v8, 0x1

    aget-wide v8, v7, v8

    iput-wide v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;->previousDownload:J

    .line 1005
    const-wide/16 v8, 0x7d0

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0
.end method
