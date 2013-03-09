.class public Lcom/android/phone/util/CallDeferUtils;
.super Ljava/lang/Object;
.source "CallDeferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final EXTRA_DEFER_ID:Ljava/lang/String; = "defer_id"

.field private static final NOTIFICATION_DEFER_ID:I = 0x1b59

.field private static final TAG:Ljava/lang/String; = "CallDeferUtils"

.field private static mDeferId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/util/CallDeferUtils;->mDeferId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method private static copyInfoInto(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)V
    .locals 3
    .parameter "info"
    .parameter "intent"

    .prologue
    .line 190
    const-string v0, "personId"

    iget-wide v1, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "numberType"

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v0, "recordNumber"

    iget-wide v1, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    const-string v0, "fromDialer"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public static createDialIntent(Lcom/android/internal/telephony/CallerInfo;Z)Landroid/content/Intent;
    .locals 5
    .parameter "info"
    .parameter "hasPhoto"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must assing callerinfo or phone number!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_1
    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/phone/util/CallDeferUtils;->copyInfoInto(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)V

    .line 146
    const-string v2, "hasPhoto"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    return-object v0
.end method

.method public static initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "info"
    .parameter "intent"

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lcom/android/internal/telephony/CallerInfo;

    .end local p0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 101
    .restart local p0
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 106
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 110
    const-string v1, "numberType"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 115
    const-string v1, "personId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, personId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 121
    :cond_1
    const-string v1, "recordNumber"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 124
    return-object p0
.end method

.method public static final isLastDeferRequest(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 324
    .local v2, isLast:Z
    if-eqz p0, :cond_0

    .line 325
    const-string v3, "defer_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 327
    .local v0, deferId:J
    sget-wide v3, Lcom/android/phone/util/CallDeferUtils;->mDeferId:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 335
    .end local v0           #deferId:J
    :cond_0
    :goto_0
    return v2

    .line 327
    .restart local v0       #deferId:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static launchCallDeferConfig(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "callerInfo"
    .parameter "number"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ACTION_CALL_DEFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "numberType"

    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v1, "personId"

    iget-wide v2, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "hasPhoto"

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-string v1, "recordNumber"

    iget-wide v2, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static launchCallReminder(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;
    .locals 5
    .parameter "info"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 64
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.android.phone.ACTION_CALL_REMINDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v2, "numberType"

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v2, "personId"

    iget-wide v3, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "recordNumber"

    iget-wide v3, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 82
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must assing defer number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static launchDeferDecision(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "original"

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, intent:Landroid/content/Intent;
    if-nez p0, :cond_0

    .line 167
    :goto_0
    return-object v1

    .line 162
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 163
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, p0}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/android/phone/util/CallDeferUtils;->launchDeferDecision(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static launchDeferDecision(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;
    .locals 3
    .parameter "info"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must assing callerinfo or phone number!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ACTION_CALL_DEFER_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/phone/util/CallDeferUtils;->copyInfoInto(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)V

    .line 186
    return-object v0
.end method

.method public static final notifyCallDefer(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 286
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 293
    .local v0, mgr:Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 294
    .local v1, note:Landroid/app/Notification;
    const v4, 0x7f0200bc

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 295
    invoke-static {p0, v5, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 297
    .local v2, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 299
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0e00c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 303
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x38

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 307
    const/16 v4, 0x1b59

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static final registerDefer(Landroid/content/Intent;J)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 339
    if-eqz p0, :cond_0

    .line 340
    sput-wide p1, Lcom/android/phone/util/CallDeferUtils;->mDeferId:J

    .line 341
    const-string v0, "defer_id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 346
    :cond_0
    return-void
.end method

.method public static final removeNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 312
    invoke-static {}, Lcom/android/phone/util/CallDeferUtils;->unregisterDefer()V

    .line 313
    if-nez p0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 318
    .local v0, mgr:Landroid/app/NotificationManager;
    const/16 v1, 0x1b59

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static schduleDeferReminder(Landroid/content/Context;Landroid/content/Intent;JLcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "triggerTime"
    .parameter "ci"

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, success:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 217
    :cond_0
    const-string v3, "CallDeferUtils"

    const-string v4, "schduleDeferReminder: miss arguments..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return v2

    .line 221
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/phone/util/CallDeferUtils;->registerDefer(Landroid/content/Intent;J)V

    .line 223
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 229
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 231
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 233
    invoke-static {p0, p4, p1}, Lcom/android/phone/util/CallDeferUtils;->notifyCallDefer(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)V

    .line 235
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static final unregisterDefer()V
    .locals 2

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/util/CallDeferUtils;->mDeferId:J

    .line 353
    return-void
.end method
