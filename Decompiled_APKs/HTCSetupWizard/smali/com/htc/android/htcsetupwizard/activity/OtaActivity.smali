.class public Lcom/htc/android/htcsetupwizard/activity/OtaActivity;
.super Landroid/app/Activity;
.source "OtaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field public static final FAILED:I = 0x1a

.field public static final INITIAL:I = 0x0

.field public static final OTA_RESULT:Ljava/lang/String; = "ota_result"

.field public static final SUCCESS:I = 0x9

.field private static final TAG:Ljava/lang/String; = "OOBE_OtaActivity"

.field public static final TRY_AGAIN:I = 0xa


# instance fields
.field btnActivate:Landroid/widget/Button;

.field btnEmergencyCall:Landroid/widget/Button;

.field btnNext:Landroid/widget/Button;

.field private mbBackFinish:Z

.field private otaResult:I

.field tvOtaDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->mbBackFinish:Z

    return-void
.end method

.method private handleResult(I)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 250
    const-string v2, "OOBE_OtaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->otaResult:I

    .line 252
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ota_result"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    .line 255
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, congratulations:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->tvOtaDescription:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    .end local v0           #congratulations:Ljava/lang/String;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 261
    :cond_0
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_2
    if-nez p1, :cond_3

    .line 273
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v3, 0x7f0a0113

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_3
    const-string v2, "OOBE_OtaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", is not correct result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 92
    const-string v2, "SelfFinishBackKeyPressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->mbBackFinish:Z

    .line 95
    :cond_0
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->setContentView(I)V

    .line 97
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 99
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 100
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 101
    const/16 v2, 0x11

    invoke-static {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 103
    const v2, 0x7f0d003b

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->tvOtaDescription:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0d0029

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnEmergencyCall:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnEmergencyCall:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    const v2, 0x7f0d003c

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    .line 110
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_2
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    .line 114
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_3
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 218
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 219
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 220
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startOTA()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, otaIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.HtcOTASPDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 164
    const-string v0, "OOBE_OtaActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v3, 0x1a

    .line 239
    if-eqz p3, :cond_0

    .line 240
    const-string v1, "OTAResult"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->handleResult(I)V

    .line 247
    .end local v0           #result:I
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v1, "OOBE_OtaActivity"

    const-string v2, "No intent returned by OtaActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->handleResult(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 170
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->showEmergencyDial()V

    goto :goto_0

    .line 174
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->startOTA()V

    goto :goto_0

    .line 178
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->finish()V

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x7f0d0004 -> :sswitch_2
        0x7f0d0029 -> :sswitch_0
        0x7f0d003c -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->initialize()V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const-string v0, "OOBE_OtaActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->initialize()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    const-string v0, "OOBE_OtaActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 200
    const-string v1, "OOBE_OtaActivity"

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

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 204
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 205
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->setResult(I)V

    .line 206
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 187
    const-string v0, "OOBE_OtaActivity"

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

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 191
    :pswitch_0
    const v0, 0x7f0d0029

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    const-string v0, "OOBE_OtaActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 148
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    const-string v0, "OOBE_OtaActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->otaResult:I

    .line 124
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->otaResult:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaActivity;->handleResult(I)V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 153
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 159
    return-void
.end method
