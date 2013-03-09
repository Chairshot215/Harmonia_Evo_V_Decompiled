.class Lcom/android/server/am/HtcAppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "HtcAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_AUTO_REPORT:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppErrorDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/am/HtcAppErrorDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/HtcAppErrorDialog$1;-><init>(Lcom/android/server/am/HtcAppErrorDialog;)V

    iput-object v8, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    const-string v8, "com.htc.feedback"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "htc_error_report_auto_send"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-object p3, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_2
    const-wide/high16 v6, 0x400c

    :try_start_1
    sget-object v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/HtcAppErrorDialog;->setCancelable(Z)V

    if-eqz v0, :cond_4

    const-string v8, "msg_app_crash_auto"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/HtcAppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-wide/high16 v8, 0x4010

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    const/4 v8, -0x2

    const v9, 0x10403af

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    :cond_0
    :goto_4
    const v8, 0x10403a7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/HtcAppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/HtcAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/am/HtcAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Application Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const/4 v8, 0x2

    :goto_5
    invoke-virtual {v10, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v10, 0x493e0

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_2
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_2

    :catch_1
    move-exception v1

    const-string v8, "HtcAppErrorDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "version parse error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const-wide/high16 v8, 0x4010

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_0

    const-string v8, "btn_close"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_4
    const-string v8, "msg_app_crash"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/HtcAppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-wide/high16 v8, 0x4010

    cmpg-double v8, v6, v8

    if-gez v8, :cond_6

    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v8, :cond_5

    const-string v8, "btn_no"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const-string v8, "app_name"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_5
    const/4 v8, -0x2

    const v9, 0x10403af

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_6
    const-wide/high16 v8, 0x4010

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_0

    const-string v8, "btn_dont_send"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    const-string v8, "btn_send_report"

    const-string v9, "string"

    const-string v10, "com.htc.feedback"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/HtcAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/HtcAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method
