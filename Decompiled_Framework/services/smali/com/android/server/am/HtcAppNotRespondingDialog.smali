.class Lcom/android/server/am/HtcAppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "HtcAppNotRespondingDialog.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_CLOSE:I = 0x1

.field static final FORCE_CLOSE_AND_AUTO_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcAppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_AUTO_REPORT:I = 0x5

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 14

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/server/am/HtcAppNotRespondingDialog$1;

    invoke-direct {v10, p0}, Lcom/android/server/am/HtcAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V

    iput-object v10, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_0
    const-string v10, "com.htc.feedback"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "htc_error_report_auto_send"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setCancelable(Z)V

    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    :goto_3
    const-wide/high16 v8, 0x400c

    :try_start_1
    sget-object v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    :goto_4
    if-eqz v1, :cond_7

    const-string v10, "msg_app_anr_auto"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-wide/high16 v10, 0x4010

    cmpg-double v10, v8, v10

    if-gez v10, :cond_6

    const/4 v10, -0x2

    const v11, 0x10403af

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v10, -0x3

    const v11, 0x10403b1

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    :cond_0
    :goto_5
    const v10, 0x10403aa

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x4000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application Not Responding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_3
    move-object v3, v4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    if-eqz v3, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :catch_1
    move-exception v2

    const-string v10, "HtcAppNotRespondingDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version parse error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    const-wide/high16 v10, 0x4010

    cmpl-double v10, v8, v10

    if-ltz v10, :cond_0

    const-string v10, "btn_close"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v10, -0x3

    const v11, 0x10403b1

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_5

    :cond_7
    const-string v10, "msg_app_anr"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-wide/high16 v10, 0x4010

    cmpg-double v10, v8, v10

    if-gez v10, :cond_9

    const/4 v10, -0x3

    const v11, 0x10403b1

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v10, :cond_8

    const-string v10, "btn_no"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const-string v10, "app_name"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_5

    :cond_8
    const/4 v10, -0x2

    const v11, 0x10403af

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_5

    :cond_9
    const-wide/high16 v10, 0x4010

    cmpl-double v10, v8, v10

    if-ltz v10, :cond_0

    const-string v10, "btn_dont_send"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v11, -0x3

    const v10, 0x10403b1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    const/4 v10, 0x5

    :goto_6
    invoke-virtual {v13, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v11, v12, v10}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    const-string v10, "btn_send_report"

    const-string v11, "string"

    const-string v12, "com.htc.feedback"

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/HtcAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_5

    :cond_a
    const/4 v10, 0x2

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method
