.class final Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;
.super Ljava/lang/Object;
.source "FeedbackBugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/FeedbackBugReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpStateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/FeedbackBugReportActivity;


# direct methods
.method private constructor <init>(Lcom/htc/feedback/FeedbackBugReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/feedback/FeedbackBugReportActivity;Lcom/htc/feedback/FeedbackBugReportActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;-><init>(Lcom/htc/feedback/FeedbackBugReportActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 39
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/dumpstate"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "-z"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "-o"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #getter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$100(Lcom/htc/feedback/FeedbackBugReportActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 44
    .local v3, processBuilder:Ljava/lang/ProcessBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 46
    .local v4, threadStart:J
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 47
    .local v0, dumpstateProc:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 48
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    const-string v7, ".txt.gz"

    invoke-static {v6, v7}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$184(Lcom/htc/feedback/FeedbackBugReportActivity;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .end local v0           #dumpstateProc:Ljava/lang/Process;
    :goto_1
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #getter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v6}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$200(Lcom/htc/feedback/FeedbackBugReportActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 58
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #getter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v6}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$200(Lcom/htc/feedback/FeedbackBugReportActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 59
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #setter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v6, v9}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$202(Lcom/htc/feedback/FeedbackBugReportActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 62
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    const-class v7, Lcom/htc/feedback/FeedbackService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-virtual {v6}, Lcom/htc/feedback/FeedbackBugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 64
    const-string v6, "dumpstate"

    iget-object v7, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #getter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$100(Lcom/htc/feedback/FeedbackBugReportActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-virtual {v6, v2}, Lcom/htc/feedback/FeedbackBugReportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-virtual {v6}, Lcom/htc/feedback/FeedbackBugReportActivity;->finish()V

    .line 69
    return-void

    .line 49
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BugreportCollectDialog"

    const-string v7, "error in dumpstate progress "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    iget-object v6, p0, Lcom/htc/feedback/FeedbackBugReportActivity$DumpStateRunnable;->this$0:Lcom/htc/feedback/FeedbackBugReportActivity;

    #setter for: Lcom/htc/feedback/FeedbackBugReportActivity;->mDumpStateFile:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/htc/feedback/FeedbackBugReportActivity;->access$102(Lcom/htc/feedback/FeedbackBugReportActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 40
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #processBuilder:Ljava/lang/ProcessBuilder;
    .end local v4           #threadStart:J
    :catch_1
    move-exception v6

    goto :goto_0
.end method
