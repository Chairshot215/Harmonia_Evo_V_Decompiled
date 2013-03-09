.class public Lcom/google/android/finsky/billing/iab/PendingNotificationsService;
.super Landroid/app/Service;
.source "PendingNotificationsService.java"


# static fields
.field private static ACTION_ALARM:Ljava/lang/String;

.field public static ACTION_RESTART_ALARM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "action_alarm"

    sput-object v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    .line 42
    const-string v0, "action_restart_alarm"

    sput-object v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 226
    const-string v2, "Canceling alarm for account=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 228
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 229
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 230
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 231
    return-void
.end method

.method private static createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    const-class v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "vendingpending"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method private handleAlarm(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    .line 91
    .local v0, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;-><init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingApi;->checkForPendingNotifications(Lcom/android/volley/Response$ErrorListener;)V

    .line 99
    return-void
.end method

.method public static handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;Z)Z
    .locals 17
    .parameter "context"
    .parameter "account"
    .parameter "pendingNotifications"
    .parameter "allowCancellation"

    .prologue
    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, handledNotifications:Z
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNextCheckMillis()J

    move-result-wide v8

    .line 290
    .local v8, nextCheckMillis:J
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 291
    const-string v13, "Got next_check_millis=%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-lez v13, :cond_3

    .line 294
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0, v8, v9}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    .line 296
    const/4 v3, 0x1

    .line 302
    .end local v8           #nextCheckMillis:J
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 303
    .local v11, numNotifications:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNotificationList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    .line 304
    .local v10, notification:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, category:Ljava/lang/String;
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_2

    .line 306
    const-string v13, "Processing pending notification with category=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 312
    if-nez v6, :cond_4

    .line 313
    const-string v13, "Cannot find receiver for intent category: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 297
    .end local v2           #category:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #notification:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    .end local v11           #numNotifications:I
    .restart local v8       #nextCheckMillis:J
    :cond_3
    if-eqz p3, :cond_1

    .line 298
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->cancelMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    const/4 v3, 0x1

    goto :goto_0

    .line 316
    .end local v8           #nextCheckMillis:J
    .restart local v2       #category:Ljava/lang/String;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v10       #notification:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    .restart local v11       #numNotifications:I
    :cond_4
    invoke-virtual {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getAppDataList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    .line 317
    .local v1, appData:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 319
    .local v12, value:Ljava/lang/String;
    invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 324
    .end local v1           #appData:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .end local v7           #key:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 325
    const/4 v3, 0x1

    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 327
    goto :goto_1

    .line 328
    .end local v2           #category:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #notification:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :cond_6
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 329
    const-string v13, "Handled %d notifications."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_7
    return v3
.end method

.method private static rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;

    invoke-direct {v1, p1, p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method private restartAlarmsAfterBoot()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;-><init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "duration"

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, startTime:J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 186
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 187
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "duration"
    .parameter "startTime"

    .prologue
    .line 212
    const-string v4, "Setting alarm for account=%s, duration=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 214
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 215
    .local v3, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, p2

    .line 216
    .local v1, alarmTime:J
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 217
    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 218
    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmTimeout(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x2

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    .line 82
    :goto_0
    return v4

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handleAlarm(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->restartAlarmsAfterBoot()V

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "unexpected action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    goto :goto_0
.end method
