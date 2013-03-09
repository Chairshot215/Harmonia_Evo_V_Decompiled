.class Lcom/android/smith/SystemLoggers$RunningSettings;
.super Ljava/lang/Object;
.source "SystemLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningSettings"
.end annotation


# instance fields
.field public auto_select:Z

.field public autoclear:Z

.field public autorun:Z

.field public bootrun:Z

.field public compress:Z

.field public loaded:Z

.field public loggers:[Z

.field private mConf:J

.field public path:Ljava/lang/String;

.field public rotate:I

.field public session:I

.field public size:I

.field public size_limit:I

.field public size_reserved:I

.field final synthetic this$0:Lcom/android/smith/SystemLoggers;

.field public use_external_storage:Z

.field public use_phone_storage:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/smith/SystemLoggers;I)V
    .locals 3
    .parameter
    .parameter "loggers_count"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 495
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    .line 497
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->version:Ljava/lang/String;

    .line 498
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    .line 499
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    .line 500
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    .line 501
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    .line 502
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    .line 503
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    .line 504
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 505
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    .line 506
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    .line 507
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    .line 508
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    .line 509
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    .line 510
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 511
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    .line 512
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 516
    iget-wide v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 518
    iget-wide v0, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 519
    iput-wide v2, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    .line 521
    :cond_0
    return-void
.end method

.method public load()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 525
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 527
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v7, v8}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 530
    :cond_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.android.smith/smghost/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 533
    const-string v7, "/system/bin/mkdir /data/data/com.android.smith/smghost/"

    invoke-static {v7}, Lcom/android/smith/Device;->execAndWait(Ljava/lang/String;)I

    .line 536
    :cond_1
    const-string v7, "SM:SystemLoggers"

    const-string v8, "loading settings from [/data/data/com.android.smith/smghost/SystemLoggers.conf] ..."

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v7, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-static {v7}, Lcom/android/smith/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    .line 540
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 628
    :goto_0
    return v5

    .line 543
    :cond_2
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v7, v8}, Lcom/android/smith/HtcNative;->confDebugDump(J)V

    .line 545
    const-string v3, ""

    .line 549
    .local v3, loggers_list:Ljava/lang/String;
    :try_start_0
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v9, "Version"

    const-string v10, "0"

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->version:Ljava/lang/String;

    .line 551
    const-string v7, "2"

    iget-object v8, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 553
    const-string v7, "SM:SystemLoggers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore config version ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], required version ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v7, v8}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 556
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SM:SystemLoggers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load settings failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/smith/SystemLoggers$RunningSettings;->save()V

    .line 613
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    array-length v5, v5

    if-ge v1, v5, :cond_c

    .line 615
    iget-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v5}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    if-nez v5, :cond_b

    .line 617
    iget-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v8}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v8

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    aput-boolean v7, v5, v1

    .line 613
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    .end local v1           #i:I
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    .line 562
    const-string v5, "SM:SystemLoggers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config found = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "AutoStart"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    .line 565
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "RotateSizeMB"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    .line 566
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "RotateCount"

    const/16 v9, 0x28

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    .line 567
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "LimitedTotalLogSizeMB"

    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    .line 568
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "ReservedStorageSizeMB"

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    .line 569
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "SessionCount"

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    .line 570
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "CheckBoxAutoStart"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    .line 571
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "AutoClear"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    .line 572
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "Compress"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    .line 573
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "SelectedLoggers"

    const-string v9, ""

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    iget-wide v7, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "LogPath"

    const-string v9, "auto"

    invoke-static {v7, v8, v5, v9}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, logpath:Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    .line 578
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 579
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    .line 581
    const-string v5, "internal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 583
    const-string v5, "internal"

    iput-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 603
    :goto_3
    iget v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    if-gtz v5, :cond_6

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    .line 604
    :cond_6
    iget v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    if-gez v5, :cond_7

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    .line 605
    :cond_7
    iget v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    if-gtz v5, :cond_3

    const/16 v5, 0xa

    iput v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    goto/16 :goto_1

    .line 585
    :cond_8
    const-string v5, "phone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 587
    const-string v5, "phone"

    iput-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 588
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    goto :goto_3

    .line 590
    :cond_9
    const-string v5, "external"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 592
    const-string v5, "external"

    iput-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 593
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    goto :goto_3

    .line 597
    :cond_a
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 598
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    .line 599
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 600
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 621
    .end local v4           #logpath:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_b
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    iget-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v5}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 623
    iget-object v5, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    aget-boolean v7, v5, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v9}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    or-int/2addr v7, v8

    aput-boolean v7, v5, v1

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #j:I
    :cond_c
    move v5, v6

    .line 628
    goto/16 :goto_0
.end method

.method public save()V
    .locals 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 633
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 635
    const-string v3, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-static {v3}, Lcom/android/smith/HtcNative;->confNew(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    .line 637
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 639
    const-string v3, "SM:SystemLoggers"

    const-string v4, "cannot create new config!"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confClear(J)V

    .line 646
    :cond_1
    const-string v2, "[dumplastkmsg]"

    .line 648
    .local v2, loggers_list:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "Logger.dumplastkmsg"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 650
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 652
    iget-object v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_3

    .line 650
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v3}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logger."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v6}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v6

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 663
    :cond_4
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    iget-object v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v3}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logger."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v6}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v6

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 672
    .end local v1           #j:I
    :cond_5
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "Version"

    const-string v6, "2"

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 673
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "AutoStart"

    iget-boolean v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 674
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "RotateSizeMB"

    iget v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 675
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "RotateCount"

    iget v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 676
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "LimitedTotalLogSizeMB"

    iget v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 677
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "ReservedStorageSizeMB"

    iget v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 678
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "SessionCount"

    iget v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 679
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "CheckBoxAutoStart"

    iget-boolean v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 680
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "AutoClear"

    iget-boolean v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 681
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "Compress"

    iget-boolean v6, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 682
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "SelectedLoggers"

    invoke-static {v3, v4, v5, v2}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 684
    iget-boolean v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-eqz v3, :cond_6

    .line 686
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v5, "LogPath"

    const-string v6, "auto"

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 693
    :goto_4
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confSort(J)V

    .line 694
    iget-wide v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confSave(J)Z

    goto/16 :goto_0

    .line 690
    :cond_6
    iget-wide v4, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->mConf:J

    const-string v6, "LogPath"

    iget-boolean v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    if-eqz v3, :cond_7

    const-string v3, "external"

    :goto_5
    invoke-static {v4, v5, v6, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_7
    iget-boolean v3, p0, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    if-eqz v3, :cond_8

    const-string v3, "phone"

    goto :goto_5

    :cond_8
    const-string v3, "internal"

    goto :goto_5
.end method
