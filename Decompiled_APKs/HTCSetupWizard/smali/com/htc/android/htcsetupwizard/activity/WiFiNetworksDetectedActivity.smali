.class public Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;
.super Landroid/app/Activity;
.source "WiFiNetworksDetectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SHOW_WIFI_SETTING:Ljava/lang/String; = "oobe_show_wifi_setting"

.field private static final TAG:Ljava/lang/String; = "OOBE_WiFiNetworksDetected"


# instance fields
.field private isBoxChecked:I

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIntent:Landroid/content/Intent;

.field private mProgressImage:Landroid/widget/ImageView;

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private progressBarLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->progressBarLength:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    const v1, 0x7f030032

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->setContentView(I)V

    .line 73
    const v1, 0x7f0d003f

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 76
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 77
    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 79
    const v1, 0x7f0d0009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnNext:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    const v1, 0x7f0d0003

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnBack:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    const v1, 0x7f0d005c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 90
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    if-ne v1, v2, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDefaultValue()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "WifiDectectHasRun"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 59
    .local v0, WifiDectectHasRun:Z
    :goto_0
    if-ne v1, v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "WifiDetected"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    .line 67
    :goto_1
    return-void

    .end local v0           #WifiDectectHasRun:Z
    :cond_0
    move v0, v1

    .line 56
    goto :goto_0

    .line 63
    .restart local v0       #WifiDectectHasRun:Z
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oobe_show_wifi_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    .line 64
    const-string v1, "OOBE_WiFiNetworksDetected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), WifiDectectHasRun = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isBoxChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WifiDectectHasRun"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WifiDetected"

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    const-string v0, "OOBE_WiFiNetworksDetected"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 107
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->isBoxChecked:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 114
    :sswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "WifiDetected"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->finish()V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "WifiDetected"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->finish()V

    goto :goto_0

    .line 110
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
    .line 50
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->initialize()V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    const-string v0, "OOBE_WiFiNetworksDetected"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->setDefaultValue()V

    .line 45
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->initialize()V

    .line 46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 145
    const-string v0, "OOBE_WiFiNetworksDetected"

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

    .line 147
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "WifiDetected"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/WiFiNetworksDetectedActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 157
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 147
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
    .line 132
    const-string v0, "OOBE_WiFiNetworksDetected"

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

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 136
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method
