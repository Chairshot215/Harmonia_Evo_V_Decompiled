.class public Lcom/htc/feedback/FeedbackBugReportActivity;
.super Landroid/app/Activity;
.source "FeedbackBugReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/feedback/FeedbackBugReportActivity$1;,
        Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BugreportCollectDialog"


# instance fields
.field private mDumpStateFile:Ljava/lang/String;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/htc/feedback/FeedbackBugReportActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/feedback/FeedbackBugReportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$184(Lcom/htc/feedback/FeedbackBugReportActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/feedback/FeedbackBugReportActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/feedback/FeedbackBugReportActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/htc/feedback/FeedbackBugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationErrorReport;

    .line 24
    .local v7, report:Landroid/app/ApplicationErrorReport;
    if-nez v7, :cond_0

    .line 25
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/htc/feedback/FeedbackService;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/feedback/FeedbackBugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v6}, Lcom/htc/feedback/FeedbackBugReportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/feedback/FeedbackBugReportActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/bugreport_anr_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v7, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;

    .line 30
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/htc/feedback/FeedbackBugReportActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;

    invoke-direct {v2, p0, v1}, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;-><init>(Lcom/htc/feedback/FeedbackBugReportActivity;Lcom/htc/feedback/FeedbackBugReportActivity$1;)V

    const-string v1, "DumpStateMonitor"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    return-void
.end method
