.class public Lcom/htc/cs/service/DashboardService;
.super Landroid/app/Service;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/service/DashboardService$runInitServiceThread;,
        Lcom/htc/cs/service/DashboardService$checkLegalDocThread;,
        Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;,
        Lcom/htc/cs/service/DashboardService$provisioningForFOTAThread;,
        Lcom/htc/cs/service/DashboardService$sendSerialNumberThread;,
        Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;,
        Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;,
        Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;,
        Lcom/htc/cs/service/DashboardService$SendAccountSetting;,
        Lcom/htc/cs/service/DashboardService$InitThread;,
        Lcom/htc/cs/service/DashboardService$readSvrClkThread;,
        Lcom/htc/cs/service/DashboardService$serverTimePowerOn;,
        Lcom/htc/cs/service/DashboardService$UpdateURLThread;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_CHANGE:Ljava/lang/String; = "com.htc.cs.account.change"

.field public static final ACTION_BATTERY:Ljava/lang/String; = "com.htc.cs.dashboard.battery"

.field public static final ACTION_BATTERY_RESULT:Ljava/lang/String; = "com.htc.cs.dashboard.battery.result"

.field public static final ACTION_BIND_COMPLETE:Ljava/lang/String; = "com.htc.cs.bind_complete"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "com.htc.cs.boot_completed"

.field public static final ACTION_CALL_FORWARDING:Ljava/lang/String; = "com.htc.cs.dashboard.callforwarding"

.field public static final ACTION_CHECK_PENDING_LEGALDOC:Ljava/lang/String; = "com.htc.cs.dashboard.legaldoc"

.field public static final ACTION_CHECK_SIM_CHANGE:Ljava/lang/String; = "com.htc.cs.dashboard.check_sim_change"

.field public static final ACTION_INIT_SERVICE:Ljava/lang/String; = "com.htc.cs.initservice"

.field public static final ACTION_LOCATION:Ljava/lang/String; = "com.htc.cs.dashboard.location"

.field public static final ACTION_LOCATION_RESULT:Ljava/lang/String; = "com.htc.cs.dashboard.location.result"

.field public static final ACTION_LOCATION_STOP:Ljava/lang/String; = "com.htc.cs.dashboard.location.stop"

.field public static final ACTION_LOCK:Ljava/lang/String; = "com.htc.cs.dashboard.lock"

.field public static final ACTION_MSG_FORWARDING_EMAIL:Ljava/lang/String; = "com.htc.cs.dashboard.msgforwarding.email"

.field public static final ACTION_MSG_FORWARDING_NUMBER:Ljava/lang/String; = "com.htc.cs.dashboard.msgforwarding.number"

.field public static final ACTION_READ_SERVER_TIME:Ljava/lang/String; = "com.htc.cs.dashboard.readServerTime"

.field public static final ACTION_REMOVE_ACCOUNT_NOTIFY:Ljava/lang/String; = "com.htc.cs.dashboard.remove.account"

.field public static final ACTION_RING:Ljava/lang/String; = "com.htc.cs.dashboard.ring"

.field public static final ACTION_RING_STOP:Ljava/lang/String; = "com.htc.cs.dashboard.ring.stop"

.field public static final ACTION_SEND_LEGALDOC_VERSION:Ljava/lang/String; = "com.htc.cs.dashboard.sendversion"

.field public static final ACTION_SEND_SETTING:Ljava/lang/String; = "com.htc.cs.dashboard.sendsetting"

.field public static final ACTION_SIM_LOADED:Ljava/lang/String; = "com.htc.cs.dashboard.sim.loaded"

.field public static final ACTION_SYNC_SCHEDULE_CHANGE:Ljava/lang/String; = "com.htc.cs.dashboard.sync_schedule"

.field public static final ACTION_TIME_CHANGE:Ljava/lang/String; = "com.htc.cs.dashboard.timechange"

.field public static final ACTION_UPDATE_URL:Ljava/lang/String; = "com.htc.cs.connectedservice.updateURL"

.field public static final ACTION_WIPE:Ljava/lang/String; = "com.htc.cs.dashboard.wipe"

