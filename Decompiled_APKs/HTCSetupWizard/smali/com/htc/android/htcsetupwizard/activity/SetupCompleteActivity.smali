.class public Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;
.super Landroid/app/Activity;
.source "SetupCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLS_CIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.cime.tutorial.RegionalCorrection"

.field private static final CLS_HTCIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.htcime.tutorial.RegionalCorrection"

.field private static final PKG_CIME:Ljava/lang/String; = "com.htc.android.cime"

.field private static final PKG_HTCIME:Ljava/lang/String; = "com.htc.android.htcime"

.field private static final SRV_CIME:Ljava/lang/String; = "com.htc.android.cime/.HTCIMEService"

.field private static final SRV_HTCIME:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field private static final TAG:Ljava/lang/String; = "OOBE_SetupCompleteActivity"


# instance fields
.field private mbFinalPage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->mbFinalPage:Z

    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    const v4, 0x7f030024

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->setContentView(I)V

    .line 103
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 105
    .local v3, layout:Landroid/widget/LinearLayout;
    const/16 v4, 0x1c

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 107
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 108
    .local v0, btnBack:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v4, 0x7f0d0042

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 111
    .local v1, btnKeypadTutorial:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 114
    .local v2, btnNext:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->mbFinalPage:Z

    if-eqz v4, :cond_0

    .line 117
    const v4, 0x7f0a0013

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 118
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method private showImeTutorial()V
    .locals 5

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, preferIME:Ljava/lang/String;
    const-string v2, "OOBE_SetupCompleteActivity"

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

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v2, "com.htc.android.cime/.HTCIMEService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    const-string v2, "com.htc.android.cime"

    const-string v3, "com.htc.android.cime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 198
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 221
    const-string v0, "OOBE_SetupCompleteActivity"

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

    .line 231
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 134
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->showImeTutorial()V

    goto :goto_0

    .line 138
    :sswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->finish()V

    goto :goto_0

    .line 143
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->setResult(I)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->finish()V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_2
        0x7f0d0004 -> :sswitch_1
        0x7f0d0042 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->initialize()V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const-string v1, "OOBE_SetupCompleteActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "FinalPage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->mbFinalPage:Z

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->initialize()V

    .line 91
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 180
    const-string v0, "OOBE_SetupCompleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupCompleteActivity;->setResult(I)V

    .line 185
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 189
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    const-string v0, "OOBE_SetupCompleteActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 157
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 167
    const-string v0, "OOBE_SetupCompleteActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method
