.class public Lcom/htc/syncagent/util/HTCUICommon;
.super Ljava/lang/Object;
.source "HTCUICommon.java"


# static fields
.field private static final ADB_FLAG:Ljava/lang/String; = "ADB_SAVE"

.field private static final ADB_VALUE:Ljava/lang/String; = "ADB_VALUE"

.field public static final CONFIG_ACTION:Ljava/lang/String; = "com.fd.httpd.syncend"

.field private static final CONFIG_FILE:Ljava/lang/String; = "config.dat"

.field private static final CONFIG_FOLDER:Ljava/lang/String; = "config"

.field public static final FD_ACTIVITY_DETECTOR:I = 0x1

.field public static final FD_ACTIVITY_MAIN:I = 0x0

.field public static final FD_ACTIVITY_NAME_DETECTOR:Ljava/lang/String; = "HTCStatusActivity"

.field public static final FD_ACTIVITY_NAME_MAIN:Ljava/lang/String; = "HTCMainActivity"

.field public static final FD_ACTIVITY_NAME_SWITCH:Ljava/lang/String; = "SwitchUsbSettings"

.field public static final FD_ACTIVITY_NAME_USBSETTING:Ljava/lang/String; = "UsbConnectionSettings"

.field public static final FD_UI_NOTIFICATION_ID:I = 0x1

.field public static final FD_UI_THREAD_TIME_OUT:I = 0x3e8

.field public static final FD_UI_Tag:Ljava/lang/String; = "FDUI"

.field public static final FD_UI_USB_STATUS_PORT:I = 0x1ed2

.field public static final FD_UI_USB_SYNC_PORT:I = 0x1f36

.field public static final FD_USB_CLOSE_APP:I = 0x6

.field public static final FD_USB_READY_FOR_SYNC:I = 0x3

.field public static final FD_USB_SERCHING:I = 0x0

.field public static final FD_USB_SERCHING_FAILED:I = 0x2

.field public static final FD_USB_SERCHING_READY:I = 0x1

.field public static final FD_USB_SOCKET_ERROR:I = 0x5

.field public static final FD_USB_START_SYNC:I = 0x4

.field public static final START_ACTION:Ljava/lang/String; = "action.startPCTool"

.field public static final STOP_ACTION:Ljava/lang/String; = "action.stopPCTool"

.field private static final TIME_FILE:Ljava/lang/String; = "time.dat"

.field private static final TIME_FOLDER:Ljava/lang/String; = "time"

.field public static bClose:Z = false

.field public static bHasInit:Z = false

.field public static bLog2File:Z = false

.field public static context:Landroid/content/Context; = null

.field public static detecorHandler:Landroid/os/Handler; = null

.field private static instance:Lcom/htc/syncagent/util/HTCUICommon; = null

.field public static mNM:Landroid/app/NotificationManager; = null

.field public static mSVC:Lcom/htc/syncagent/svc/HTCSyncService; = null

.field public static mainHandler:Landroid/os/Handler; = null

.field public static nCurrentStatus:I = 0x0

.field private static preferenceName:Ljava/lang/String; = null

.field public static final syncend_ACTION:Ljava/lang/String; = "psclient.intent.action.sync_end"


# instance fields
.field protected bAdbInit:Z

.field private mAdbRecorder:Landroid/content/SharedPreferences;

.field protected mEnableAdb:I

.field private statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

.field private syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->instance:Lcom/htc/syncagent/util/HTCUICommon;

    .line 36
    const-string v0, "com.htc.syncagent"

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->preferenceName:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    .line 46
    sput-boolean v2, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    .line 47
    sput-boolean v2, Lcom/htc/syncagent/util/HTCUICommon;->bClose:Z

    .line 48
    sput-boolean v2, Lcom/htc/syncagent/util/HTCUICommon;->bLog2File:Z

    .line 51
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->mSVC:Lcom/htc/syncagent/svc/HTCSyncService;

    .line 52
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->mNM:Landroid/app/NotificationManager;

    .line 54
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    .line 55
    sput-object v1, Lcom/htc/syncagent/util/HTCUICommon;->detecorHandler:Landroid/os/Handler;

    .line 89
    sput v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->mEnableAdb:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->bAdbInit:Z

    .line 86
    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    .line 87
    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    .line 93
    return-void