.field public static final ACT_ACCOUNT_REMOVE:Ljava/lang/String; = "com.htc.cs.connectedservice.accountremove"

.field public static final COMMON_EXTRA_MSG:Ljava/lang/String; = "MSG"

.field public static final COMMON_EXTRA_TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field public static final EXTRA_BATTERY_RESULT:Ljava/lang/String; = "RESULT"

.field public static final EXTRA_LOCATION_RESULT_LATITUDE:Ljava/lang/String; = "LATITUDE"

.field public static final EXTRA_LOCATION_RESULT_LONGITUDE:Ljava/lang/String; = "LONGITUDE"

.field public static final EXTRA_LOCATION_RESULT_TYPE:Ljava/lang/String; = "RESULT_TYPE"

.field public static final EXTRA_RING_SECONDS:Ljava/lang/String; = "RING_SECONDS"

.field public static final EXTRA_WIPE_SD:Ljava/lang/String; = "WIPE_SD"

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z

.field static ttlTimeout:Landroid/app/PendingIntent;


# instance fields
.field private fullMergeTimeOut:Landroid/app/PendingIntent;

.field private logger:Lcom/htc/cs/util/Logger;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mServiceHandler:Landroid/os/Handler;

.field private newsLetter:Ljava/lang/Boolean;

.field public svrClock:Lcom/htc/cs/util/serverClock;

