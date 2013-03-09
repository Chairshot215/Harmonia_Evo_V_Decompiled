.class public Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
.super Ljava/lang/Object;
.source "ExchangeSyncSources.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EAS_ACNT_CFG_FOLDER_KEY:Ljava/lang/String; = "FolderSyncKey"

.field private static final EAS_ACNT_CFG_GLOBAL_INFO:Ljava/lang/String; = "eas_globalInfo.prefs"

.field private static final EAS_ACNT_CFG_POLICY_KEY:Ljava/lang/String; = "PolicyKey"

.field private static final EAS_ACNT_CFG_ROOT_GLOBAL_SECTION:Ljava/lang/String; = "GlobalInformation"

.field private static final EAS_CURRENT_SCHEDULE_TIME:Ljava/lang/String; = "currentScheduleTime"

.field private static final EAS_NEXT_SCHEDULE_TIME:Ljava/lang/String; = "NextScheduleTime"

.field private static final EAS_NEX_PEAK_CHANGE_TIME:Ljava/lang/String; = "NextPeakChangeTime"

.field private static final EAS_OPT_CFG_CAL_BODYFORMAT:Ljava/lang/String; = "CalBodyFormat"

.field private static final EAS_OPT_CFG_CAL_FILTER:Ljava/lang/String; = "CalFilter"

.field private static final EAS_OPT_CFG_CONFLICT_RESOL:Ljava/lang/String; = "ConflictResolving"

.field private static final EAS_OPT_CFG_DISABLE_AT_XMODE:Ljava/lang/String; = "DisableAtXMode"

.field private static final EAS_OPT_CFG_FILE_NAME:Ljava/lang/String; = "eas_opt.prefs"

.field private static final EAS_OPT_CFG_MAIL_ATTACH_OPT:Ljava/lang/String; = "MailAttachmentOpt"

.field private static final EAS_OPT_CFG_MAIL_BODY_TYPE:Ljava/lang/String; = "MailBodyType"

.field private static final EAS_OPT_CFG_MAIL_FILTER:Ljava/lang/String; = "MailFilter"

.field private static final EAS_OPT_CFG_MAIL_TRUNCATE_SIZE:Ljava/lang/String; = "MailTruncateSize"

.field private static final EAS_OPT_CFG_PEAK_TIME_END:Ljava/lang/String; = "PeakTimeEnd"

.field private static final EAS_OPT_CFG_PEAK_TIME_START:Ljava/lang/String; = "PeakTimeStart"

.field private static final EAS_OPT_CFG_ROOT_SECTION:Ljava/lang/String; = "Option"

.field private static final EAS_OPT_CFG_SYNC_PEAK_TIME_DAYS:Ljava/lang/String; = "PeakTimeDays"

.field private static final EAS_OPT_CFG_SYNC_SCHEDULE:Ljava/lang/String; = "SyncSchedule"

.field private static final EAS_OPT_CFG_SYNC_SCHEDULE_OFF_PEAK:Ljava/lang/String; = "ScheduleOffPeak"

.field private static final EAS_OPT_CFG_SYNC_SCHEDULE_PEAK:Ljava/lang/String; = "SchedulePeak"

.field private static final PEAK_CHANG_OFFSET_DP:I = 0xdbba0

.field private static final PEAK_CHANG_OFFSET_MAX:I = 0x36ee80

.field protected static final TAG:Ljava/lang/String; = "ExchangeSyncSources"


# instance fields
.field public final LOCK:Ljava/lang/Object;

.field public account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field public aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

.field public bScheduleInDisconnect:Z

.field public calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

.field public contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

.field private currentScheduleTime:J

.field public folderSynckey:Ljava/lang/String;

.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field public httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private final mContext:Landroid/content/Context;

.field private mGlobalInfoFilePath:Ljava/io/File;

.field private mIsSmartWifi:Z

.field private mOptionsFilePath:Ljava/io/File;

.field private mPeakTimeCheckIntent:Landroid/app/PendingIntent;

.field private mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

.field private mSchedulePowerSavingIntent:Landroid/app/PendingIntent;

.field private mScheduledSyncIntent:Landroid/app/PendingIntent;

.field mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

.field public mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

.field public nextPeakChangeTime:J

.field public nextScheduleTime:J

.field public options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

.field public policyKey:Ljava/lang/String;

.field public policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

.field public syncSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/core/SyncSource;",
            ">;"
        }
    .end annotation
.end field

.field public syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

