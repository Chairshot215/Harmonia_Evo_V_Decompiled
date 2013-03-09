.class final Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;
.super Ljava/lang/Object;
.source "SystemCrashChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckSystemCrashRunnable"
.end annotation


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mMsg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/SystemCrashChecker;


# direct methods
.method constructor <init>(Lcom/htc/server/SystemCrashChecker;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->this$0:Lcom/htc/server/SystemCrashChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/last_crash_msg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    return-void
.end method

.method private parseEntryFile()Z
    .locals 5

    iget-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string v3, "SystemCrashChecker"

    const-string v4, "Error loading last system crash"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    throw v3

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->this$0:Lcom/htc/server/SystemCrashChecker;

    #getter for: Lcom/htc/server/SystemCrashChecker;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/htc/server/SystemCrashChecker;->access$000(Lcom/htc/server/SystemCrashChecker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v15, Ljava/io/File;

    const-string v2, "/data/misc/"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable$1;-><init>(Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;)V

    invoke-virtual {v15, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v12, v16

    array-length v0, v12

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v14, v12, v17

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->parseEntryFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SystemCrashChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detect system server crash type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    const-string v3, "native_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->this$0:Lcom/htc/server/SystemCrashChecker;

    #getter for: Lcom/htc/server/SystemCrashChecker;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/htc/server/SystemCrashChecker;->access$000(Lcom/htc/server/SystemCrashChecker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "native_crash"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->parseEntryFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_4
    new-instance v19, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v19 .. v19}, Landroid/app/ApplicationErrorReport;-><init>()V

    const-string v2, "android"

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    const-string v2, "system_server"

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mTag:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mMsg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    new-instance v11, Landroid/content/Intent;

    const-string v2, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "extra"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->this$0:Lcom/htc/server/SystemCrashChecker;

    #getter for: Lcom/htc/server/SystemCrashChecker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/SystemCrashChecker;->access$100(Lcom/htc/server/SystemCrashChecker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v2, "SystemCrashChecker"

    const-string v3, "Error in checking last system crash"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;->mExtra:Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
