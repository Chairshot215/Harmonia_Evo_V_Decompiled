.class public Lcom/htc/syncagent/activity/HTCStatusActivity;
.super Landroid/app/Activity;
.source "HTCStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private detectorHandler:Landroid/os/Handler;

.field private isReceiverRunning:Z

.field private mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

.field private mUsbDisconnect:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 28
    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->isReceiverRunning:Z

    .line 31
    new-instance v0, Lcom/htc/syncagent/activity/HTCStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/syncagent/activity/HTCStatusActivity$1;-><init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/syncagent/activity/HTCStatusActivity$2;-><init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    iput-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mUsbDisconnect:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/htc/syncagent/activity/HTCStatusActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->showStatusDialog(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->showMainActivity()V

    return-void
.end method

.method static synthetic access$2(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showMainActivity()V
    .locals 3

    .prologue
    .line 256
    const-string v1, "FDUI"

    const-string v2, "Show main activity"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 262
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 263
    const-class v1, Lcom/htc/syncagent/activity/HTCMainActivity;

    .line 262
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->finish()V

    .line 266
    return-void
.end method

.method private showStatusDialog(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 166
    const-string v5, "FDUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "status = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    .line 173
    :cond_0
    :try_start_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/activity/HTCStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 174
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 175
    .local v4, layout:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 227
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 228
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/htc/syncagent/activity/HTCStatusActivity$4;

    invoke-direct {v6, p0}, Lcom/htc/syncagent/activity/HTCStatusActivity$4;-><init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 245
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 252
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    :goto_1
    return-void

    .line 183
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #layout:Landroid/view/View;
    :pswitch_1
    const/high16 v6, 0x7f03

    .line 184
    const/high16 v5, 0x7f05

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/activity/HTCStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 183
    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 185
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f04002f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 188
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    if-nez v5, :cond_2

    .line 190
    new-instance v5, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    invoke-direct {v5, p0}, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;-><init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    iput-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    .line 191
    iget-object v5, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    invoke-virtual {v5}, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->start()V

    .line 194
    :cond_2
    sget-object v5, Lcom/htc/syncagent/util/HTCUICommon;->mSVC:Lcom/htc/syncagent/svc/HTCSyncService;

    if-nez v5, :cond_1

    .line 197
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v2, i:Landroid/content/Intent;
    const-string v5, "android.intent.action.htc.service"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v2}, Lcom/htc/syncagent/activity/HTCStatusActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 250
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #layout:Landroid/view/View;
    :pswitch_2
    const v6, 0x7f030001

    .line 206
    const v5, 0x7f050003

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/htc/syncagent/activity/HTCStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 205
    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 207
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 208
    const v6, 0x7f040031

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 209
    const v6, 0x7f04003c

    invoke-virtual {p0, v6}, Lcom/htc/syncagent/activity/HTCStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    new-instance v7, Lcom/htc/syncagent/activity/HTCStatusActivity$3;

    invoke-direct {v7, p0}, Lcom/htc/syncagent/activity/HTCStatusActivity$3;-><init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    .line 209
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const-string v1, "FDUI"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->setContentView(I)V

    .line 79
    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-nez v1, :cond_1

    .line 81
    sget-boolean v1, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/syncagent/util/HTCUICommon;->initialize(Landroid/content/Context;)V

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.htc.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "FDUI"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "FDUI"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 137
    :cond_0
    iput-object v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    invoke-virtual {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->interrupt()V

    .line 142
    iput-object v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mRecorder:Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;

    .line 144
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "FDUI"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    sget v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 118
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 119
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->showMainActivity()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_1
    sget v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-direct {p0, v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->showStatusDialog(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "FDUI"

    const-string v1, "onStart."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 99
    iget-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->isReceiverRunning:Z

    if-nez v0, :cond_0

    .line 101
    const-string v0, "FDUI"

    const-string v1, "register receiver!"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->isReceiverRunning:Z

    .line 103
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mUsbDisconnect:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 104
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->detecorHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "FDUI"

    const-string v1, "onStop."

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 150
    iget-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->isReceiverRunning:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "FDUI"

    const-string v1, "unregister receiver!"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->isReceiverRunning:Z

    .line 154
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity;->mUsbDisconnect:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->detecorHandler:Landroid/os/Handler;

    .line 157
    return-void
.end method