.end method

.method private getAdbState(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    .line 617
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 621
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getConfigPath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/syncagent/util/HTCUICommon;->mkdirs(Ljava/lang/String;)Z

    .line 266
    return-object v0
.end method

.method public static getInstance()Lcom/htc/syncagent/util/HTCUICommon;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->instance:Lcom/htc/syncagent/util/HTCUICommon;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/htc/syncagent/util/HTCUICommon;

    invoke-direct {v0}, Lcom/htc/syncagent/util/HTCUICommon;-><init>()V

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->instance:Lcom/htc/syncagent/util/HTCUICommon;

    .line 101
    :cond_0
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->instance:Lcom/htc/syncagent/util/HTCUICommon;

    return-object v0
.end method

.method private getTimePath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/syncagent/util/HTCUICommon;->mkdirs(Ljava/lang/String;)Z

    .line 274
    return-object v0
.end method

.method private mkdirs(Ljava/lang/String;)Z
    .locals 3
    .parameter "tmpPath"

    .prologue
    .line 252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, tmpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, p:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/syncagent/util/HTCUICommon;->mkdirs(Ljava/lang/String;)Z

    .line 258
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    return v2
.end method

.method private readConfigFile()Ljava/lang/String;
    .locals 7

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 323
    .local v2, datContent:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, configPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "config.dat"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 339
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #configPath:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    :goto_0
    return-object v2

    .line 333
    .restart local v1       #configPath:Ljava/lang/String;
    .restart local v4       #f:Ljava/io/File;
    :cond_0
    const-string v5, "FDUI"

    const-string v6, "config file not exist"

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v1           #configPath:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 337
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "FDUI"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readTimeFile()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v4, 0x0

    .line 377
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->getTimePath()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, timePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v7, "time.dat"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 383
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 384
    .local v3, f_in:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v5, o_in:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/HashMap;

    move-object v4, v0

    .line 387
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 396
    .end local v2           #f:Ljava/io/File;
    .end local v3           #f_in:Ljava/io/FileInputStream;
    .end local v5           #o_in:Ljava/io/ObjectInputStream;
    .end local v6           #timePath:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 390
    .restart local v2       #f:Ljava/io/File;
    .restart local v6       #timePath:Ljava/lang/String;
    :cond_0
    const-string v7, "FDUI"

    const-string v8, "time file not exist"

    invoke-static {v7, v8}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v2           #f:Ljava/io/File;
    .end local v6           #timePath:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 394
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAdbState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 627
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set adb state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 632
    const-string v1, "adb_enabled"

    .line 631
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    :goto_0
    return-void

    .line 635
    :cond_0
    const-string v0, "FDUI"

    .line 636
    const-string v1, "context is null, set debug mode error"

    .line 635
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeTimeFile(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->getTimePath()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, timePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, "time.dat"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 353
    :cond_0
    const-string v5, "FDUI"

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "time file path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 358
    .local v2, f_out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 360
    .local v3, o_out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1           #f:Ljava/io/File;
    .end local v2           #f_out:Ljava/io/FileOutputStream;
    .end local v3           #o_out:Ljava/io/ObjectOutputStream;
    .end local v4           #timePath:Ljava/lang/String;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 367
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addSyncMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    invoke-virtual {v0, p1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->addSendMsg(Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method

.method public bytes2String([B)Ljava/lang/String;
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .line 281
    .local v1, tmp:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 289
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 283
    :cond_0
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 281
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    div-int/lit8 v2, v0, 0x2

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    goto :goto_1
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    .line 127
    invoke-virtual {p0}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    .line 129
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    .line 130
    const-string v1, "FDUI"

    const-string v2, "HTCUICommon finish!"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentActivity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 237
    :try_start_0
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    .line 238
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    check-cast v0, Landroid/app/ActivityManager;

    .line 239
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 240
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 246
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v3

    .line 242
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 245
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "FDUI"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, ""

    goto :goto_0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    const-string v1, "FDUI"

    const-string v2, "get imei"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, tManager:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 535
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    .line 536
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    .end local v0           #tManager:Landroid/telephony/TelephonyManager;
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 539
    .restart local v0       #tManager:Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 544
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 106
    sput-object p1, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    .line 109
    invoke-static {}, Lcom/htc/syncagent/util/HTCUILog;->init()V

    .line 111
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "FDUI"

    const-string v1, "init preference."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    .line 118
    :cond_0
    sput v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 119
    const-string v0, "FDUI"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public declared-synchronized isStatusThreadAlive()Z
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    invoke-virtual {v0}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 221
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSyncThreadAlive()Z
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    invoke-virtual {v0}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 230
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadSyncTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 493
    const-string v2, ""

    .line 496
    .local v2, loadTime:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->readConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, tag:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->readTimeFile()Ljava/util/HashMap;

    move-result-object v3

    .line 502
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 524
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #tag:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 517
    .restart local v4       #tag:Ljava/lang/String;
    :cond_1
    const-string v5, "FDUI"

    const-string v6, "tag get null"

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v4           #tag:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 522
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public revertADBState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 587
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 589
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->preferenceName:Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 595
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    const-string v2, "ADB_VALUE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 596
    .local v0, mEnableAdb:I
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saved adb value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eq v4, v0, :cond_1

    .line 600
    invoke-direct {p0, v5}, Lcom/htc/syncagent/util/HTCUICommon;->setAdbState(I)V

    .line 601
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 603
    const-wide/16 v1, 0x514

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 604
    invoke-direct {p0, v0}, Lcom/htc/syncagent/util/HTCUICommon;->setAdbState(I)V

    .line 611
    .end local v0           #mEnableAdb:I
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    const-string v1, "FDUI"

    const-string v2, "preference open failed."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveADBState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 549
    iget-object v3, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 551
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->preferenceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_2

    .line 557
    iget-object v3, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    const-string v4, "ADB_SAVE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 560
    .local v1, flag:Z
    if-nez v1, :cond_1

    .line 562
    const-string v3, "FDUI"

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device Usb debug state has not been saved, value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    iget v5, p0, Lcom/htc/syncagent/util/HTCUICommon;->mEnableAdb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 563
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/htc/syncagent/util/HTCUICommon;->getAdbState(Landroid/content/Context;)I

    move-result v2

    .line 566
    .local v2, mEnableAdb:I
    iget-object v3, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 567
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ADB_VALUE"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 568
    const-string v3, "ADB_SAVE"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    const-string v3, "FDUI"

    .line 571
    const-string v4, "device Usb debug state is saved succefull."

    .line 570
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #mEnableAdb:I
    :goto_0
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v3

    invoke-direct {v3, v6}, Lcom/htc/syncagent/util/HTCUICommon;->setAdbState(I)V

    .line 583
    .end local v1           #flag:Z
    :goto_1
    return-void

    .line 574
    .restart local v1       #flag:Z
    :cond_1
    const-string v3, "FDUI"

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device Usb debug state has been saved, value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    iget v5, p0, Lcom/htc/syncagent/util/HTCUICommon;->mEnableAdb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v1           #flag:Z
    :cond_2
    const-string v3, "FDUI"

    const-string v4, "preference open failed."

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveSyncTime()V
    .locals 14

    .prologue
    const/16 v12, 0xa

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->readConfigFile()Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, tag:Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 407
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v10, timeBuilder:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 409
    .local v0, c:Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 410
    .local v8, nYear:I
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 411
    .local v7, nMonth:I
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 414
    .local v4, nDay:I
    add-int/lit8 v7, v7, 0x1

    .line 416
    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 417
    .local v5, nHour:I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 418
    .local v6, nMinute:I
    const/16 v11, 0x9

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 420
    .local v3, nAMPM:I
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    if-ge v7, v12, :cond_1

    .line 424
    const-string v11, "-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    if-ge v4, v12, :cond_2

    .line 433
    const-string v11, "-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :goto_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    if-ge v5, v12, :cond_3

    .line 442
    const-string v11, " 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :goto_2
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    if-ge v6, v12, :cond_4

    .line 451
    const-string v11, ":0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    if-nez v3, :cond_5

    .line 461
    const-string v11, "AM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :goto_4
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->readTimeFile()Ljava/util/HashMap;

    move-result-object v2

    .line 469
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 471
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 474
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-direct {p0, v2}, Lcom/htc/syncagent/util/HTCUICommon;->writeTimeFile(Ljava/util/HashMap;)V

    .line 478
    const-string v11, "FDUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "save sync time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 478
    invoke-static {v11, v12}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #nAMPM:I
    .end local v4           #nDay:I
    .end local v5           #nHour:I
    .end local v6           #nMinute:I
    .end local v7           #nMonth:I
    .end local v8           #nYear:I
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #timeBuilder:Ljava/lang/StringBuilder;
    :goto_5
    return-void

    .line 427
    .restart local v0       #c:Ljava/util/Calendar;
    .restart local v3       #nAMPM:I
    .restart local v4       #nDay:I
    .restart local v5       #nHour:I
    .restart local v6       #nMinute:I
    .restart local v7       #nMonth:I
    .restart local v8       #nYear:I
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v10       #timeBuilder:Ljava/lang/StringBuilder;
    :cond_1
    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v0           #c:Ljava/util/Calendar;
    .end local v3           #nAMPM:I
    .end local v4           #nDay:I
    .end local v5           #nHour:I
    .end local v6           #nMinute:I
    .end local v7           #nMonth:I
    .end local v8           #nYear:I
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #timeBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 487
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 436
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #c:Ljava/util/Calendar;
    .restart local v3       #nAMPM:I
    .restart local v4       #nDay:I
    .restart local v5       #nHour:I
    .restart local v6       #nMinute:I
    .restart local v7       #nMonth:I
    .restart local v8       #nYear:I
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v10       #timeBuilder:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_3
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 454
    :cond_4
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 464
    :cond_5
    const-string v11, "PM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 482
    .end local v0           #c:Ljava/util/Calendar;
    .end local v3           #nAMPM:I
    .end local v4           #nDay:I
    .end local v5           #nHour:I
    .end local v6           #nMinute:I
    .end local v7           #nMonth:I
    .end local v8           #nYear:I
    .end local v10           #timeBuilder:Ljava/lang/StringBuilder;
    :cond_6
    const-string v11, "FDUI"

    const-string v12, "tag get null"

    invoke-static {v11, v12}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public declared-synchronized startStatusThread()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    const-string v1, "status thread"

    invoke-direct {v0, v1}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    .line 143
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    invoke-virtual {v0}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSyncThread()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    const-string v1, "sync thread"

    invoke-direct {v0, v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    .line 180
    iget-object v0, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    invoke-virtual {v0}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopStatusThread()V
    .locals 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;

    invoke-virtual {v2}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/htc/syncagent/util/HTCUICommon;->statusThread:Lcom/htc/syncagent/thread/HTCStatusDetectorThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    const-string v2, "FDUI"

    const-string v3, "stop service"

    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.htc.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v2, Lcom/htc/syncagent/util/HTCUICommon;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    monitor-exit p0

    return-void

    .line 155
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 169
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 171
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopSyncThread()V
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    invoke-virtual {v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->syncThread:Lcom/htc/syncagent/thread/HTCSyncDetectorThread;

    .line 199
    invoke-virtual {p0}, Lcom/htc/syncagent/util/HTCUICommon;->isStatusThreadAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 201
    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 203
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :cond_2
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateADBFlag(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 642
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 644
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->preferenceName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/htc/syncagent/util/HTCUICommon;->mAdbRecorder:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ADB_SAVE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v1, "ADB_VALUE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    const-string v1, "FDUI"

    const-string v2, "update adb flag."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 657
    :cond_1
    const-string v1, "FDUI"

    const-string v2, "preference open failed."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeConfigFile([B)V
    .locals 8
    .parameter "array"

    .prologue
    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/htc/syncagent/util/HTCUICommon;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, configPath:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/syncagent/util/HTCUICommon;->bytes2String([B)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, datContent:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "config.dat"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v4, f:Ljava/io/File;
    const-string v5, "FDUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "config path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v5, "FDUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dat content: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v5, "FDUI"

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "config file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 305
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 309
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v1           #configPath:Ljava/lang/String;
    .end local v2           #datContent:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 314
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "FDUI"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
