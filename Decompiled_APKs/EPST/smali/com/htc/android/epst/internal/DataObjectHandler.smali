.class public Lcom/htc/android/epst/internal/DataObjectHandler;
.super Landroid/os/Handler;
.source "DataObjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/internal/DataObjectHandler$Device;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_INFO:Ljava/lang/String; = "APP_REQUEST_REFRESH_PHONE_INFO"

.field private static DBG:Z = false

.field private static final D_NO_RESPONSE_STRING:Ljava/lang/String; = "no response string"

.field private static final D_NO_RESULT_OBJECT:Ljava/lang/String; = "no result object"

.field private static final FILENAME:Ljava/lang/String; = "AtDbg.txt"

.field private static final LOG_TAG:Ljava/lang/String; = "DataObjectHandler"

.field private static final PATH:Ljava/lang/String; = "/data/data/com.htc.android.epst/files/"


# instance fields
.field private gTimeOutMode:I

.field private gTimeOutRecord:Lcom/htc/android/epst/internal/Record;

.field private mLogOut:Ljava/io/FileOutputStream;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field writeTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    sput-boolean v0, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    sget-object v0, Lcom/htc/android/epst/EPST;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 41
    iput-boolean v1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->writeTitle:Z

    .line 819
    iput v1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutMode:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    return v0
.end method

.method private coldboot()V
    .locals 3

    .prologue
    .line 689
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    const-string v0, "DataObjectHandler"

    const-string v1, "sendBroadcast.master_clear intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method private intentReboot()V
    .locals 3

    .prologue
    .line 710
    const-string v1, "DataObjectHandler"

    const-string v2, "intentReboot:IN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 722
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "DataObjectHandler"

    const-string v2, "EPST pm reboot device."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 749
    const-string v1, "DataObjectHandler"

    const-string v2, "ACTION_REBOOT!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method private isAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 680
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 681
    sget-boolean v0, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataObjectHandler"

    const-string v1, "Airplane mode now.No phone service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    const/4 v0, 0x1

    .line 684
    :cond_1
    return v0
.end method


# virtual methods
.method declared-synchronized atLog(Ljava/lang/String;)V
    .locals 18
    .parameter "s"

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    sget-boolean v14, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    .line 585
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 548
    .local v1, c:Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 549
    .local v13, year:I
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 550
    .local v9, month:I
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 551
    .local v3, day:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, date:Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 555
    .local v6, hour:I
    const/16 v14, 0xc

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 556
    .local v8, mins:I
    const/16 v14, 0xd

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 558
    .local v11, secs:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 561
    .local v12, time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->writeTitle:Z

    if-nez v14, :cond_3

    .line 562
    new-instance v10, Ljava/io/File;

    const-string v14, "/data/data/com.htc.android.epst/files/"

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v10, path:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 564
    new-instance v5, Ljava/io/File;

    const-string v14, "/data/data/com.htc.android.epst/files/AtDbg.txt"

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/32 v16, 0x100590

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 566
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 568
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 569
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 571
    :cond_2
    new-instance v14, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v14, v5, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    .line 572
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\t\nNewAtLog>\n----------------------------------------------\nData\t: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Time\t: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "----------------------------------------------\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 576
    .local v7, logheader:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 577
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->writeTitle:Z

    .line 579
    .end local v5           #file:Ljava/io/File;
    .end local v7           #logheader:Ljava/lang/String;
    .end local v10           #path:Ljava/io/File;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 582
    .end local v1           #c:Ljava/util/Calendar;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #day:I
    .end local v6           #hour:I
    .end local v8           #mins:I
    .end local v9           #month:I
    .end local v11           #secs:I
    .end local v12           #time:Ljava/lang/String;
    .end local v13           #year:I
    :catch_0
    move-exception v4

    .line 583
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 543
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method checkReceiveObject(Landroid/os/AsyncResult;)Z
    .locals 4
    .parameter "ar"

    .prologue
    .line 780
    const/4 v1, 0x1

    .line 781
    .local v1, status:Z
    const/4 v0, 0x0

    .line 783
    .local v0, errMsg:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no result object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    const/4 v1, 0x0

    .line 793
    :cond_0
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 794
    const/4 v1, 0x0

    .line 796
    :cond_1
    if-eqz v0, :cond_2

    .line 797
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_2

    .line 798
    const-string v2, "DataObjectHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_2
    return v1

    .line 788
    :cond_3
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no response string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    const/4 v1, 0x0

    goto :goto_0
