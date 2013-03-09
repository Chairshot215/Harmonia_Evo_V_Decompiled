.class public Lcom/android/phone/EmergencyCallHandler;
.super Landroid/app/Activity;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallHandler$1;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    }
.end annotation


# static fields
.field public static final EMERGENCY_CALL_RETRY_KEY:Ljava/lang/String; = "emergency_call_retry_count"

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x64

.field private static final EVENT_TIMEOUT_EMERGENCY_CALL:I = 0xc8

.field public static final INITIAL_ATTEMPT:I = -0x1

.field public static final NUMBER_OF_RETRIES:I = 0x6

.field public static final TIME_BETWEEN_RETRIES_MS:I = 0x1388

.field private static sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    return-void
.end method

.method private constructDialog(I)Lcom/htc/app/HtcProgressDialog;
    .locals 4
    .parameter "retryCount"

    .prologue
    .line 267
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v0, 0x7f0e03c2

    .line 274
    .local v0, msgId:I
    :goto_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 276
    .local v1, pd:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f0e03c1

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 279
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 280
    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 281
    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 284
    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 286
    return-object v1

    .line 267
    .end local v0           #msgId:I
    .end local v1           #pd:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    const v0, 0x7f0e03c3

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 176
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "emergency_call_retry_count"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 179
    .local v4, retryCount:I
    new-instance v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    invoke-direct {v0, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    .line 180
    .local v0, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iput-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    .line 182
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHandler;->constructDialog(I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    .line 191
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    new-instance v5, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    invoke-direct {v5, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    sput-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    .line 213
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getImsRegistered()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->isECCtriggeredByIMS:Z

    .line 215
    if-ne v4, v9, :cond_1

    .line 217
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.phone.emergencycall"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->turnOnRadioDueToECC()V

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->finish()V

    .line 257
    return-void

    .line 241
    :cond_0
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 253
    .local v2, m:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
