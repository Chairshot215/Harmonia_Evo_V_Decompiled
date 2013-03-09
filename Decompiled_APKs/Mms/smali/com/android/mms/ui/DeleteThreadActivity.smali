.class public Lcom/android/mms/ui/DeleteThreadActivity;
.super Landroid/app/Activity;
.source "DeleteThreadActivity.java"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field mDeleteUri:Landroid/net/Uri;

.field private mDialog:Landroid/app/Dialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHtcThreadId:J

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    new-instance v0, Lcom/android/mms/ui/DeleteThreadActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteThreadActivity$1;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 128
    new-instance v0, Lcom/android/mms/ui/DeleteThreadActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteThreadActivity$2;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    new-instance v0, Lcom/android/mms/ui/DeleteThreadActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteThreadActivity$3;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DeleteThreadActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DeleteThreadActivity;->deleteThread(Landroid/net/Uri;)V

    return-void
.end method

.method private deleteThread(Landroid/net/Uri;)V
    .locals 7
    .parameter "mUri"

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 144
    move-object v0, p0

    .line 145
    .local v0, context:Landroid/content/Context;
    move-object v2, p1

    .line 148
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0, v3, v2, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v1, result:Landroid/content/Intent;
    invoke-virtual {p0, v6, v1}, Lcom/android/mms/ui/DeleteThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/mms/ui/MessagingController;->updateAllShhortcuts(Landroid/content/Context;IZ)V

    .line 174
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/DeleteThreadActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0201a4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "threadId"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->threadId:J

    .line 44
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "htcThread_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mHtcThreadId:J

    .line 46
    iget-wide v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mHtcThreadId:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_2

    .line 48
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    sget-object v3, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mHtcThreadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteUri:Landroid/net/Uri;

    .line 64
    :goto_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x20c01fc

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 66
    const v3, 0x7f0200d1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 67
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 68
    const v3, 0x20c015f

    iget-object v4, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 69
    const v3, 0x20c0164

    iget-object v4, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 71
    iget-wide v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->threadId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    .line 72
    const v3, 0x7f09002e

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 78
    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 79
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 82
    iput-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    .line 85
    :cond_0
    return-void

    .line 52
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mHtcThreadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0

    .line 53
    :cond_2
    iget-wide v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->threadId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_3

    .line 54
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/DeleteThreadActivity;->threadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "msgUri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "msgUri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, temp:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0

    .line 60
    .end local v2           #temp:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    goto :goto_0

    .line 74
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_5
    const v3, 0x7f0900ad

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/Dialog;

    throw v1
.end method