.field private versionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/htc/cs/service/DashboardService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    .line 1241
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/cs/service/DashboardService;->ttlTimeout:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/service/DashboardService;->logger:Lcom/htc/cs/util/Logger;

    .line 127
    iput-object v1, p0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    .line 128
    iput-object v1, p0, Lcom/htc/cs/service/DashboardService;->fullMergeTimeOut:Landroid/app/PendingIntent;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/service/DashboardService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->resetIMCService()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/cs/service/DashboardService;)Lcom/htc/cs/util/Logger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->logger:Lcom/htc/cs/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/cs/service/DashboardService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->setMarketOptIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/cs/service/DashboardService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/cs/service/DashboardService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->setLegalDocVersion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/cs/service/DashboardService;->resetServerUri(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/cs/service/DashboardService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->removeAccount()V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/htc/cs/service/DashboardService;->cancelLegalDocAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private static cancelLegalDocAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1264
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1266
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.cs.dashboard.legaldoc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v1, intentTTL:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/htc/cs/service/DashboardService;->ttlTimeout:Landroid/app/PendingIntent;

    .line 1269
    sget-object v2, Lcom/htc/cs/service/DashboardService;->ttlTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1271
    return-void
.end method

.method public static checkLegalDoc(Landroid/content/Context;)Z
    .locals 23
    .parameter "context"

    .prologue
    .line 1140
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1141
    .local v11, c:Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 1142
    .local v14, currentTime:J
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLegalDocCheckTime(Landroid/content/Context;)J

    move-result-wide v12

    .line 1143
    .local v12, checkTime:J
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLegalDocDDay(Landroid/content/Context;)J

    move-result-wide v16

    .line 1156
    .local v16, dDayTime:J
    :try_start_0
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " Check Pending Doc "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v3, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 1164
    .local v3, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v18

    .line 1169
    .local v18, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 1171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getPendingLegalDoc(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    move-result-object v19

    .line 1173
    .local v19, doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    const-wide/16 v21, 0x0

    .line 1174
    .local v21, effectiveDate:J
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->EffectiveDate:Ljava/util/Date;

    if-eqz v4, :cond_0

    .line 1178
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->EffectiveDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 1179
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->EffectiveDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 1182
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_1

    cmp-long v4, v21, v14

    if-lez v4, :cond_1

    .line 1184
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "Before D Day =  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocDDay(Landroid/content/Context;J)V

    .line 1186
    new-instance v8, Landroid/content/Intent;

    const-string v4, "com.htc.cs.csconfirmdialog.showlegal"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v8, mintent:Landroid/content/Intent;
    const-string v4, "com.htc.cs"

    const-string v5, "com.htc.cs.activity.accountactivities.CSConfirmDialog"

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1192
    .local v6, notifyTitle:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1194
    .local v7, notifyDes:Ljava/lang/String;
    const/4 v5, 0x6

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 1238
    .end local v3           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v6           #notifyTitle:Ljava/lang/String;
    .end local v7           #notifyDes:Ljava/lang/String;
    .end local v8           #mintent:Landroid/content/Intent;
    .end local v18           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .end local v19           #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    .end local v21           #effectiveDate:J
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 1198
    .restart local v3       #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .restart local v18       #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .restart local v19       #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    .restart local v21       #effectiveDate:J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_2

    cmp-long v4, v21, v14

    if-gtz v4, :cond_2

    .line 1205
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "After D Day =  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v8, Landroid/content/Intent;

    const-string v4, "com.htc.cs.csconfirmdialog.showlegal"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .restart local v8       #mintent:Landroid/content/Intent;
    const-string v4, "com.htc.cs"

    const-string v5, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v4, "IntentSource"

    const-string v5, "legalDoc"

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1213
    .restart local v6       #notifyTitle:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1215
    .restart local v7       #notifyDes:Ljava/lang/String;
    const/4 v5, 0x6

    const/4 v9, 0x1

    sget-object v10, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 1220
    const/4 v4, 0x1

    goto :goto_1

    .line 1223
    .end local v6           #notifyTitle:Ljava/lang/String;
    .end local v7           #notifyDes:Ljava/lang/String;
    .end local v8           #mintent:Landroid/content/Intent;
    :cond_2
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " TryAgainInterval =  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget v9, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->TryAgainInterval:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    move-object/from16 v0, v19

    iget v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->TryAgainInterval:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocCheckTime(Landroid/content/Context;I)V

    .line 1227
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocDDay(Landroid/content/Context;J)V

    .line 1228
    move-object/from16 v0, v19

    iget v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->TryAgainInterval:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/cs/service/DashboardService;->setLegalDocAlarm(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1230
    .end local v3           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v18           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .end local v19           #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    .end local v21           #effectiveDate:J
    :catch_0
    move-exception v20

    .line 1231
    .local v20, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Exception: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v4, "CheckLegalUpdateFail"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1234
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private clearPreference()V
    .locals 1

    .prologue
    .line 1136
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method private readServerTime()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/htc/cs/service/DashboardService$readSvrClkThread;

    invoke-direct {v0, p0, p0}, Lcom/htc/cs/service/DashboardService$readSvrClkThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 185
    .local v0, mReadSvClkThread:Lcom/htc/cs/service/DashboardService$readSvrClkThread;
    invoke-virtual {v0}, Lcom/htc/cs/service/DashboardService$readSvrClkThread;->start()V

    .line 186
    return-void
.end method

.method private removeAccount()V
    .locals 5

    .prologue
    .line 367
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 369
    .local v0, account:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    new-instance v3, Lcom/htc/cs/service/DashboardService$1;

    invoke-direct {v3, p0}, Lcom/htc/cs/service/DashboardService$1;-><init>(Lcom/htc/cs/service/DashboardService;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 387
    return-void
.end method

.method public static removeAccount(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 977
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 979
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 980
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    new-instance v3, Lcom/htc/cs/service/DashboardService$2;

    invoke-direct {v3}, Lcom/htc/cs/service/DashboardService$2;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 999
    :cond_0
    return-void
.end method

.method public static renewDataCenterNotify(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 974
    return-void
.end method

.method private resetIMCService()V
    .locals 0

    .prologue
    .line 1003
    return-void
.end method

.method private resetServerUri(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1006
    const-string v1, "serverUri"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 1016
    :cond_0
    return-void
.end method

.method private restartObserver(Z)V
    .locals 2
    .parameter "isFullMerge"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Thread-Observer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 168
    :cond_0
    return-void
.end method

.method private static setLegalDocAlarm(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "day"

    .prologue
    .line 1244
    mul-int/lit8 v4, p1, 0x18

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v1, v4

    .line 1250
    .local v1, dayExpired:J
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.cs.dashboard.legaldoc"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v3, intentTTL:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/htc/cs/service/DashboardService;->ttlTimeout:Landroid/app/PendingIntent;

    .line 1254
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1256
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    sget-object v7, Lcom/htc/cs/service/DashboardService;->ttlTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1259
    return-void
.end method

.method private setLegalDocVersion()Z
    .locals 15

    .prologue
    .line 1087
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1088
    .local v13, result:Ljava/lang/Boolean;
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 1095
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v8

    .line 1100
    .local v8, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 1101
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    const-string v2, "Accept"

    invoke-virtual {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setLegalDocResponses(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1102
    const/4 v1, 0x1

    .line 1129
    .end local v8           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :goto_0
    return v1

    .line 1103
    :catch_0
    move-exception v10

    .line 1104
    .local v10, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    .line 1106
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1108
    .local v14, type:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v11

    .line 1110
    .local v11, errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v11, v1}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    :try_start_1
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v9

    .line 1117
    .local v9, devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1125
    .end local v9           #devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1118
    :catch_1
    move-exception v12

    .line 1119
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renew Token Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto :goto_1

    .line 1126
    .end local v10           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v11           #errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v14           #type:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1127
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1129
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setMarketOptIn()Z
    .locals 15

    .prologue
    .line 1019
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1020
    .local v13, result:Ljava/lang/Boolean;
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 1029
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService;->newsLetter:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHTCNewsLetter(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1031
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v8

    .line 1036
    .local v8, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 1037
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService;->newsLetter:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setEmailForProductOption(Ljava/lang/Boolean;)V

    .line 1038
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService;->newsLetter:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHTCNewsLetter(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 1040
    const-string v1, "MarketOptInDirtyFlag"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1042
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 1083
    .end local v8           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1049
    :catch_0
    move-exception v10

    .line 1050
    .local v10, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    .line 1052
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1054
    .local v14, type:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v11

    .line 1056
    .local v11, errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v11, v1}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    :try_start_1
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/service/DashboardService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v9

    .line 1065
    .local v9, devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1073
    .end local v9           #devicetoken1:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_1
    :goto_1
    const-string v1, "MarketOptInDirtyFlag"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1066
    :catch_1
    move-exception v12

    .line 1067
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renew Token Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v10}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto :goto_1

    .line 1076
    .end local v10           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v11           #errcode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v14           #type:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1077
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "CSSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1079
    const-string v1, "MarketOptInDirtyFlag"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public static setRemoveAccountNotify(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 949
    new-instance v4, Landroid/content/Intent;

    const-string v0, "RemoveAccountNotify"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v4, intentNotify:Landroid/content/Intent;
    const-string v0, "com.htc.cs"

    const-string v1, "com.htc.cs.activity.htcSense.htcSense"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, notifyTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, notifyDes:Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 959
    return-void
.end method

.method public static setSimChangeNotify(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 922
    new-instance v4, Landroid/content/Intent;

    const-string v0, "SimChangeRemoveAccount"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v4, intentNotify:Landroid/content/Intent;
    const-string v0, "com.htc.cs"

    const-string v1, "com.htc.cs.activity.htcSense.htcSense"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, notifyTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, notifyDes:Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 932
    return-void
.end method

.method public static setSimChangeNotify(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "simChangeType"

    .prologue
    .line 935
    new-instance v4, Landroid/content/Intent;

    const-string v0, "SimChangeRemoveAccount"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v4, intentNotify:Landroid/content/Intent;
    const-string v0, "com.htc.cs"

    const-string v1, "com.htc.cs.activity.htcSense.htcSense"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v0, "SIM_CHANGE_TYPE"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, notifyTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, notifyDes:Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 946
    return-void
.end method

.method private stopDashboard()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method private stopObserver()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/service/DashboardService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 138
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 158
    return-object p0
.end method

.method initService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.connectedservice.startup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    .local v0, intentcs:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 919
    return-void
.end method

.method public isSimLoaded()Z
    .locals 3

    .prologue
    .line 144
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/htc/cs/service/DashboardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 354
    new-instance v0, Lcom/htc/cs/util/serverClock;

    invoke-direct {v0, p0}, Lcom/htc/cs/util/serverClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/service/DashboardService;->svrClock:Lcom/htc/cs/util/serverClock;

    .line 355
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->stopDashboard()V

    .line 361
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService;->stopObserver()V

    .line 363
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 364
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 22
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 191
    const/4 v4, 0x0

    .line 193
    .local v4, action:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->isSimLoaded()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 197
    const-string v4, "com.htc.cs.dashboard.sim.loaded"

    .line 207
    :goto_0
    const-string v19, "com.htc.cs.boot_completed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 209
    new-instance v16, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 210
    .local v16, servertimepowerOn:Lcom/htc/cs/service/DashboardService$serverTimePowerOn;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/cs/service/DashboardService$serverTimePowerOn;->start()V

    .line 339
    .end local v16           #servertimepowerOn:Lcom/htc/cs/service/DashboardService$serverTimePowerOn;
    :cond_0
    :goto_1
    const/16 v19, 0x1

    :goto_2
    return v19

    .line 202
    :cond_1
    const/16 v19, 0x1

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 212
    :cond_3
    const-string v19, "com.htc.cs.dashboard.sim.loaded"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 216
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/cs/service/DashboardService;->restartObserver(Z)V

    goto :goto_1

    .line 219
    :cond_4
    const-string v19, "com.htc.cs.bind_complete"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 221
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 222
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/cs/service/DashboardService;->restartObserver(Z)V

    goto :goto_1

    .line 225
    :cond_5
    const-string v19, "com.htc.cs.connectedservice.accountremove"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->stopObserver()V

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->clearPreference()V

    goto :goto_1

    .line 230
    :cond_6
    const-string v19, "com.htc.cs.dashboard.timechange"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->svrClock:Lcom/htc/cs/util/serverClock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/cs/util/serverClock;->timeChange()Z

    goto :goto_1

    .line 235
    :cond_7
    const-string v19, "com.htc.cs.dashboard.remove.account"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->removeAccount()V

    goto :goto_1

    .line 240
    :cond_8
    const-string v19, "com.htc.cs.dashboard.readServerTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->readServerTime()V

    .line 243
    new-instance v6, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 245
    .local v6, checkMarketOptIn:Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;
    invoke-virtual {v6}, Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;->start()V

    goto/16 :goto_1

    .line 247
    .end local v6           #checkMarketOptIn:Lcom/htc/cs/service/DashboardService$runAndCheckMarketOptInThread;
    :cond_9
    const-string v19, "com.htc.cs.dashboard.legaldoc"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 249
    new-instance v5, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 251
    .local v5, checkLegalDoc:Lcom/htc/cs/service/DashboardService$checkLegalDocThread;
    invoke-virtual {v5}, Lcom/htc/cs/service/DashboardService$checkLegalDocThread;->start()V

    goto/16 :goto_1

    .line 253
    .end local v5           #checkLegalDoc:Lcom/htc/cs/service/DashboardService$checkLegalDocThread;
    :cond_a
    const-string v19, "com.htc.cs.dashboard.sync_schedule"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 254
    const-string v19, "syncFrequency"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 259
    .local v7, freq:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_b

    .line 260
    const v19, 0x7f090038

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 262
    .local v17, toast:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 265
    .end local v17           #toast:Landroid/widget/Toast;
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSyncFrequency(Landroid/content/Context;I)V

    .line 266
    new-instance v10, Landroid/content/Intent;

    const-string v19, "com.htc.cs.frequency_change"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v10, intentSync:Landroid/content/Intent;
    const-string v19, "syncFrequency"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/cs/service/DashboardService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 269
    .end local v7           #freq:I
    .end local v10           #intentSync:Landroid/content/Intent;
    :cond_c
    const-string v19, "com.htc.cs.dashboard.check_sim_change"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 270
    new-instance v9, Lcom/htc/cs/service/DashboardService$InitThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/htc/cs/service/DashboardService$InitThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 271
    .local v9, initThread:Lcom/htc/cs/service/DashboardService$InitThread;
    invoke-virtual {v9}, Lcom/htc/cs/service/DashboardService$InitThread;->start()V

    goto/16 :goto_1

    .line 272
    .end local v9           #initThread:Lcom/htc/cs/service/DashboardService$InitThread;
    :cond_d
    const-string v19, "com.htc.cs.FOTA_INSTALL_COMPLETE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 273
    const-string v19, "MyHTC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "FOTA is installed completely "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v13, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 277
    .local v13, runCSinitial:Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;
    invoke-virtual {v13}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->start()V

    goto/16 :goto_1

    .line 279
    .end local v13           #runCSinitial:Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;
    :cond_e
    const-string v19, "com.htc.cs.renew.datacenter"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 280
    const-string v19, "MyHTC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "RENEW_DATA_CENTER()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v12, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v1, v2}, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 283
    .local v12, renewDataCenterThread:Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;
    invoke-virtual {v12}, Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;->start()V

    goto/16 :goto_1

    .line 284
    .end local v12           #renewDataCenterThread:Lcom/htc/cs/service/DashboardService$RenewDataCenterThread;
    :cond_f
    const-string v19, "com.htc.cs.initservice"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 285
    const-string v19, "MyHTC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/htc/cs/service/DashboardService;->TAG:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Init service"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v8, Lcom/htc/cs/service/DashboardService$runInitServiceThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/htc/cs/service/DashboardService$runInitServiceThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 289
    .local v8, initService:Lcom/htc/cs/service/DashboardService$runInitServiceThread;
    invoke-virtual {v8}, Lcom/htc/cs/service/DashboardService$runInitServiceThread;->start()V

    goto/16 :goto_1

    .line 292
    .end local v8           #initService:Lcom/htc/cs/service/DashboardService$runInitServiceThread;
    :cond_10
    const-string v19, "com.htc.cs.dashboard.sendsetting"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 293
    const-string v19, "htcNewsLetter"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/service/DashboardService;->newsLetter:Ljava/lang/Boolean;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "MarketOptInDirtyFlag"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 296
    new-instance v14, Lcom/htc/cs/service/DashboardService$SendAccountSetting;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/htc/cs/service/DashboardService$SendAccountSetting;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 298
    .local v14, sendAccountSetting:Lcom/htc/cs/service/DashboardService$SendAccountSetting;
    invoke-virtual {v14}, Lcom/htc/cs/service/DashboardService$SendAccountSetting;->start()V

    goto/16 :goto_1

    .line 299
    .end local v14           #sendAccountSetting:Lcom/htc/cs/service/DashboardService$SendAccountSetting;
    :cond_11
    const-string v19, "com.htc.cs.dashboard.sendversion"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 307
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "version1"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "version2"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "version3"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/service/DashboardService;->versionList:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "version4"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v15, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 321
    .local v15, sendLegalDocVersion:Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;
    invoke-virtual {v15}, Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;->start()V

    goto/16 :goto_1

    .line 322
    .end local v15           #sendLegalDocVersion:Lcom/htc/cs/service/DashboardService$SendLegalDocVersion;
    :cond_12
    const-string v19, "com.htc.cs.connectedservice.updateURL"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 325
    new-instance v18, Lcom/htc/cs/service/DashboardService$UpdateURLThread;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/service/DashboardService$UpdateURLThread;-><init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V

    .line 327
    .local v18, updateURLThread:Lcom/htc/cs/service/DashboardService$UpdateURLThread;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/cs/service/DashboardService$UpdateURLThread;->start()V

    goto/16 :goto_1

    .line 329
    .end local v18           #updateURLThread:Lcom/htc/cs/service/DashboardService$UpdateURLThread;
    :cond_13
    const-string v19, "com.htc.cs.account.change"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 330
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v19

    const-string v20, "com.htc.cs"

    invoke-virtual/range {v19 .. v20}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 333
    .local v3, account:[Landroid/accounts/Account;
    array-length v0, v3

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 334
    new-instance v11, Landroid/content/Intent;

    const-string v19, "com.htc.cs.connectedservice.accountremove"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v11, removeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/cs/service/DashboardService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public updateForwardingStatus(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .parameter "s"
    .parameter "enable"
    .parameter "value"
    .parameter "setByCs"

    .prologue
    .line 152
    return-void
.end method
