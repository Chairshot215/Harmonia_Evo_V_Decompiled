.class public Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;
.super Landroid/app/Activity;
.source "SIPIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final CLS_CIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.cime.tutorial.RegionalCorrection"

.field private static final CLS_HTCIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.htcime.tutorial.RegionalCorrection"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final PKG_CIME:Ljava/lang/String; = "com.htc.android.cime"

.field private static final PKG_HTCIME:Ljava/lang/String; = "com.htc.android.htcime"

.field private static final SRV_CIME:Ljava/lang/String; = "com.htc.android.cime/.HTCIMEService"

.field private static final SRV_HTCIME:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field private static final TAG:Ljava/lang/String; = "OOBE_SIPIntroActivity"


# instance fields
.field private bImeFinish:Z

.field private mLaunchByIcon:Z

.field private mbBackFinish:Z

.field private mbCustomizeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbBackFinish:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mLaunchByIcon:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->bImeFinish:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    return-void
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 97
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 98
    const-string v8, "SelfFinishBackKeyPressed"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbBackFinish:Z

    .line 99
    const-string v8, "LaunchByIcon"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mLaunchByIcon:Z

    .line 100
    const-string v8, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, szCustomize:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 102
    const-string v8, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    iput-boolean v11, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    .line 107
    .end local v6           #szCustomize:Ljava/lang/String;
    :cond_0
    const v8, 0x7f030026

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setContentView(I)V

    .line 109
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 110
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 112
    iget-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    if-ne v8, v11, :cond_6

    .line 113
    const v8, 0x7f0d0012

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 114
    .local v4, layout:Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    .end local v4           #layout:Landroid/widget/RelativeLayout;
    :cond_1
    :goto_0
    const v8, 0x7f0d0046

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 126
    .local v2, etTouchToType:Landroid/widget/EditText;
    if-eqz v2, :cond_2

    .line 130
    const-string v8, "OOBE_SIPIntroActivity"

    const-string v9, "Set qwerty type as null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 132
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 133
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_2
    const v8, 0x7f0d0009

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 137
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_3
    const v8, 0x7f0d0003

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 141
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_4

    .line 142
    iget-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbBackFinish:Z

    if-ne v8, v11, :cond_7

    .line 143
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    :cond_4
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, strSipHint:Ljava/lang/String;
    const v8, 0x7f0d0045

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 154
    .local v7, tv_SipBack:Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 155
    if-eqz v5, :cond_5

    .line 156
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_5
    return-void

    .line 118
    .end local v0           #btnBack:Landroid/widget/Button;
    .end local v1           #btnNext:Landroid/widget/Button;
    .end local v2           #etTouchToType:Landroid/widget/EditText;
    .end local v5           #strSipHint:Ljava/lang/String;
    .end local v7           #tv_SipBack:Landroid/widget/TextView;
    :cond_6
    const v8, 0x7f0d003f

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 119
    .local v4, layout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_1

    .line 121
    const/4 v8, 0x6

    invoke-static {p0, v4, v8}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    goto/16 :goto_0

    .line 145
    .end local v4           #layout:Landroid/widget/LinearLayout;
    .restart local v0       #btnBack:Landroid/widget/Button;
    .restart local v1       #btnNext:Landroid/widget/Button;
    .restart local v2       #etTouchToType:Landroid/widget/EditText;
    :cond_7
    iget-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    if-ne v8, v11, :cond_8

    .line 146
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 149
    :cond_8
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showImeTutorial()V
    .locals 5

    .prologue
    .line 232
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->bImeFinish:Z

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, preferIME:Ljava/lang/String;
    const-string v2, "OOBE_SIPIntroActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perferIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.cime/.HTCIMEService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 239
    const-string v2, "com.htc.android.cime"

    const-string v3, "com.htc.android.cime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->bImeFinish:Z

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #preferIME:Ljava/lang/String;
    :cond_0
    return-void

    .line 242
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #preferIME:Ljava/lang/String;
    :cond_1
    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->showImeTutorial()V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setResult(I)V

    .line 215
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->finish()V

    goto :goto_0

    .line 220
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setResult(I)V

    .line 221
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->finish()V

    goto :goto_0

    .line 225
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->finish()V

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_2
        0x7f0d0009 -> :sswitch_1
        0x7f0d0046 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->initialize()V

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->initialize()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 266
    const-string v1, "OOBE_SIPIntroActivity"

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

    .line 268
    sparse-switch p1, :sswitch_data_0

    .line 291
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 270
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbCustomizeEnabled:Z

    if-eq v1, v0, :cond_0

    .line 274
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mbBackFinish:Z

    if-nez v1, :cond_1

    .line 275
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setResult(I)V

    .line 276
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 278
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->mLaunchByIcon:Z

    if-ne v1, v0, :cond_0

    .line 279
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SIPIntroActivity;->setResult(I)V

    .line 280
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 253
    const-string v0, "OOBE_SIPIntroActivity"

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

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 257
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 188
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 193
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 169
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 198
    const-string v0, "OOBE_SIPIntroActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
