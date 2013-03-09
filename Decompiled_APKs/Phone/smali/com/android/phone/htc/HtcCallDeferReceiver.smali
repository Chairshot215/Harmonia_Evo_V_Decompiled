.class public Lcom/android/phone/htc/HtcCallDeferReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCallDeferReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SNOOZE_TIMEOUT:J = 0x927c0L

.field private static final ID_DEFER_CALL_REMINDER:I = 0x1

.field private static final PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "HtcCallDeferReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private calculateInformation(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, result:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 164
    const-string v3, "HtcCallDeferReceiver"

    const-string v4, "calculateInformation: no callerinfo is given!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-object v1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, name:Ljava/lang/String;
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    iget v3, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {p1, v3}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onReceivePlaceCall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 188
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 189
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, p2}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/htc/lockscreen/HtcLSUtility;->removeView(Landroid/content/Context;Ljava/lang/String;I)V

    .line 195
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/phone/util/CallDeferUtils;->createDialIntent(Lcom/android/internal/telephony/CallerInfo;Z)Landroid/content/Intent;

    move-result-object v1

    .line 197
    .local v1, dialIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 201
    const-string v2, "HtcCallDeferReceiver"

    const-string v3, "make call without correct intent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {v1}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private onReceiveReminder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-static {p2}, Lcom/android/phone/util/CallDeferUtils;->isLastDeferRequest(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 80
    .local v1, keyguard:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/phone/htc/HtcCallDeferReceiver;->updateLockscreenReminder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 90
    .end local v1           #keyguard:Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/phone/util/CallDeferUtils;->removeNotification(Landroid/content/Context;)V

    .line 91
    return-void

    .line 85
    .restart local v1       #keyguard:Landroid/app/KeyguardManager;
    :cond_1
    invoke-static {p2}, Lcom/android/phone/util/CallDeferUtils;->launchDeferDecision(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, callDecision:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onReceiveSnooze(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 209
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 210
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v1, p2}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/htc/lockscreen/HtcLSUtility;->removeView(Landroid/content/Context;Ljava/lang/String;I)V

    .line 215
    invoke-static {v1}, Lcom/android/phone/util/CallDeferUtils;->launchCallReminder(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 217
    .local v2, snoozeIntent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 221
    const-string v5, "HtcCallDeferReceiver"

    const-string v6, "snooze without correct intent!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, appContext:Landroid/content/Context;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    add-long v3, v5, v7

    .line 227
    .local v3, triggerTime:J
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/phone/util/CallDeferUtils;->schduleDeferReminder(Landroid/content/Context;Landroid/content/Intent;JLcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_0
.end method

.method private updateLockscreenReminder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "data"

    .prologue
    .line 95
    new-instance v3, Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v3, v9, v10}, Lcom/htc/lockscreen/HtcLSViewConnection;-><init>(Landroid/content/Context;I)V

    .line 97
    .local v3, lsConnection:Lcom/htc/lockscreen/HtcLSViewConnection;
    new-instance v9, Lcom/android/phone/htc/HtcCallDeferReceiver$1;

    invoke-direct {v9, p0}, Lcom/android/phone/htc/HtcCallDeferReceiver$1;-><init>(Lcom/android/phone/htc/HtcCallDeferReceiver;)V

    invoke-virtual {v3, v9}, Lcom/htc/lockscreen/HtcLSViewConnection;->register(Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;)V

    .line 104
    new-instance v4, Lcom/htc/lockscreen/HtcLSView;

    const-string v9, "com.android.phone"

    const v10, 0x7f030032

    invoke-direct {v4, v9, v10}, Lcom/htc/lockscreen/HtcLSView;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v4, lsView:Lcom/htc/lockscreen/HtcLSView;
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 108
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, p2}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-wide v10, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10, v11}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;->getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 114
    .local v7, photo:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 115
    const v9, 0x7f08005d

    invoke-virtual {v4, v9, v7}, Lcom/htc/lockscreen/HtcLSView;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 119
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/htc/HtcCallDeferReceiver;->calculateInformation(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, info:Ljava/lang/String;
    const v9, 0x7f0800de

    invoke-virtual {v4, v9, v2}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    invoke-static {v0}, Lcom/android/phone/util/CallDeferUtils;->launchCallReminder(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 125
    .local v8, snoozeIntent:Landroid/content/Intent;
    const-string v9, "com.android.phone.ACTION_LS_SNOOZE_REMINDER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {p1, v9, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 131
    .local v6, pendingSnooze:Landroid/app/PendingIntent;
    const v9, 0x7f0800df

    invoke-virtual {v4, v9, v6}, Lcom/htc/lockscreen/HtcLSView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/android/phone/util/CallDeferUtils;->createDialIntent(Lcom/android/internal/telephony/CallerInfo;Z)Landroid/content/Intent;

    move-result-object v1

    .line 136
    .local v1, dialIntent:Landroid/content/Intent;
    const-string v9, "com.android.phone.ACTION_LS_EMINDER_PLACE_CALL"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 143
    .local v5, pendingDial:Landroid/app/PendingIntent;
    const v9, 0x7f0800e0

    invoke-virtual {v4, v9, v5}, Lcom/htc/lockscreen/HtcLSView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    const-string v9, "main"

    invoke-virtual {v3, v9, v4}, Lcom/htc/lockscreen/HtcLSViewConnection;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    .line 146
    const/16 v9, 0x11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x20c00b2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/htc/lockscreen/HtcLSViewConnection;->setShowHint(ILjava/lang/String;)V

    .line 149
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/htc/lockscreen/HtcLSViewConnection;->setWakeUp(Z)V

    .line 152
    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcLSViewConnection;->updateView()V

    .line 154
    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcLSViewConnection;->unReigister()V

    .line 155
    const/4 v3, 0x0

    .line 156
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.phone.ACTION_CALL_REMINDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/htc/HtcCallDeferReceiver;->onReceiveReminder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v1, "com.android.phone.ACTION_LS_EMINDER_PLACE_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/phone/htc/HtcCallDeferReceiver;->onReceivePlaceCall(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "com.android.phone.ACTION_LS_SNOOZE_REMINDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/phone/htc/HtcCallDeferReceiver;->onReceiveSnooze(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "HtcCallDeferReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive. unexpected action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
