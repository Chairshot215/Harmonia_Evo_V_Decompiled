.class public Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;
.super Landroid/app/Activity;
.source "BackUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final RESULT_BACKUP_OK:I = 0x31

.field private static final TAG:Ljava/lang/String; = "OOBE_BackUpActivity"


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIntent:Landroid/content/Intent;

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private mbCustomizeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mIntent:Landroid/content/Intent;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    return-void
.end method

.method private asyncCheckGoogleAccount()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, account:Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 128
    .local v2, authDescs:[Landroid/accounts/AuthenticatorDescription;
    if-eqz v2, :cond_2

    .line 129
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 130
    aget-object v5, v2, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 133
    aget-object v4, v1, v4

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 134
    const-string v4, "OOBE_BackUpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Has Google account type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", account = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v4, 0x1

    .line 143
    .end local v3           #i:I
    :cond_0
    :goto_1
    return v4

    .line 129
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3           #i:I
    :cond_2
    const-string v5, "OOBE_BackUpActivity"

    const-string v6, "AuthenticatorTypes not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->setContentView(I)V

    .line 83
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 84
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 86
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    if-ne v1, v2, :cond_4

    .line 87
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 88
    .local v0, layout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    .end local v0           #layout:Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    const v1, 0x7f0d0009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnNext:Landroid/widget/Button;

    .line 100
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnNext:Landroid/widget/Button;

    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 107
    :cond_1
    const v1, 0x7f0d0003

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnBack:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 113
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    .line 114
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "backup_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    const-string v1, "OOBE_BackUpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize() backup_enabledis checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    return-void

    .line 92
    :cond_4
    const v1, 0x7f0d003f

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    .local v0, layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 95
    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    goto/16 :goto_0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_5
    move v1, v3

    .line 114
    goto :goto_1
.end method

.method private setSDBackupEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 216
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 217
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 149
    .local v0, bIsChecked:Z
    const-string v2, "OOBE_BackUpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() is checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    if-ne v2, v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_enabled"

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 157
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->setSDBackupEnabled(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 164
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->finish()V

    goto :goto_0

    .line 170
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->finish()V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->initialize()V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const-string v2, "OOBE_BackUpActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 61
    const-string v2, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, szCustomize:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 63
    const-string v2, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    .line 67
    .end local v1           #szCustomize:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->mbCustomizeEnabled:Z

    if-nez v2, :cond_1

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->initialize()V

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 193
    const-string v0, "OOBE_BackUpActivity"

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

    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 206
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackUpActivity;->setResult(I)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 204
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
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
    .line 180
    const-string v0, "OOBE_BackUpActivity"

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

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method
