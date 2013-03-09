.class public Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;
.super Landroid/app/Activity;
.source "GoogleLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_GOOGLE_LOGIN:I = 0x34

.field private static final DIALOG_YES_NO_MESSAGE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "OOBE_GoogleLoginActivity"


# instance fields
.field private mbBackFinish:Z

.field private mbScanAPCompl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->mbScanAPCompl:Z

    .line 68
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->mbBackFinish:Z

    return-void
.end method

.method private googleLogin()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 142
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 89
    const v4, 0x7f030011

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->setContentView(I)V

    .line 91
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 93
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 94
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 95
    const/16 v4, 0xa

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 97
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    const v4, 0x7f0d001d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 103
    .local v2, btnSetupAccount:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_1
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 108
    .local v1, btnNoLater:Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 197
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 202
    const-string v0, "OOBE_GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->finish()V

    .line 207
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 117
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->googleLogin()V

    .line 119
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->finish()V

    goto :goto_0

    .line 124
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->finish()V

    goto :goto_0

    .line 129
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->finish()V

    goto :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_2
        0x7f0d0004 -> :sswitch_1
        0x7f0d001d -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->initialize()V

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    const-string v1, "OOBE_GoogleLoginActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->initialize()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "SelfFinishBackKeyPressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->mbBackFinish:Z

    .line 79
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 175
    const-string v1, "OOBE_GoogleLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sparse-switch p1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 179
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 180
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GoogleLoginActivity;->setResult(I)V

    .line 181
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    const-string v0, "OOBE_GoogleLoginActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 152
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 162
    const-string v0, "OOBE_GoogleLoginActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