.field public taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 8
    .parameter "context"
    .parameter "account"

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v7, 0x800

    const/4 v6, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->LOCK:Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    .line 89
    iput-wide v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    .line 90
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->bScheduleInDisconnect:Z

    .line 91
    iput-wide v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    .line 92
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mIsSmartWifi:Z

    .line 96
    iput-wide v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    .line 101
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    .line 106
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    .line 107
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    .line 138
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->readGlobalInfo()V

    .line 144
    new-instance v2, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    invoke-direct {v2}, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    .line 145
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {p1, v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->readProvisionData(Landroid/content/Context;J)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 146
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->readSyncOptions()Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    new-instance v2, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    .line 153
    new-instance v2, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    .line 154
    new-instance v2, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    .line 155
    new-instance v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    .line 156
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSyncOptions(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 157
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-wide v4, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/mail/eassvc/EASScheduleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.scheduled.sync.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "accountId"

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mScheduledSyncIntent:Landroid/app/PendingIntent;

    .line 170
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/eassvc/EASScheduleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.schedule.power_saving.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "accountId"

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerSavingIntent:Landroid/app/PendingIntent;

    .line 176
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/eassvc/EASScheduleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.peaktime.check.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "accountId"

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mPeakTimeCheckIntent:Landroid/app/PendingIntent;

    .line 183
    return-void

    .line 147
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ExchangeSyncSources"

    invoke-static {v2, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private getGlobalInfoFilePath()Ljava/io/File;
    .locals 4

    .prologue
    .line 470
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 471
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_globalInfo.prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getInitSyncOption()Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 7

    .prologue
    .line 636
    sget-boolean v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ExchangeSyncSources"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "getInitSyncOption()"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 637
    :cond_0
    new-instance v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    invoke-direct {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/EASOptions;-><init>(D)V

    .line 638
    .local v2, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 639
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 640
    .local v0, bdlCustom:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 641
    invoke-direct {p0, v0, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncOptionFromCustomization(Landroid/os/Bundle;Lcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 651
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    const-wide/high16 v5, 0x4004

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3

    .line 652
    sget-boolean v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ExchangeSyncSources"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "getInitSyncOption: set plaintext type"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 653
    :cond_2
    const/4 v3, 0x1

    iput v3, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    .line 656
    :cond_3
    return-object v2

    .line 643
    :cond_4
    sget-boolean v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ExchangeSyncSources"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "getInitSyncOption - getMailCustomizationData return null bundle"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLastestSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .locals 8

    .prologue
    .line 1600
    const/4 v1, 0x0

    .line 1601
    .local v1, lastestItem:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getEnabledSyncSources()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 1603
    .local v3, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    if-nez v1, :cond_1

    .line 1604
    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v1

    goto :goto_0

    .line 1605
    :cond_1
    iget-wide v4, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1606
    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v1

    goto :goto_0

    .line 1609
    .end local v3           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_2
    return-object v1
.end method

.method public static getMailCommonSettingFromCustomization(JLandroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 780
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ExchangeSyncSources"

    const-string v8, "getMailCommonSettingFromCustomization"

    invoke-static {v7, p0, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 781
    :cond_0
    new-instance v3, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v3}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 782
    .local v3, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v3, p2}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 783
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 784
    const-string v7, "ExchangeSyncSources"

    const-string v8, "get mail common setting from customization: parameter is null"

    invoke-static {v7, p0, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 808
    :cond_1
    :goto_0
    return-object v4

    .line 788
    :cond_2
    const-string v7, "mail_common_setting"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 789
    .local v6, syncOption:Landroid/os/Bundle;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 790
    :cond_3
    const-string v7, "ExchangeSyncSources"

    const-string v8, "get mail common setting from customization: Can\'t retrieve bundle"

    invoke-static {v7, p0, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 794
    .local v4, ret:Landroid/os/Bundle;
    const-string v7, "plenty_set1"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 795
    .local v5, settingBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 796
    const-string v7, "refreshMailWhenOpenFolder"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, cust_refreshMailWhenOpenFolder:Ljava/lang/String;
    const-string v7, "downloadMessageWhenScroll"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, cust_downloadMessageWhenScroll:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ExchangeSyncSources"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cust_refreshMailWhenOpenFolder>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_5
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "ExchangeSyncSources"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cust_donwloadMessageWhenScroll>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 801
    const-string v7, "refreshMailWhenOpenFolder"

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 804
    const-string v7, "downloadMessageWhenScroll"

    invoke-virtual {v4, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNextScheduleTime(I)J
    .locals 10
    .parameter "syncScheduleTime"

    .prologue
    .line 1142
    mul-int/lit16 v8, p1, 0x3e8

    int-to-long v4, v8

    .line 1143
    .local v4, scheduleTimeInMs:J
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    .line 1144
    .local v0, nextScheTime:J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1145
    .local v2, nowTime:J
    cmp-long v8, v0, v2

    if-gez v8, :cond_0

    .line 1146
    sub-long v8, v2, v0

    div-long v6, v8, v4

    .line 1147
    .local v6, temp:J
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    mul-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 1149
    sub-long v8, v0, v2

    cmp-long v8, v8, v4

    if-lez v8, :cond_0

    .line 1150
    sub-long/2addr v0, v4

    .line 1153
    .end local v6           #temp:J
    :cond_0
    return-wide v0
.end method

.method private getOptionFilePath()Ljava/io/File;
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_opt.prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPeakChangeTime()J
    .locals 12

    .prologue
    .line 1337
    const-wide/16 v3, -0x1

    .line 1338
    .local v3, nexTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1339
    .local v2, dtNow:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1340
    .local v1, dtChange:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isInPeakTime()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1342
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setTime(Ljava/util/Date;I)V

    .line 1363
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1366
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 1369
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    return-wide v6

    .line 1345
    :cond_1
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    invoke-direct {v0, v6}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 1347
    .local v0, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v6

    if-nez v6, :cond_2

    .line 1348
    const/4 v5, 0x6

    .line 1353
    .local v5, nowDay:I
    :goto_1
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1354
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v7, v7, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    add-int/lit8 v7, v7, 0x1

    if-gt v6, v7, :cond_3

    .line 1355
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    invoke-direct {p0, v1, v6}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setTime(Ljava/util/Date;I)V

    goto :goto_0

    .line 1350
    .end local v5           #nowDay:I
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .restart local v5       #nowDay:I
    goto :goto_1

    .line 1357
    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setTime(Ljava/util/Date;I)V

    goto :goto_0

    .line 1360
    :cond_4
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    invoke-direct {p0, v1, v6}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setTime(Ljava/util/Date;I)V

    goto :goto_0
.end method

.method private getRandom(J)J
    .locals 4
    .parameter "max"

    .prologue
    .line 1630
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 1631
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 1636
    :goto_0
    return-wide v0

    .line 1633
    :cond_0
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1634
    const-wide/32 p1, 0x36ee80

    .line 1636
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0
.end method

.method private getSyncOptionFromCustomization(Landroid/os/Bundle;Lcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 33
    .parameter "bundle"
    .parameter "options"

    .prologue
    .line 660
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "ExchangeSyncSources"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    const-string v32, "getSyncOptionFromCustomization()"

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 661
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 662
    :cond_1
    const-string v30, "ExchangeSyncSources"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    const-string v32, "get sync option from customization: parameter is null"

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 778
    :cond_2
    :goto_0
    return-void

    .line 666
    :cond_3
    const-string v30, "eas_sync_option"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 667
    .local v19, syncOption:Landroid/os/Bundle;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v30

    if-gtz v30, :cond_5

    .line 668
    :cond_4
    const-string v30, "ExchangeSyncSources"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    const-string v32, "get sync option from customization: Can\'t retrieve bundle"

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_5
    const-string v11, "plenty_set"

    .line 673
    .local v11, key_plenty:Ljava/lang/String;
    const-string v10, ""

    .line 676
    .local v10, key_now:Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, syncSchedule:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, syncSchedulePeak:Ljava/lang/String;
    const/16 v25, 0x0

    .line 677
    .local v25, syncScheduleOffPeak:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, syncPeakDays:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, syncPeakStart:Ljava/lang/String;
    const/16 v21, 0x0

    .line 678
    .local v21, syncPeakEnd:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, conflict:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, mailFilter:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, mailTruncation:Ljava/lang/String;
    const/16 v23, 0x0

    .line 679
    .local v23, syncRoaming:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, mailBodyType:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, mailAttachOpt:Ljava/lang/String;
    const/4 v2, 0x0

    .line 680
    .local v2, calFilterType:Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, syncSchedulePeakOn:Ljava/lang/String;
    const/16 v27, 0x0

    .line 681
    .local v27, syncSchedulePeakOff:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, peakDays:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, peakTimeStart:Ljava/lang/String;
    const/16 v17, 0x0

    .line 683
    .local v17, peakTimeEnd:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, deviceModel:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, deviceFriendlyName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, deviceName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 685
    .local v29, useSsl:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_6

    .line 686
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v8, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 687
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 689
    .local v9, key:Landroid/os/Bundle;
    const-string v30, "sync_schedule"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 690
    const-string v30, "sync_schedule_peak"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 691
    const-string v30, "sync_schedule_off_peak"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 692
    const-string v30, "sync_peak_time_days"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 693
    const-string v30, "sync_peak_time_start"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 694
    const-string v30, "sync_peak_time_end"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 695
    const-string v30, "sync_while_roaming"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 696
    const-string v30, "conflict_resolving"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    const-string v30, "mail_filter_type"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 698
    const-string v30, "mail_truncation_size"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 699
    const-string v30, "mail_body_type"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 700
    const-string v30, "mail_attachment_opt"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 701
    const-string v30, "cal_filter_type"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    const-string v30, "syncSchedulePeakOn"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 703
    const-string v30, "syncSchedulePeakOff"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 704
    const-string v30, "peakDays"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 705
    const-string v30, "peakTimeStart"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 706
    const-string v30, "peakTimeEnd"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 707
    const-string v30, "deviceModel"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    const-string v30, "deviceName"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 709
    const-string v30, "deviceFriendName"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    const-string v30, "use_ssl"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 685
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 712
    .end local v9           #key:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 713
    .local v7, e:Ljava/lang/Exception;
    const-string v30, "ExchangeSyncSources"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 717
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_7

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_schedule>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_7
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_8

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_schedule_peak>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_8
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_9

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_schedule_off_peak>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_9
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_a

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_peak_time_days>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_a
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_b

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_peak_time_start>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_b
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_c

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_peak_time_end>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_c
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_d

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :sync_while_roaming>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_d
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_e

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :conflict_resolving>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_e
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_f

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :mail_filter_type>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_f
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_10

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :mail_truncation_size>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_10
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_11

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :mail_body_type>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_11
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_12

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :mail_attachment_opt>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_12
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_13

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :cal_filter_type>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_13
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_14

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :syncSchedulePeakOn>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_14
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_15

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :syncSchedulePeakOff>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_15
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_16

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :peakDays>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_16
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_17

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :peakTimeStart>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_17
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_18

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :peakTimeEnd>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_18
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_19

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :deviceModel>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_19
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_1a

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :deviceFriendlyName>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_1a
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_1b

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :deviceName>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_1b
    sget-boolean v30, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v30, :cond_1c

    const-string v30, "ExchangeSyncSources"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cust_EASOption :use_ssl>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_1c
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1d

    .line 741
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    .line 742
    :cond_1d
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1e

    .line 743
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 744
    :cond_1e
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1f

    .line 745
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 746
    :cond_1f
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_20

    .line 747
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    .line 748
    :cond_20
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_21

    .line 749
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 750
    :cond_21
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_22

    .line 751
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 752
    :cond_22
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_23

    .line 755
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_23

    .line 756
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    .line 757
    :cond_23
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 758
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 759
    :cond_24
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_25

    .line 760
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 761
    :cond_25
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_26

    .line 762
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    .line 763
    :cond_26
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_27

    .line 764
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    .line 765
    :cond_27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_28

    .line 766
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    .line 767
    :cond_28
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_29

    .line 768
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 769
    :cond_29
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2a

    .line 770
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 771
    :cond_2a
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2b

    .line 772
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    .line 773
    :cond_2b
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2c

    .line 774
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 775
    :cond_2c
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 776
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    goto/16 :goto_0
.end method

.method public static getSyncOptions(Ljava/io/FileReader;Lcom/htc/android/mail/eassvc/pim/EASOptions;Ljava/lang/String;)Z
    .locals 10
    .parameter "reader"
    .parameter "options"
    .parameter "RequireManualSyncWhenRoaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 284
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 285
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 287
    const-string v6, "Option"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, curTagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 291
    .local v1, curTagVal:Ljava/lang/String;
    const/4 v5, 0x0

    .line 292
    .local v5, schedulePeak:Ljava/lang/String;
    const/4 v4, 0x0

    .line 297
    .local v4, scheduleOffPeak:Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_10

    .line 298
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v8, v6, :cond_1

    .line 299
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 300
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 301
    :cond_1
    const/4 v6, 0x4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 302
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 303
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v6, "SyncSchedule"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    goto :goto_1

    .line 306
    :cond_2
    const-string v6, "SchedulePeak"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    move-object v5, v1

    goto :goto_1

    .line 309
    :cond_3
    const-string v6, "ScheduleOffPeak"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    move-object v4, v1

    goto :goto_1

    .line 312
    :cond_4
    const-string v6, "PeakTimeStart"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    goto :goto_1

    .line 314
    :cond_5
    const-string v6, "PeakTimeEnd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    goto :goto_1

    .line 316
    :cond_6
    const-string v6, "PeakTimeDays"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    goto :goto_1

    .line 318
    :cond_7
    const-string v6, "DisableAtXMode"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 320
    if-eqz p2, :cond_0

    .line 321
    const-string v6, "1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 322
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    goto :goto_1

    .line 324
    :cond_8
    iput-boolean v9, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    goto :goto_1

    .line 327
    :cond_9
    const-string v6, "ConflictResolving"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    goto/16 :goto_1

    .line 329
    :cond_a
    const-string v6, "MailFilter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    goto/16 :goto_1

    .line 331
    :cond_b
    const-string v6, "MailTruncateSize"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    goto/16 :goto_1

    .line 333
    :cond_c
    const-string v6, "MailBodyType"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    goto/16 :goto_1

    .line 335
    :cond_d
    const-string v6, "MailAttachmentOpt"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    goto/16 :goto_1

    .line 337
    :cond_e
    const-string v6, "CalFilter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    goto/16 :goto_1

    .line 339
    :cond_f
    const-string v6, "CalBodyFormat"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    goto/16 :goto_1

    .line 348
    :cond_10
    const/4 v2, 0x0

    .line 349
    .local v2, optionChange:Z
    if-nez v5, :cond_11

    .line 350
    iget v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 351
    const/4 v2, 0x1

    .line 355
    :goto_2
    if-nez v4, :cond_12

    .line 356
    iget v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 357
    const/4 v2, 0x1

    .line 362
    :goto_3
    return v2

    .line 353
    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    goto :goto_2

    .line 359
    :cond_12
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    goto :goto_3
.end method

.method private readSyncOptions()Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 14

    .prologue
    .line 217
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    if-nez v10, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getOptionFilePath()Ljava/io/File;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    .line 221
    :cond_0
    new-instance v10, Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    invoke-direct {v10, v11, v12}, Lcom/htc/android/mail/eassvc/pim/EASOptions;-><init>(D)V

    iput-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 222
    const/4 v7, 0x0

    .line 225
    .local v7, prefReader:Ljava/io/FileReader;
    :try_start_0
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v10, "eas_opt.prefs"

    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v6, optionPrefFile:Ljava/io/File;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v7           #prefReader:Ljava/io/FileReader;
    .local v8, prefReader:Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 244
    .local v4, manualSyncWhenRoaming:Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-eqz v10, :cond_1

    .line 245
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iget-object v4, v10, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireManualSyncWhenRoaming:Ljava/lang/String;

    .line 247
    :cond_1
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-static {v8, v10, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncOptions(Ljava/io/FileReader;Lcom/htc/android/mail/eassvc/pim/EASOptions;Ljava/lang/String;)Z

    move-result v5

    .line 249
    .local v5, optionChange:Z
    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeSyncOptions()V

    .line 253
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12, v13}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/easOptionsForUI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, easOptionsForUI:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 255
    new-instance v9, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;-><init>()V

    .line 256
    .local v9, subOptions:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v10, v10, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    iput v10, v9, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I

    .line 257
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v10, v10, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    iput v10, v9, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    .line 259
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11, v12, v9}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->updateEASOptionValuesForUI(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASOptionForUI;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 260
    sget-boolean v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 261
    const-string v10, "ExchangeSyncSources"

    const-string v11, "Failed to update EASOption values for UI"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 271
    .end local v9           #subOptions:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :cond_3
    if-eqz v8, :cond_4

    .line 273
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 279
    .end local v3           #easOptionsForUI:Ljava/io/File;
    .end local v5           #optionChange:Z
    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-object v7, v8

    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v4           #manualSyncWhenRoaming:Ljava/lang/String;
    .end local v6           #optionPrefFile:Ljava/io/File;
    .end local v8           #prefReader:Ljava/io/FileReader;
    .restart local v7       #prefReader:Ljava/io/FileReader;
    :goto_1
    return-object v10

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-boolean v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "ExchangeSyncSources"

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v12, "readSyncOptions(): File not found, create default for it."

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getInitSyncOption()Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 231
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeSyncOptions()V

    .line 232
    if-eqz v7, :cond_6

    .line 234
    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    goto :goto_1

    .line 235
    :catch_1
    move-exception v2

    .line 236
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 266
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #e1:Ljava/io/IOException;
    .end local v7           #prefReader:Ljava/io/FileReader;
    .restart local v0       #dataFilePath:Ljava/io/File;
    .restart local v4       #manualSyncWhenRoaming:Ljava/lang/String;
    .restart local v6       #optionPrefFile:Ljava/io/File;
    .restart local v8       #prefReader:Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 267
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    sget-boolean v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "ExchangeSyncSources"

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readSyncOptions(), "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :cond_7
    if-eqz v8, :cond_4

    .line 273
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 274
    :catch_3
    move-exception v2

    .line 275
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #e1:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v2           #e1:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 269
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    sget-boolean v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v10, :cond_8

    const-string v10, "ExchangeSyncSources"

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readSyncOptions(), "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    :cond_8
    if-eqz v8, :cond_4

    .line 273
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 274
    :catch_5
    move-exception v2

    goto :goto_3

    .line 271
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_9

    .line 273
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 271
    :cond_9
    :goto_4
    throw v10

    .line 274
    :catch_6
    move-exception v2

    .line 275
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 274
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v3       #easOptionsForUI:Ljava/io/File;
    .restart local v5       #optionChange:Z
    :catch_7
    move-exception v2

    goto :goto_3
.end method

.method private sendScheduleChangeBroadcast()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;->scheduleChange()V

    .line 997
    :cond_0
    return-void
.end method

.method private setTime(Ljava/util/Date;I)V
    .locals 1
    .parameter "date"
    .parameter "timeInSec"

    .prologue
    .line 1373
    const/16 v0, 0x5a0

    if-lt p2, v0, :cond_0

    .line 1375
    const/4 p2, 0x0

    .line 1377
    :cond_0
    div-int/lit8 v0, p2, 0x3c

    invoke-virtual {p1, v0}, Ljava/util/Date;->setHours(I)V

    .line 1378
    rem-int/lit8 v0, p2, 0x3c

    invoke-virtual {p1, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 1380
    return-void
.end method

.method private updateAccountDirectpushInfo(Z)V
    .locals 2
    .parameter "dpEnabled"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-boolean v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    .line 1498
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iput-boolean p1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->directpushEnabled:Z

    .line 1499
    if-eqz p1, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->getColID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    .line 1505
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->getColID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    .line 1510
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1511
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultSyncMailbox()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    .line 1516
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1517
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getColID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    .line 1522
    :cond_0
    :goto_3
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    goto :goto_1

    .line 1514
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    goto :goto_2

    .line 1519
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public cancelSync()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSync(Z)V

    .line 860
    return-void
.end method

.method public cancelSync(Z)V
    .locals 4
    .parameter "abortGlobalHttppost"

    .prologue
    .line 862
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 863
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->cancelSync()V

    goto :goto_0

    .line 867
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_0
    if-eqz p1, :cond_1

    .line 868
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;-><init>(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 875
    :cond_1
    return-void
.end method

.method public cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V
    .locals 1
    .parameter "exSyncSources"
    .parameter "srcType"

    .prologue
    .line 878
    packed-switch p2, :pswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 880
    :pswitch_0
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cancelSync()V

    goto :goto_0

    .line 883
    :pswitch_1
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cancelSync()V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->cancelSync()V

    goto :goto_0

    .line 889
    :pswitch_3
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->cancelSync()V

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;II)V
    .locals 1
    .parameter "exSyncSources"
    .parameter "srcType"
    .parameter "mode"

    .prologue
    .line 895
    packed-switch p2, :pswitch_data_0

    .line 910
    :goto_0
    return-void

    .line 897
    :pswitch_0
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v0, p3}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cancelSync(I)V

    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v0, p3}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cancelSync(I)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0, p3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->cancelSync(I)V

    goto :goto_0

    .line 906
    :pswitch_3
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v0, p3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->cancelSync(I)V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized checkScheduler()V
    .locals 1

    .prologue
    .line 999
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    monitor-exit p0

    return-void

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkScheduler(Z)V
    .locals 11
    .parameter "needRandom"

    .prologue
    const-wide/high16 v9, -0x8000

    .line 1002
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "- checkScheduler()"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v3

    .line 1004
    .local v3, syncSchedule:I
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eq v5, v3, :cond_1

    .line 1005
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastScheduleChange(Landroid/content/Context;J)V

    .line 1006
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v3, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    .line 1008
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getScheduleTime(I)I

    move-result v4

    .line 1009
    .local v4, syncScheduleTime:I
    if-nez v3, :cond_4

    .line 1010
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "- checkScheduler(): Manually"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1011
    :cond_2
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    .line 1012
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopSyncSchedule()V

    .line 1013
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 1014
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkUpdatePeakAlarm()V

    .line 1015
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->sendScheduleChangeBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 1016
    :cond_4
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 1017
    :try_start_1
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "- checkScheduler(): Directpush"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1018
    :cond_5
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    .line 1019
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopSyncSchedule()V

    .line 1020
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush(Z)V

    .line 1021
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkUpdatePeakAlarm()V

    .line 1022
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->sendScheduleChangeBroadcast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    .end local v3           #syncSchedule:I
    .end local v4           #syncScheduleTime:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1023
    .restart local v3       #syncSchedule:I
    .restart local v4       #syncScheduleTime:I
    :cond_6
    if-lez v4, :cond_3

    .line 1024
    :try_start_2
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- checkScheduler(): schedule interval:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1025
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 1026
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkUpdatePeakAlarm()V

    .line 1028
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 1030
    .local v1, nowTime:J
    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_8

    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v5, v5, v1

    if-ltz v5, :cond_8

    int-to-long v5, v4

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 1034
    :cond_8
    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_d

    .line 1037
    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_a

    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v5, v5, v1

    if-gez v5, :cond_a

    .line 1039
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "- checkScheduler(): add a schedule sync to device"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1041
    :cond_9
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mScheduledSyncIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1049
    :cond_a
    :goto_1
    :try_start_4
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- checkScheduler(): nextScheduleTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1050
    :cond_b
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- checkScheduler(): nowTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1051
    :cond_c
    invoke-virtual {p0, v4, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startSyncSchedule(IZ)V

    .line 1052
    int-to-long v5, v4

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    .line 1053
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1054
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->sendScheduleChangeBroadcast()V

    goto/16 :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 1046
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_d
    int-to-long v5, v4

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    .line 1047
    const-wide/high16 v5, -0x8000

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method checkUpdatePeakAlarm()V
    .locals 4

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getPeakChangeTime()J

    move-result-wide v0

    .line 1290
    .local v0, nextPeakTime:J
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1291
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    .line 1292
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->updatePeakAlarm()V

    .line 1293
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1295
    :cond_0
    return-void
.end method

.method public enableSyncSource(IZ)V
    .locals 4
    .parameter "srcType"
    .parameter "enable"

    .prologue
    .line 836
    sget-boolean v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeSyncSources"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- enableSyncSource(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 838
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 856
    :cond_1
    :goto_0
    return-void

    .line 840
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 841
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->setEnabled(Z)V

    goto :goto_0

    .line 844
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 845
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->setEnabled(Z)V

    goto :goto_0

    .line 848
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 849
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setEnabled(Z)V

    goto :goto_0

    .line 852
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 853
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setEnabled(Z)V

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEnabledSyncSources()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/core/SyncSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v1, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 933
    .local v2, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    .end local v2           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_1
    return-object v1
.end method

.method public declared-synchronized getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMappingSchedule()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1214
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isInPeakTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1215
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 1220
    .local v0, schedule:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isSystemAutoSync()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1221
    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "getMappingSchedule(): Auto-Sync is disable, set schedule to Manually"

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move v0, v1

    .line 1233
    .end local v0           #schedule:I
    :cond_0
    :goto_1
    return v0

    .line 1217
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .restart local v0       #schedule:I
    goto :goto_0

    .line 1223
    :cond_2
    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1224
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "getMappingSchedule(): Directpush and no network, set schedule to 15 minutes"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1226
    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 1227
    :cond_4
    iget-boolean v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mIsSmartWifi:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v0, v2

    .line 1228
    goto :goto_1

    .line 1229
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isConnWhileRoaming()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isNetworkAllowAutosync(Landroid/content/Context;JZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "getMappingSchedule(): schedule not enabled, set schedule to Manually"

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move v0, v1

    .line 1231
    goto :goto_1
.end method

.method public getPureMappingSchedule()I
    .locals 2

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isInPeakTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 1244
    .local v0, schedule:I
    :goto_0
    return v0

    .line 1242
    .end local v0           #schedule:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .restart local v0       #schedule:I
    goto :goto_0
.end method

.method public getScheduleTime(I)I
    .locals 2
    .parameter "syncScheduleType"

    .prologue
    .line 1186
    const/4 v0, -0x1

    .line 1187
    .local v0, scheduleTime:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1188
    const/16 v0, 0x12c

    .line 1208
    :goto_0
    return v0

    .line 1189
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1190
    const/16 v0, 0x258

    goto :goto_0

    .line 1191
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1192
    const/16 v0, 0x384

    goto :goto_0

    .line 1193
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1194
    const/16 v0, 0x708

    goto :goto_0

    .line 1195
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 1196
    const/16 v0, 0xe10

    goto :goto_0

    .line 1197
    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 1198
    const/16 v0, 0x1c20

    goto :goto_0

    .line 1199
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 1200
    const/16 v0, 0x3840

    goto :goto_0

    .line 1201
    :cond_6
    const/16 v1, 0x9

    if-ne p1, v1, :cond_7

    .line 1202
    const v0, 0x15180

    goto :goto_0

    .line 1203
    :cond_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 1204
    const/4 v0, -0x1

    goto :goto_0

    .line 1206
    :cond_8
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;
    .locals 3
    .parameter "syncSourceType"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 200
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 204
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hadPasswordPolicy()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1570
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-nez v1, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return v0

    .line 1573
    :cond_1
    const-string v1, "1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConnWhileRoaming()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1267
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1268
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1269
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming_allowed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, roamingType:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 1272
    const/4 v0, 0x1

    .line 1284
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v3           #roamingType:Ljava/lang/String;
    .local v0, ConnWhileRoaming:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-boolean v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    if-eqz v6, :cond_3

    :goto_1
    return v4

    .line 1274
    .end local v0           #ConnWhileRoaming:Z
    .restart local v2       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v3       #roamingType:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .line 1277
    .end local v0           #ConnWhileRoaming:Z
    .end local v3           #roamingType:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    .restart local v0       #ConnWhileRoaming:Z
    :goto_2
    goto :goto_0

    .end local v0           #ConnWhileRoaming:Z
    :cond_2
    move v0, v5

    goto :goto_2

    .line 1279
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 1280
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExchangeSyncSources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get System.DATA_ROAMING value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    move v4, v5

    .line 1284
    goto :goto_1
.end method

.method isExchangeEnable()Z
    .locals 3

    .prologue
    .line 951
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 952
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    const/4 v2, 0x1

    .line 956
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInPeakTime()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1303
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1304
    .local v1, dtNow:Ljava/util/Date;
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 1305
    .local v0, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 1306
    .local v5, peakStart:I
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v4, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 1307
    .local v4, peakEnd:I
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v9

    add-int v2, v8, v9

    .line 1309
    .local v2, minuteNow:I
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    if-nez v8, :cond_1

    .line 1310
    const/4 v3, 0x6

    .line 1314
    .local v3, nowDay:I
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1331
    :cond_0
    :goto_1
    return v6

    .line 1312
    .end local v3           #nowDay:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3       #nowDay:I
    goto :goto_0

    .line 1318
    :cond_2
    if-eq v5, v4, :cond_0

    .line 1321
    if-ge v5, v4, :cond_3

    .line 1322
    if-gt v5, v2, :cond_0

    if-gt v2, v4, :cond_0

    move v6, v7

    .line 1323
    goto :goto_1

    .line 1328
    :cond_3
    if-ge v2, v5, :cond_4

    if-gt v2, v4, :cond_0

    :cond_4
    move v6, v7

    .line 1329
    goto :goto_1
.end method

.method public isPasswordExpire()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1550
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-nez v3, :cond_2

    .line 1551
    :cond_0
    sget-boolean v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ExchangeSyncSources"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "isPasswordExpire(): do not have provision yet"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1562
    :cond_1
    :goto_0
    return v2

    .line 1554
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iget-object v0, v3, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    .line 1555
    .local v0, enablePassword:Ljava/lang/String;
    const-string v3, "1"

    invoke-static {v0, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1558
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iget-object v1, v3, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    .line 1559
    .local v1, passExpire:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1560
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isPasswordExpire(Landroid/content/Context;I)Z

    move-result v2

    goto :goto_0
.end method

.method public isPasswordSufficient()Z
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v0

    return v0
.end method

.method public isScheduleingEnabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1248
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 1249
    .local v0, bAirplaneMode:Z
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v3

    .line 1250
    .local v3, bWifiNetwork:Z
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v2

    .line 1251
    .local v2, bUsbNetwork:Z
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isConnWhileRoaming()Z

    move-result v1

    .line 1252
    .local v1, bConnWhileRoaming:Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 1253
    sget-boolean v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "isScheduleingEnabled(): AirplaneMode & no syncable network."

    invoke-static {v4, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1262
    :cond_0
    :goto_0
    return v5

    .line 1255
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isDataRoaming(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1256
    sget-boolean v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v7, "ExchangeSyncSources"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isScheduleingEnabled(): Roaming "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_4

    const-string v4, ", Wifi"

    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_5

    const-string v4, ", Connect while roaming"

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_6

    const-string v4, ", USBNet"

    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1258
    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    move v4, v6

    :goto_4
    move v5, v4

    goto :goto_0

    .line 1256
    :cond_4
    const-string v4, ""

    goto :goto_1

    :cond_5
    const-string v4, ""

    goto :goto_2

    :cond_6
    const-string v4, ""

    goto :goto_3

    :cond_7
    move v4, v5

    .line 1258
    goto :goto_4

    .line 1259
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getScheduleTime(I)I

    move-result v4

    if-lez v4, :cond_0

    move v5, v6

    .line 1260
    goto :goto_0
.end method

.method isSystemAutoSync()Z
    .locals 5

    .prologue
    .line 1060
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1061
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 1062
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 1064
    .local v2, masterAutoSync:Z
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public needAdmin()Z
    .locals 1

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->hadPasswordPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needAdmin(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDoScheduleSync()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 1156
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1158
    .local v0, nowTime:J
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v2

    .line 1159
    .local v2, syncSchedule:I
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getScheduleTime(I)I

    move-result v3

    .line 1162
    .local v3, syncScheduleTime:I
    const/16 v5, 0x384

    if-le v3, v5, :cond_0

    .line 1170
    :goto_0
    return v4

    .line 1166
    :cond_0
    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 1167
    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needDoScheduleSync()- nextScheduleTime= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public needFetchOneDayMail()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1616
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1617
    :cond_0
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "needFetchOneDayMail: account null"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1626
    :cond_1
    :goto_0
    return v4

    .line 1620
    :cond_2
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_DO_NOT_FETCH_ONE_DAY_MAIL:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 1621
    .local v2, item:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1622
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "needFetchOneDayMail: false"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1626
    .end local v2           #item:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public readGlobalInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 476
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    if-nez v7, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getGlobalInfoFilePath()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    .line 480
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    monitor-enter v8

    .line 481
    const/4 v5, 0x0

    .line 484
    .local v5, prefReader:Ljava/io/FileReader;
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 485
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ExchangeSyncSources"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v10, "readGlobalInfo(): global info file not ready."

    invoke-static {v7, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :goto_0
    return-void

    .line 488
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 503
    .end local v5           #prefReader:Ljava/io/FileReader;
    .local v6, prefReader:Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 504
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 506
    const-string v7, "GlobalInformation"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, curTagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 511
    .local v1, curTagVal:Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_f

    .line 512
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v11, v7, :cond_8

    .line 513
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 514
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_3
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 533
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 534
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "ExchangeSyncSources"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RGlobalInfo(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 538
    :cond_4
    if-eqz v6, :cond_5

    .line 540
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 546
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_3
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v6

    .line 547
    .end local v6           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    goto :goto_0

    .line 489
    :catch_1
    move-exception v2

    .line 490
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_7
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "ExchangeSyncSources"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v7, v9, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    .line 491
    :cond_6
    const-string v7, "0"

    iput-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 492
    if-eqz v5, :cond_7

    .line 494
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 499
    :cond_7
    :goto_4
    :try_start_9
    monitor-exit v8

    goto :goto_0

    .line 546
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v7

    .line 495
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 496
    .local v3, e1:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 515
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #e1:Ljava/io/IOException;
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_8
    const/4 v7, 0x4

    :try_start_b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 516
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 517
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 518
    const-string v7, "FolderSyncKey"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 519
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    .line 535
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    .line 536
    .local v2, e:Ljava/io/IOException;
    :try_start_c
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "ExchangeSyncSources"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RGlobalInfo(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 538
    :cond_9
    if-eqz v6, :cond_5

    .line 540
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_3

    .line 541
    :catch_4
    move-exception v3

    .line 542
    .restart local v3       #e1:Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    .line 546
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    goto :goto_5

    .line 520
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_a
    :try_start_f
    const-string v7, "NextScheduleTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 521
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_2

    .line 538
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_2
    move-exception v7

    if-eqz v6, :cond_b

    .line 540
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 538
    :cond_b
    :goto_6
    :try_start_11
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 522
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    :try_start_12
    const-string v7, "NextPeakChangeTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 523
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    goto/16 :goto_2

    .line 524
    :cond_d
    const-string v7, "PolicyKey"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 525
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 526
    :cond_e
    const-string v7, "currentScheduleTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 527
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_2

    .line 541
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v3

    .line 542
    .restart local v3       #e1:Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 541
    .end local v3           #e1:Ljava/io/IOException;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v3

    .line 542
    .restart local v3       #e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_3

    .line 538
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_f
    if-eqz v6, :cond_5

    .line 540
    :try_start_14
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_3

    .line 541
    :catch_7
    move-exception v3

    .line 542
    .restart local v3       #e1:Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_3
.end method

.method public readPolicyDoc()V
    .locals 5

    .prologue
    .line 820
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "- readPolicyDoc() "

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 822
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->readProvisionData(Landroid/content/Context;J)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 1417
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->release()V

    goto :goto_0

    .line 1419
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1

    .line 1420
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1422
    :cond_1
    return-void
.end method

.method public declared-synchronized releaseHttpClient()V
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseSchedulePowerLock()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 1391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 1393
    :cond_0
    return-void
.end method

.method public resetAllHttpClient()V
    .locals 3

    .prologue
    .line 971
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetHttpClient()V

    .line 974
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 975
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    goto :goto_0

    .line 977
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 978
    return-void
.end method

.method public resetExchangeSyncable()V
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isExchangeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setExchangeSyncable(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopSyncSchedule()V

    .line 949
    :goto_0
    return-void

    .line 946
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setExchangeSyncable(Z)V

    .line 947
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_0
.end method

.method public declared-synchronized resetHttpClient()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetNextScheduleTimeFromNow()V
    .locals 4

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v0

    .line 1174
    .local v0, syncSchedule:I
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getScheduleTime(I)I

    move-result v1

    .line 1176
    .local v1, syncScheduleTime:I
    if-lez v1, :cond_0

    .line 1177
    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getNextScheduleTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    .line 1183
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1184
    return-void

    .line 1181
    :cond_0
    const-wide/high16 v2, -0x8000

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    goto :goto_0
.end method

.method public resetSynckeyForMoreAvalible()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v0, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getSyncCollection()Ljava/util/ArrayList;

    move-result-object v1

    .line 1583
    .local v1, collList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 1584
    .local v3, easCol:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    iget-object v7, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->isMoreAvalible(Ljava/lang/String;)Z

    move-result v5

    .line 1585
    .local v5, moreAvalible:Z
    if-eqz v5, :cond_0

    .line 1586
    const-string v6, "ExchangeSyncSources"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- resetSynckeyForMoreAvalible(): coll = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1587
    const-string v6, "0"

    iput-object v6, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    .line 1588
    iget-object v6, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1592
    .end local v3           #easCol:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v5           #moreAvalible:Z
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->updateMailboxInfo()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    :goto_1
    return-object v0

    .line 1593
    :catch_0
    move-exception v2

    .line 1594
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public restartDirectpush(ZZ)V
    .locals 5
    .parameter "isError"
    .parameter "isCancel"

    .prologue
    const/4 v4, 0x1

    .line 1478
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eq v1, v4, :cond_1

    .line 1479
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDirectpush() - Schedule is not DirectPush. schedule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v4, v4, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "startDirectpush()"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1484
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isExchangeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isSystemAutoSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->updateAccountDirectpushInfo(Z)V

    .line 1486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.dp.restartAfterSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.easdp.EASDirectpush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string v1, "exchangeAccount"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1489
    const-string v1, "errorWhileSync"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1490
    const-string v1, "userCancel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1491
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method setExchangeSyncable(Z)V
    .locals 4
    .parameter "mSyncable"

    .prologue
    .line 959
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "htceas"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 964
    .local v1, devSyncable:Z
    if-eq v1, p1, :cond_0

    .line 967
    const-string v2, "htceas"

    invoke-static {v0, v2, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setPause(IZ)V
    .locals 3
    .parameter "syncSrcType"
    .parameter "bPause"

    .prologue
    .line 922
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 923
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 924
    invoke-interface {v1, p2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setPause(Z)V

    .line 928
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_1
    return-void
.end method

.method public setPause(Z)V
    .locals 6
    .parameter "bPause"

    .prologue
    .line 913
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 914
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isPause()Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 915
    invoke-interface {v1, p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setPause(Z)V

    goto :goto_0

    .line 917
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPause("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") skip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 920
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_2
    return-void
.end method

.method public setSchedulePowerLock()V
    .locals 4

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCHEDULE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 1386
    :cond_0
    return-void
.end method

.method public setSmartWifiCheck(Z)V
    .locals 3
    .parameter "bSmartWifiAvticed"

    .prologue
    const/4 v2, 0x1

    .line 1397
    if-eqz p1, :cond_1

    .line 1398
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v0

    .line 1399
    .local v0, oldScheduleType:I
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mIsSmartWifi:Z

    .line 1400
    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    .line 1410
    .end local v0           #oldScheduleType:I
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mIsSmartWifi:Z

    .line 1406
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_0
.end method

.method public setSyncProxy(Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;)V
    .locals 0
    .parameter "syncProxy"

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    .line 1426
    return-void
.end method

.method public startDirectpush()V
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush(Z)V

    .line 1430
    return-void
.end method

.method public startDirectpush(Z)V
    .locals 14
    .parameter "needRandom"

    .prologue
    const/4 v13, 0x1

    .line 1432
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v7, v7, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eq v7, v13, :cond_0

    .line 1433
    const-string v7, "ExchangeSyncSources"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startDirectpush() - Schedule is not DirectPush. schedule="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v10, v10, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1475
    :goto_0
    return-void

    .line 1436
    :cond_0
    const-wide/16 v4, 0x0

    .line 1437
    .local v4, offset:J
    if-eqz p1, :cond_1

    .line 1438
    const-wide/32 v7, 0xdbba0

    invoke-direct {p0, v7, v8}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getRandom(J)J

    move-result-wide v4

    .line 1440
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v8, "ExchangeSyncSources"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startDirectpush():"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x0

    cmp-long v7, v4, v11

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1442
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isExchangeEnable()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isSystemAutoSync()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1443
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getLastestSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v3

    .line 1444
    .local v3, lastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    if-eqz v3, :cond_4

    iget v7, v3, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    if-ne v7, v13, :cond_4

    iget v7, v3, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    const/16 v8, 0x191

    if-ne v7, v8, :cond_4

    .line 1446
    const-string v7, "ExchangeSyncSources"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v9, "startDirectpush(): skip, EAS get Http 401 error."

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 1440
    .end local v3           #lastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " offset="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1449
    .restart local v3       #lastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    :cond_4
    const/4 v0, 0x1

    .line 1450
    .local v0, bHadSyncKey:Z
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isScheduleingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1451
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 1452
    .local v6, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    if-nez v7, :cond_7

    .line 1462
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_6
    if-eqz v0, :cond_8

    .line 1463
    invoke-direct {p0, v13}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->updateAccountDirectpushInfo(Z)V

    .line 1464
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.android.mail.intent.dp.start"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.htc.android.mail"

    const-string v8, "com.htc.android.mail.easdp.EASDirectpush"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v7, "exchangeAccount"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1467
    const-string v7, "delayMs"

    invoke-virtual {v2, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1468
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1455
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v6       #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_7
    invoke-interface {v6}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getSyncKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 1456
    const/4 v0, 0x0

    .line 1457
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    invoke-interface {v6}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_2

    .line 1470
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_8
    const-string v7, "ExchangeSyncSources"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v9, "startDirectpush(): some sync source do not have synckey"

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    .end local v0           #bHadSyncKey:Z
    .end local v3           #lastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    :cond_9
    const-string v7, "ExchangeSyncSources"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v9, "startDirectpush(): disable, system auto sync not enable"

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method startSyncSchedule(IZ)V
    .locals 13
    .parameter "syncScheduleTime"
    .parameter "needRandom"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isExchangeEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isSystemAutoSync()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1068
    :cond_0
    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSyncSchedule()- stop:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isExchangeEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " no syncsource"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isSystemAutoSync()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " system disable autosync."

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1126
    :goto_2
    return-void

    .line 1068
    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 1072
    :cond_3
    if-gez p1, :cond_4

    .line 1073
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "do not need to start sync scheduler (syncScheduleTime is -1)"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_2

    .line 1077
    :cond_4
    const-wide/16 v9, 0x0

    .line 1078
    .local v9, offset:J
    if-eqz p2, :cond_5

    .line 1079
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getRandom(J)J

    move-result-wide v9

    .line 1080
    sget-boolean v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSyncSchedule(): offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1082
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v3, "ExchangeSyncSources"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSyncSchedule()- interval = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    cmp-long v2, v9, v11

    if-nez v2, :cond_9

    const-string v2, ""

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1083
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1086
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 1087
    .local v7, nowTime:J
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_7

    .line 1088
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1089
    cmp-long v2, v9, v11

    if-eqz v2, :cond_a

    .line 1090
    add-long v2, v7, v9

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    .line 1106
    :goto_4
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1108
    :cond_7
    sget-boolean v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSyncSchedule()- schedule start at  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    invoke-direct {v5, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1109
    :cond_8
    const/16 v2, 0x384

    if-gt p1, v2, :cond_e

    .line 1113
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    const-wide/32 v4, 0x1b7740

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerSavingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setAlignmentRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1114
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mScheduledSyncIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1125
    :goto_5
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkUpdatePeakAlarm()V

    goto/16 :goto_2

    .line 1082
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v7           #nowTime:J
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", offset="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1092
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v7       #nowTime:J
    :cond_a
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    goto :goto_4

    .line 1096
    :cond_b
    const v2, 0x15180

    if-ne p1, v2, :cond_d

    .line 1097
    cmp-long v2, v9, v11

    if-eqz v2, :cond_c

    .line 1098
    add-long v2, v7, v9

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    goto :goto_4

    .line 1100
    :cond_c
    const-wide/32 v2, 0xea60

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    goto :goto_4

    .line 1103
    :cond_d
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getNextScheduleTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    goto/16 :goto_4

    .line 1118
    :cond_e
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mScheduledSyncIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setAlignmentRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1121
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerSavingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_5
.end method

.method public stopDirectpush()V
    .locals 9

    .prologue
    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, found:Z
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1527
    .local v3, mAm:Landroid/app/ActivityManager;
    const/16 v6, 0x32

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 1528
    .local v5, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1529
    .local v4, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    const-string v7, "com.htc.android.mail:directpush"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1530
    const/4 v0, 0x1

    .line 1534
    .end local v4           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    if-nez v0, :cond_3

    .line 1535
    sget-boolean v6, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ExchangeSyncSources"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "stopDirectpush(): no directpush service found, skip"

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1543
    :cond_2
    :goto_0
    return-void

    .line 1538
    :cond_3
    sget-boolean v6, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ExchangeSyncSources"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "stopDirectpush()"

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1539
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.android.mail.intent.dp.stop"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.easdp.EASDirectpush"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    const-string v6, "exchangeAccount"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1542
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public stopPeakTimeCheck()V
    .locals 4

    .prologue
    .line 1136
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "stopPeakTimeCheck()"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1138
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mPeakTimeCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1139
    return-void
.end method

.method public stopSyncSchedule()V
    .locals 4

    .prologue
    .line 1128
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "stopSyncSchedule()"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1129
    :cond_0
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    .line 1130
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1131
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1132
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mSchedulePowerSavingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1133
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mScheduledSyncIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1134
    return-void
.end method

.method updatePeakAlarm()V
    .locals 7

    .prologue
    .line 1298
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- updatePeakAlarm(): nextPeakChangeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1299
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1300
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mPeakTimeCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1301
    return-void
.end method

.method public updateScheduleAlarm()V
    .locals 5

    .prologue
    .line 980
    sget-boolean v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeSyncSources"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "- updateScheduleAlarm()"

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v0

    .line 982
    .local v0, syncSchedule:I
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eq v2, v0, :cond_1

    .line 983
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastScheduleChange(Landroid/content/Context;J)V

    .line 984
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v0, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    .line 986
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getScheduleTime(I)I

    move-result v1

    .line 987
    .local v1, syncScheduleTime:I
    if-lez v1, :cond_2

    .line 988
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startSyncSchedule(IZ)V

    .line 989
    int-to-long v2, v1

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    .line 991
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->updatePeakAlarm()V

    .line 992
    return-void
.end method

.method public writeAccountInfo()V
    .locals 4

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->updateAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public writeGlobalInfo()V
    .locals 12

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    if-nez v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getGlobalInfoFilePath()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    .line 555
    :cond_0
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    monitor-enter v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 556
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 557
    .local v10, tempFilePath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 559
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v9, tempFile:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 562
    .local v8, str:Ljava/io/FileOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 564
    .local v7, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v7, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 565
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 568
    const/4 v1, 0x0

    const-string v2, "GlobalInformation"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    const/4 v1, 0x0

    const-string v2, "version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    const/4 v1, 0x0

    const-string v2, "version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 575
    const/4 v1, 0x0

    const-string v2, "FolderSyncKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    const/4 v1, 0x0

    const-string v2, "FolderSyncKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 581
    const/4 v1, 0x0

    const-string v2, "PolicyKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    const/4 v1, 0x0

    const-string v2, "PolicyKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    :cond_2
    const/4 v1, 0x0

    const-string v2, "NextScheduleTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextScheduleTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    const/4 v1, 0x0

    const-string v2, "NextScheduleTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    const/4 v1, 0x0

    const-string v2, "currentScheduleTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->currentScheduleTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    const/4 v1, 0x0

    const-string v2, "currentScheduleTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    const/4 v1, 0x0

    const-string v2, "NextPeakChangeTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->nextPeakChangeTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    const/4 v1, 0x0

    const-string v2, "NextPeakChangeTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    const/4 v1, 0x0

    const-string v2, "GlobalInformation"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 602
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 603
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 604
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 609
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 610
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mGlobalInfoFilePath:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 613
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 617
    if-eqz v0, :cond_3

    .line 618
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_3
    if-eqz v5, :cond_4

    .line 622
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 623
    :goto_0
    const/4 v5, 0x0

    .line 626
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 627
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #str:Ljava/io/FileOutputStream;
    .end local v9           #tempFile:Ljava/io/File;
    .end local v10           #tempFilePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 614
    .restart local v0       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v5       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #str:Ljava/io/FileOutputStream;
    .restart local v9       #tempFile:Ljava/io/File;
    .restart local v10       #tempFilePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 615
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    if-eqz v0, :cond_5

    .line 618
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_5
    if-eqz v5, :cond_4

    .line 622
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    .line 627
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #str:Ljava/io/FileOutputStream;
    .end local v9           #tempFile:Ljava/io/File;
    .end local v10           #tempFilePath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 628
    :catch_1
    move-exception v6

    .line 629
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "WriteGlobalInfo: "

    invoke-static {v1, v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 617
    .end local v6           #e:Ljava/io/IOException;
    .restart local v0       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v5       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #str:Ljava/io/FileOutputStream;
    .restart local v9       #tempFile:Ljava/io/File;
    .restart local v10       #tempFilePath:Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 618
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_6
    if-eqz v5, :cond_7

    .line 622
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 623
    const/4 v5, 0x0

    .line 617
    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 630
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #str:Ljava/io/FileOutputStream;
    .end local v9           #tempFile:Ljava/io/File;
    .end local v10           #tempFilePath:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 631
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public writePolicyDoc()V
    .locals 5

    .prologue
    .line 828
    sget-boolean v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "- writePolicyDoc() "

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 830
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->writeProvisionData(Landroid/content/Context;JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExchangeSyncSources"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public writeSyncOptions()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 366
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    if-nez v5, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getOptionFilePath()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    .line 369
    :cond_0
    const/4 v1, 0x0

    .line 371
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mOptionsFilePath:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 375
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 376
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 379
    const/4 v5, 0x0

    const-string v6, "Option"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    const/4 v5, 0x0

    const-string v6, "SyncSchedule"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    const/4 v5, 0x0

    const-string v6, "SyncSchedule"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const/4 v5, 0x0

    const-string v6, "SchedulePeak"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    const/4 v5, 0x0

    const-string v6, "SchedulePeak"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const/4 v5, 0x0

    const-string v6, "ScheduleOffPeak"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    const/4 v5, 0x0

    const-string v6, "ScheduleOffPeak"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const/4 v5, 0x0

    const-string v6, "PeakTimeDays"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const/4 v5, 0x0

    const-string v6, "PeakTimeDays"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    const/4 v5, 0x0

    const-string v6, "PeakTimeStart"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const/4 v5, 0x0

    const-string v6, "PeakTimeStart"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const/4 v5, 0x0

    const-string v6, "PeakTimeEnd"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const/4 v5, 0x0

    const-string v6, "PeakTimeEnd"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const/4 v5, 0x0

    const-string v6, "DisableAtXMode"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-boolean v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    if-ne v5, v7, :cond_4

    const-string v5, "1"

    :goto_0
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    const/4 v5, 0x0

    const-string v6, "DisableAtXMode"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const/4 v5, 0x0

    const-string v6, "ConflictResolving"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    const/4 v5, 0x0

    const-string v6, "ConflictResolving"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const/4 v5, 0x0

    const-string v6, "MailFilter"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const/4 v5, 0x0

    const-string v6, "MailFilter"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const/4 v5, 0x0

    const-string v6, "MailTruncateSize"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const/4 v5, 0x0

    const-string v6, "MailTruncateSize"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const/4 v5, 0x0

    const-string v6, "MailBodyType"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const/4 v5, 0x0

    const-string v6, "MailBodyType"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const/4 v5, 0x0

    const-string v6, "MailAttachmentOpt"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const/4 v5, 0x0

    const-string v6, "MailAttachmentOpt"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/4 v5, 0x0

    const-string v6, "CalFilter"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const/4 v5, 0x0

    const-string v6, "CalFilter"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    const/4 v5, 0x0

    const-string v6, "CalBodyFormat"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/4 v5, 0x0

    const-string v6, "CalBodyFormat"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const/4 v5, 0x0

    const-string v6, "Option"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 445
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 449
    if-eqz v2, :cond_1

    .line 451
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v1, v2

    .line 458
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    new-instance v4, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;-><init>()V

    .line 459
    .local v4, subOptions:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    iput v5, v4, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    .line 460
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    iput v5, v4, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I

    .line 462
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v5, v6, v7, v4}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->updateEASOptionValuesForUI(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASOptionForUI;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 463
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 464
    const-string v5, "ExchangeSyncSources"

    const-string v6, "Failed to update EASOption values for UI"

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_3
    return-void

    .line 410
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #subOptions:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :try_start_3
    const-string v5, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 446
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-boolean v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "ExchangeSyncSources"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "WSO: "

    invoke-static {v5, v6, v7, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 449
    :cond_5
    if-eqz v1, :cond_2

    .line 451
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 452
    :catch_1
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_6

    .line 451
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 449
    :cond_6
    :goto_5
    throw v5

    .line 452
    :catch_2
    move-exception v0

    .line 453
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 452
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v0

    .line 453
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 446
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
