.class public Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;
.super Landroid/app/Activity;
.source "HtcAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_HtcAccount"


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnSetUpHtcAccount:Landroid/widget/Button;

.field private mbRetGetAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mbRetGetAccount:Z

    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 55
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.htc.cs"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 57
    .local v0, account:[Landroid/accounts/Account;
    const-string v2, "OOBE_HtcAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize, mbRetGetAccount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mbRetGetAccount:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    array-length v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mbRetGetAccount:Z

    if-ne v2, v3, :cond_4

    .line 59
    :cond_0
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->setContentView(I)V

    .line 63
    :goto_0
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 66
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 67
    const/16 v2, 0x15

    invoke-static {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 69
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnNext:Landroid/widget/Button;

    .line 70
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_1
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnBack:Landroid/widget/Button;

    .line 75
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_2
    const v2, 0x7f0d001f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnSetUpHtcAccount:Landroid/widget/Button;

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnSetUpHtcAccount:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mBtnSetUpHtcAccount:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_3
    return-void

    .line 61
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_4
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 94
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "idata"

    .prologue
    .line 132
    const-string v0, "OOBE_HtcAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->mbRetGetAccount:Z

    .line 135
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->initialize()V

    .line 137
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 100
    :sswitch_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->finish()V

    goto :goto_0

    .line 106
    :sswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->finish()V

    goto :goto_0

    .line 112
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "IntentSource"

    const-string v3, "SetupWizard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/16 v2, 0x15

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "OOBE_HtcAccount"

    const-string v3, " CS_login apk doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_HtcAccount"

    const-string v3, " CS_login , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v2, "OOBE_HtcAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CS_login exception cause by, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "OOBE_HtcAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CS_login exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
        0x7f0d001f -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 48
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->initialize()V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->initialize()V

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 184
    const-string v0, "OOBE_HtcAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sparse-switch p1, :sswitch_data_0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/HtcAccountActivity;->setResult(I)V

    .line 190
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 195
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const-string v0, "OOBE_HtcAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 175
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 147
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 159
    const-string v0, "OOBE_HtcAccount"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