.end method

.method close()V
    .locals 3

    .prologue
    .line 804
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-nez v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 809
    iget-object v1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Ljava/io/IOException;
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_0

    .line 815
    const-string v1, "DataObjectHandler"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string v1, "DataObjectHandler"

    const-string v2, "OoO null pointer of mLogOut"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x32

    const/16 v10, 0x38

    const/16 v9, 0x6c

    const/16 v5, 0x34

    const/4 v1, 0x0

    .line 48
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "DataObjectHandler"

    const-string v4, "handleMessage:IN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x75

    if-ne v3, v4, :cond_2

    .line 50
    const-string v1, "DataObjectHandler"

    const-string v3, "EVENT_HTC_CDMA_REBOOT_TIMEOUT"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->intentReboot()V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    .line 57
    .local v0, process:Lcom/htc/android/epst/internal/DataObject;
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v11, :cond_3

    .line 59
    const-string v3, "DataObjectHandler"

    const-string v4, "handleMessage in EVENT_READ_TIMEOUT."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "FFFF"

    iget-object v5, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutRecord:Lcom/htc/android/epst/internal/Record;

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/internal/DataObject;->receivedReadCommandGeneric(ZLjava/lang/String;IILcom/htc/android/epst/internal/Record;)V

    goto :goto_0

    .line 63
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x33

    if-ne v3, v4, :cond_4

    .line 65
    const-string v3, "DataObjectHandler"

    const-string v4, "handleMessage in EVENT_WRITE_TIMEOUT."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v3, "FFFF"

    iget-object v4, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutRecord:Lcom/htc/android/epst/internal/Record;

    invoke-virtual {v0, v1, v3, v1, v4}, Lcom/htc/android/epst/internal/DataObject;->receivedWriteCommandGeneric(ZLjava/lang/String;ILcom/htc/android/epst/internal/Record;)V

    goto :goto_0

    .line 69
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_5

    .line 70
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f04001d

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_LPM_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x35

    if-ne v3, v4, :cond_6

    .line 77
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f04001e

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .restart local v7       #nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_REFURBISH_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x39

    if-ne v3, v4, :cond_7

    .line 84
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f04001f

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    .restart local v7       #nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_SCRTN_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x36

    if-ne v3, v4, :cond_8

    .line 91
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f040020

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    .restart local v7       #nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_RESTORE_NAI_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_8
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x37

    if-ne v3, v4, :cond_9

    .line 98
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f040021

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7       #nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_RESTORE_SSL_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v10, :cond_a

    .line 105
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v3, 0x7f040022

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    .restart local v7       #nMessage:Ljava/lang/String;
    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage in EVENT_RESTORE_USER_TIMEOUT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0, v7}, Lcom/htc/android/epst/internal/DataObject;->returnDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v7           #nMessage:Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_c

    .line 113
    :cond_b
    const-string v1, "DataObjectHandler"

    const-string v3, "msg == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rx:+HTC_DM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/internal/DataObjectHandler;->atLog(Ljava/lang/String;)V

    .line 118
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 119
    .local v6, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v6}, Lcom/htc/android/epst/internal/DataObjectHandler;->checkReceiveObject(Landroid/os/AsyncResult;)Z

    move-result v8

    .line 121
    .local v8, rpsObjectResult:Z
    const/4 v2, 0x0

    .line 122
    .local v2, command:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 123
    iget-object v3, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_d
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 132
    :sswitch_0
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_e

    .line 133
    const-string v1, "DataObjectHandler"

    const-string v3, "received msl result"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_e
    invoke-virtual {v0, v8, v2}, Lcom/htc/android/epst/internal/DataObject;->receiveMSL(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :sswitch_1
    const-string v1, "DataObjectHandler"

    const-string v3, "radio power save mode"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v1

    if-nez v1, :cond_f

    .line 145
    invoke-virtual {p0, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 146
    const-string v1, "DataObjectHandler"

    const-string v3, "Normal section.Remove LPM timeout!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->commitAction()V

    goto/16 :goto_0

    .line 151
    :cond_f
    const/16 v1, 0x69

    sput v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    goto/16 :goto_0

    .line 178
    :sswitch_2
    const-string v1, "DataObjectHandler"

    const-string v3, "refurbish:radio power save mode -executeRefurbishCmd"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v1

    if-nez v1, :cond_10

    .line 183
    invoke-virtual {p0, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 184
    const-string v1, "DataObjectHandler"

    const-string v3, "Refurbish section.Remove LPM timeout!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->executeRefurbishCmd()V

    goto/16 :goto_0

    .line 187
    :cond_10
    const/16 v1, 0x6f

    sput v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    goto/16 :goto_0

    .line 213
    :sswitch_3
    const-string v1, "DataObjectHandler"

    const-string v3, "restore:radio power save mode -execute restore Cmd"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v1

    if-nez v1, :cond_11

    .line 218
    invoke-virtual {p0, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 219
    const-string v1, "DataObjectHandler"

    const-string v3, "Restore section.Remove LPM timeout!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->executeRestoreCmd()V

    goto/16 :goto_0

    .line 222
    :cond_11
    const/16 v1, 0x71

    sput v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    goto/16 :goto_0

    .line 249
    :sswitch_4
    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 250
    const-string v1, "DataObjectHandler"

    const-string v3, "remove EVENT_RESTORE_NAI_TIMEOUT tomeout"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :sswitch_5
    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 264
    const-string v3, "DataObjectHandler"

    const-string v4, "remove EVENT_RESTORE_SSL_TIMEOUT tomeout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v3, 0x74

    const-string v4, "C827D00100"

    invoke-virtual {p0, p0, v3, v4}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 270
    const-string v3, "DataObjectHandler"

    const-string v4, "Send EVENT_RESTORE_USER_TIMEOUT and add User timeout feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, v10, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto/16 :goto_0

    .line 276
    :sswitch_6
    invoke-virtual {p0, v10}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 277
    const-string v1, "DataObjectHandler"

    const-string v3, "remove EVENT_RESTORE_USER_TIMEOUT tomeout"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "DataObjectHandler"

    const-string v3, "DataObject.REBOOT"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->showRebootPrompt()V

    .line 281
    invoke-virtual {p0, v9}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    goto/16 :goto_0

    .line 286
    :sswitch_7
    const/16 v1, 0x35

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 287
    const-string v1, "DataObjectHandler"

    const-string v3, "remove refurbish tomeout"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->clearARM11()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 289
    invoke-direct {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->coldboot()V

    .line 290
    const-string v1, "DataObjectHandler"

    const-string v3, "The coldboot function failed!!!!!Please check in"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_12
    invoke-virtual {p0, v9}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    .line 294
    const-string v1, "DataObjectHandler"

    const-string v3, "The reboot device directly"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    :sswitch_8
    const-string v1, "DataObjectHandler"

    const-string v3, "EVENT_RIL_REQUEST_SCRTN_OFFLINE_MODE IN"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->isPhoneInService()Z

    move-result v1

    if-nez v1, :cond_13

    .line 307
    invoke-virtual {p0, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 308
    const-string v1, "DataObjectHandler"

    const-string v3, "SCRTN section.Remove LPM timeout!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->executeSCRTNCmd()V

    goto/16 :goto_0

    .line 312
    :cond_13
    const/16 v1, 0x9a

    sput v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    goto/16 :goto_0

    .line 340
    :sswitch_9
    const-string v1, "DataObjectHandler"

    const-string v3, "EVENT_RIL_REQUEST_SCRTN_COMMAND IN"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v1, 0x39

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 344
    const-string v1, "DataObjectHandler"

    const-string v3, "SCRTN section.Remove EVENT_SCRTN_TIMEOUT!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->showRebootPrompt()V

    .line 348
    invoke-virtual {p0, v9}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    goto/16 :goto_0

    .line 352
    :sswitch_a
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_1

    .line 353
    const-string v1, "DataObjectHandler"

    const-string v3, "radio power reset"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    :sswitch_b
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_14

    .line 358
    const-string v1, "DataObjectHandler"

    const-string v3, "received clear gps result"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_14
    invoke-virtual {v0, v8, v2}, Lcom/htc/android/epst/internal/DataObject;->clearGPSResult(ZLjava/lang/String;)V

    .line 361
    invoke-virtual {p0, v9}, Lcom/htc/android/epst/internal/DataObjectHandler;->radioMode(I)V

    goto/16 :goto_0

    .line 365
    :sswitch_c
    invoke-virtual {v0, v8, v2}, Lcom/htc/android/epst/internal/DataObject;->updateOTKSLAuthResult(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :sswitch_d
    invoke-virtual {p0, v11}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 370
    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/android/epst/internal/Record;

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/internal/DataObject;->receivedReadCommandGeneric(ZLjava/lang/String;IILcom/htc/android/epst/internal/Record;)V

    goto/16 :goto_0

    .line 375
    :sswitch_e
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_15

    const-string v1, "DataObjectHandler"

    const-string v3, "EVENT_RIL_DM_CMD_WRITE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_15
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_16

    const-string v1, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_16
    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 378
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/epst/internal/Record;

    invoke-virtual {v0, v8, v2, v3, v1}, Lcom/htc/android/epst/internal/DataObject;->receivedWriteCommandGeneric(ZLjava/lang/String;ILcom/htc/android/epst/internal/Record;)V

    goto/16 :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_2
        0x70 -> :sswitch_7
        0x71 -> :sswitch_3
        0x72 -> :sswitch_4
        0x73 -> :sswitch_5
        0x74 -> :sswitch_6
        0x97 -> :sswitch_1
        0x98 -> :sswitch_3
        0x99 -> :sswitch_2
        0x9a -> :sswitch_8
        0x9b -> :sswitch_9
        0x2711 -> :sswitch_d
        0x2712 -> :sswitch_e
    .end sparse-switch
.end method

.method protected isPhoneInService()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 528
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 530
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 532
    .local v2, radioOff:Z
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 538
    :goto_0
    return v3

    .line 532
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "DataObjectHandler"

    const-string v5, "RemoteException during radio shutdown"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public postTimeOutHandler(II)V
    .locals 5
    .parameter "iMode"
    .parameter "iTimeOutSec"

    .prologue
    .line 823
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "DataObjectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postTimeOutHandler.execute timeout handle.sec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "DataObjectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current Thread id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_1
    const/4 v0, 0x0

    .line 826
    .local v0, iTimeOut:I
    sget-boolean v1, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "DataObjectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 869
    const-string v1, "DataObjectHandler"

    const-string v2, "No this type!!Please check!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    return-void

    .line 831
    :pswitch_0
    iput p1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutMode:I

    .line 832
    if-nez p2, :cond_3

    .line 833
    const/16 v0, 0x2710

    .line 837
    :goto_1
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 835
    :cond_3
    mul-int/lit16 v0, p2, 0x3e8

    goto :goto_1

    .line 842
    :pswitch_1
    iput p1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutMode:I

    .line 843
    if-nez p2, :cond_4

    .line 844
    const v0, 0xea60

    .line 848
    :goto_2
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 846
    :cond_4
    mul-int/lit16 v0, p2, 0x3e8

    goto :goto_2

    .line 859
    :pswitch_2
    iput p1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutMode:I

    .line 860
    if-nez p2, :cond_5

    .line 861
    const/16 v0, 0x7530

    .line 865
    :goto_3
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 863
    :cond_5
    mul-int/lit16 v0, p2, 0x3e8

    goto :goto_3

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method radioMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v6, 0x34

    const/4 v5, 0x0

    .line 588
    const/4 v2, 0x0

    .line 590
    .local v2, radioCmd:Ljava/lang/String;
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 593
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    const/16 v3, 0x6a

    if-ne p1, v3, :cond_1

    .line 594
    const-string v2, "C8290200"

    .line 674
    :goto_0
    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {p0, p0, p1, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 677
    :cond_0
    return-void

    .line 595
    :cond_1
    const/16 v3, 0x6b

    if-ne p1, v3, :cond_2

    .line 598
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "DataObjectHandler"

    const-string v4, "RemoteException during radio shutdown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 602
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    const/16 v3, 0x6c

    if-ne p1, v3, :cond_3

    .line 603
    const/16 v3, 0x75

    sget v4, Lcom/htc/android/epst/EPST;->mRebootTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 604
    :cond_3
    const/16 v3, 0x96

    if-ne p1, v3, :cond_4

    .line 605
    invoke-direct {p0}, Lcom/htc/android/epst/internal/DataObjectHandler;->intentReboot()V

    goto :goto_0

    .line 606
    :cond_4
    const/16 v3, 0x69

    if-eq p1, v3, :cond_5

    const/16 v3, 0x71

    if-eq p1, v3, :cond_5

    const/16 v3, 0x6f

    if-ne p1, v3, :cond_6

    .line 608
    :cond_5
    const-string v2, "C8290500"

    .line 609
    const-string v3, "DataObjectHandler"

    const-string v4, "Enter LPM and add LPM timeout featue"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0, v6, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto :goto_0

    .line 613
    :cond_6
    const/16 v3, 0x97

    if-eq p1, v3, :cond_7

    const/16 v3, 0x98

    if-eq p1, v3, :cond_7

    const/16 v3, 0x99

    if-eq p1, v3, :cond_7

    const/16 v3, 0x9a

    if-ne p1, v3, :cond_8

    .line 615
    :cond_7
    const-string v2, "C8290100"

    .line 617
    const-string v3, "DataObjectHandler"

    const-string v4, "Enter LPM and add LPM timeout featue"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0, v6, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto :goto_0

    .line 621
    :cond_8
    const/16 v3, 0x70

    if-ne p1, v3, :cond_9

    .line 623
    const-string v2, "C8C901"

    .line 624
    const-string v3, "DataObjectHandler"

    const-string v4, "REFURBISH_RADIO_REFURBISH and add REFURBISH timeout featue"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v3, 0x35

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto :goto_0

    .line 628
    :cond_9
    const/16 v3, 0x72

    if-ne p1, v3, :cond_a

    .line 630
    const-string v2, "C827D10101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    .line 631
    const-string v3, "DataObjectHandler"

    const-string v4, "Send RESTORE_RADIO_NAI and add nai timeout feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 v3, 0x36

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto/16 :goto_0

    .line 635
    :cond_a
    const/16 v3, 0x9b

    if-ne p1, v3, :cond_b

    .line 637
    const-string v2, "C8C912"

    .line 638
    const-string v3, "DataObjectHandler"

    const-string v4, "Send scrtncommand and add SCRTN timeout feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v3, 0x39

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto/16 :goto_0

    .line 645
    :cond_b
    const/16 v3, 0x9c

    if-ne p1, v3, :cond_c

    .line 647
    const-string v2, "C827531F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    .line 648
    const-string v3, "DataObjectHandler"

    const-string v4, "Send command and add clear REBURBISH date timeout feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v3, 0x3a

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto/16 :goto_0

    .line 650
    :cond_c
    const/16 v3, 0x9d

    if-ne p1, v3, :cond_d

    .line 652
    const-string v2, "C827431F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    .line 653
    const-string v3, "DataObjectHandler"

    const-string v4, "Send command and add clear REBURBISH status timeout feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v3, 0x3b

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    goto/16 :goto_0

    .line 657
    :cond_d
    const/16 v3, 0x9e

    if-ne p1, v3, :cond_10

    .line 658
    const/4 v2, 0x0

    .line 659
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_e

    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current Thread id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_e
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "DataObjectHandler"

    const-string v4, "Send EVENT_RIL_REQUEST_RESATORE_SSLONG_1 and send resetSSLONGcommand"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_f
    const/16 v3, 0x3e7

    const-string v4, "C827551F01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, p0, v3, v4}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 662
    const/16 v3, 0x74

    const-string v4, "C827D00100"

    invoke-virtual {p0, p0, v3, v4}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :cond_10
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 670
    :catch_1
    move-exception v0

    .line 671
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "DataObjectHandler"

    const-string v4, "RemoteException during radio shutdown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public removeTimeout(I)V
    .locals 0
    .parameter "iMode"

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/internal/DataObjectHandler;->removeMessages(I)V

    .line 876
    return-void
.end method

.method sendCmd(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 7
    .parameter "handler"
    .parameter "identifier"
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    .line 390
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isSupportDMAgent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isDMConnectSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 396
    const-string v2, "DataObjectHandler"

    const-string v3, "DMAgent hasn\'t connected yet!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    :goto_0
    return-void

    .line 400
    :cond_3
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 401
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 403
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-static {p3}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 404
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "DataObjectHandler"

    const-string v3, "sendCmd.sendMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendCmdGeneric(Lcom/htc/android/epst/internal/Record;Ljava/lang/String;II)V
    .locals 7
    .parameter "record"
    .parameter "command"
    .parameter "identifier"
    .parameter "appends"

    .prologue
    const/4 v6, 0x0

    .line 420
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCmdGeneric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (NV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isSupportDMAgent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isDMConnectSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 425
    const-string v3, "DataObjectHandler"

    const-string v4, "DMAgent hasn\'t connected yet!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    iput-object p1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutRecord:Lcom/htc/android/epst/internal/Record;

    .line 429
    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    .line 431
    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 433
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 435
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 436
    invoke-static {p2}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 438
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    iput p4, v2, Landroid/os/Message;->arg1:I

    .line 440
    monitor-enter p1

    .line 442
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "DataObjectHandler"

    const-string v4, "sendCmdGeneric.sendMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_3
    sget-boolean v3, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " process start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    :try_start_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method sendWriteCmd(Lcom/htc/android/epst/internal/Record;ILjava/lang/String;I)V
    .locals 6
    .parameter "record"
    .parameter "sequence"
    .parameter "cmdtoSend"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 476
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWriteCmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (NV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isSupportDMAgent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isDMConnectSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 480
    const-string v2, "DataObjectHandler"

    const-string v3, "DMAgent hasn\'t connected yet!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    iput-object p1, p0, Lcom/htc/android/epst/internal/DataObjectHandler;->gTimeOutRecord:Lcom/htc/android/epst/internal/Record;

    .line 485
    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/epst/internal/DataObjectHandler;->postTimeOutHandler(II)V

    .line 487
    invoke-static {p0, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 489
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 491
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 492
    invoke-static {p3}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 497
    iget v2, p1, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    const/16 v3, 0xb2

    if-ne v2, v3, :cond_4

    .line 498
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "DataObjectHandler"

    const-string v3, "OoO APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_3
    sget-object v2, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    :cond_4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 506
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/internal/DataObjectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    sget-boolean v2, Lcom/htc/android/epst/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "DataObjectHandler"

    const-string v3, "sendWriteCmd.sendMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
