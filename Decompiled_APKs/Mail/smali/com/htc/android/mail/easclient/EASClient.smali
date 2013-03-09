.class public Lcom/htc/android/mail/easclient/EASClient;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "EASClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;,
        Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;
    }
.end annotation


# static fields
.field public static final CALENDAR_PREF_KEY:Ljava/lang/String; = "sync_calendar"

.field public static final CONTACTS_PREF_KEY:Ljava/lang/String; = "sync_contacts"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_POWER_SAVING_ALERT:I = 0x4

.field private static final DIALOG_PROGRESS_DELETE_ACCOUNT:I = 0x5

.field private static final DIALOG_PROGRESS_DELETE_REMAIN:I = 0x6

.field private static final DIALOG_PROGRESS_RESET:I = 0x3

.field private static final DIALOG_SYNC_IN_AIRPLANE_MODE:I = 0x2

.field private static final DIALOG_TASK_SYNC_ALERT:I = 0x7

.field public static final EMAIL_PREF_KEY:Ljava/lang/String; = "sync_email"

.field public static final GENERAL_SETTING_PREF_KEY:Ljava/lang/String; = "pref_general_setting"

.field private static final MESSAGE_DONE_RESET_ACCOUNT:I = 0x1

.field private static final MESSAGE_END_CANCEL_CERTIFICATE:I = 0x4

.field private static final MESSAGE_END_DELETE_ACCOUNT:I = 0x5

.field private static final MESSAGE_END_DELETE_REMAIN_DATAS:I = 0x6

.field private static final MESSAGE_END_SAVE_KEYSTORE:I = 0x3

.field private static final MESSAGE_INIT_LAYOUT:I = 0x8

.field private static final MESSAGE_START_RESET_ACCOUNT:I = 0x2

.field public static final SCHEDULE_PREF_KEY:Ljava/lang/String; = "sync_scheduling"

.field private static final TAG_TASKS:Ljava/lang/String; = "EASTask_UI"

.field public static final TASKS_PREF_KEY:Ljava/lang/String; = "sync_tasks"

.field public static final UPDATE_WHEN_OPENED_PREF_KEY:Ljava/lang/String; = "sync_update_when_opened"


# instance fields
.field private final ACNT_CONFIG_REQUEST:I

.field private final ACNT_CREATE_ACCOUNT:I

.field private AccountId:J

.field private AccountName:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field account:Landroid/accounts/Account;

.field private errorInfoView:Landroid/widget/TextView;

.field private generalSetting:Lcom/htc/preference/HtcPreferenceScreen;

.field inDeleteAccount:Z

.field private isUpdateWhenOpen:Z

.field private mAccountId:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDeleteAccountButtonListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderBarText:Lcom/htc/widget/HeaderBarText;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLink2ServerSetting:Z

.field private mPhoneStatus:I

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mSyncButtonListener:Landroid/view/View$OnClickListener;

.field private mSyncSrcEnabled:Z

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mToast:Landroid/widget/Toast;

.field private removeAccount:Landroid/widget/Button;

.field serverSettingIntent:Landroid/content/Intent;

.field private startOrCancelSync:Landroid/widget/Button;

.field private syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

.field private syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

.field private syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

.field private syncScheduleLabels:[Ljava/lang/String;

.field private syncScheduling:Lcom/htc/preference/HtcPreferenceScreen;

.field private syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

.field private updateWhenOpenedPref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 92
    const-string v0, "EASClient"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->TAG:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/htc/android/mail/easclient/EASClient;->ACNT_CONFIG_REQUEST:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/EASClient;->ACNT_CREATE_ACCOUNT:I

    .line 154
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/EASClient;->isUpdateWhenOpen:Z

    .line 155
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z

    .line 160
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mLink2ServerSetting:Z

    .line 167
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/EASClient;->inDeleteAccount:Z

    .line 170
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASClient$1;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASClient$2;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 587
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASClient$7;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncButtonListener:Landroid/view/View$OnClickListener;

    .line 624
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASClient$8;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mDeleteAccountButtonListener:Landroid/view/View$OnClickListener;

    .line 1112
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$19;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASClient$19;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;

    .line 1197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->serverSettingIntent:Landroid/content/Intent;

    .line 1199
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/EASClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/easclient/EASClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/easclient/EASClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/easclient/EASClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/easclient/EASClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/EASClient;->isUpdateWhenOpen:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/mail/easclient/EASClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/EASClient;->isUpdateWhenOpen:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->updateWhenOpenedPref:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/easclient/EASClient;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/android/mail/easclient/EASClient;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->startSync()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/easclient/EASClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/android/mail/easclient/EASClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/easclient/EASClient;ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easclient/EASClient;->resetSyncErrorStatus(ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/EASClient;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient;->onSyncSourceChange(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->initUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->updateAllUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient;->setGlobalErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient;->setSyncAction(Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/android/mail/easclient/EASClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/android/mail/easclient/EASClient;->mPhoneStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/EASClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountName:Ljava/lang/String;

    return-object p1
.end method

.method private checkItsLife()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1244
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountId(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1245
    const-string v2, "EASClient"

    const-string v3, "account does NOT exist!!!!!"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :goto_0
    return v1

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1254
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private enabledSyncSource(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setEnabled(Z)V

    .line 1076
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setEnabled(Z)V

    .line 1077
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setEnabled(Z)V

    .line 1078
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setEnabled(Z)V

    .line 1079
    return-void
.end method

.method private getScheduleIndex(I)I
    .locals 5
    .parameter "scheduleCode"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 884
    if-nez p1, :cond_1

    .line 885
    const/4 v0, 0x0

    .line 904
    :cond_0
    :goto_0
    return v0

    .line 886
    :cond_1
    if-eq p1, v0, :cond_0

    .line 888
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 889
    goto :goto_0

    .line 890
    :cond_2
    if-ne p1, v2, :cond_3

    move v0, v2

    .line 891
    goto :goto_0

    .line 892
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v3

    .line 893
    goto :goto_0

    .line 894
    :cond_4
    if-ne p1, v4, :cond_5

    move v0, v4

    .line 895
    goto :goto_0

    .line 896
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 897
    const/4 v0, 0x6

    goto :goto_0

    .line 898
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 899
    const/4 v0, 0x7

    goto :goto_0

    .line 900
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 901
    const/16 v0, 0x8

    goto :goto_0

    .line 902
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 903
    const/16 v0, 0x9

    goto :goto_0

    .line 904
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScheduleType()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 869
    :try_start_0
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 870
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleIndex(I)I

    move-result v1

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 872
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getScheduleOption(J)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleIndex(I)I

    move-result v1

    .line 873
    .local v1, scheduleIdx:I
    if-gez v1, :cond_0

    .line 874
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 877
    .end local v1           #scheduleIdx:I
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleIndex(I)I

    move-result v1

    goto :goto_0

    .line 876
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getSyncPreference(I)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    .locals 1
    .parameter "SyncType"

    .prologue
    .line 516
    packed-switch p1, :pswitch_data_0

    .line 527
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    goto :goto_0

    .line 520
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    goto :goto_0

    .line 524
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private hideGlobalError()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 309
    sget-boolean v2, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASClient"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v5, "initUI()"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 312
    :cond_0
    const-string v2, ""

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mToast:Landroid/widget/Toast;

    .line 314
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mTimeFormat:Ljava/text/DateFormat;

    .line 316
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->setContentView(I)V

    .line 317
    const v2, 0x7f050006

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->addPreferencesFromResource(I)V

    .line 320
    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    .line 321
    const v2, 0x7f090078

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    .line 322
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f0b0213

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 323
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 324
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 325
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 327
    const v2, 0x7f090079

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    .line 328
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    :cond_1
    const-string v2, "pref_general_setting"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->generalSetting:Lcom/htc/preference/HtcPreferenceScreen;

    .line 343
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->generalSetting:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v3, Lcom/htc/android/mail/easclient/EASClient$3;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASClient$3;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 353
    const-string v2, "sync_scheduling"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduling:Lcom/htc/preference/HtcPreferenceScreen;

    .line 354
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduling:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v3, Lcom/htc/android/mail/easclient/EASClient$4;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASClient$4;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 363
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduleLabels:[Ljava/lang/String;

    .line 368
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V

    .line 370
    const-string v2, "sync_contacts"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 371
    const-string v2, "sync_calendar"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 372
    const-string v2, "sync_email"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 373
    const-string v2, "sync_tasks"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 376
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    const-string v2, "sync_category"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 378
    .local v1, notificationsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 381
    .end local v1           #notificationsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_2
    const-string v2, "sync_update_when_opened"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->updateWhenOpenedPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 382
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->updateWhenOpenedPref:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v3, Lcom/htc/android/mail/easclient/EASClient$5;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASClient$5;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 402
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->startOrCancelSync:Landroid/widget/Button;

    .line 403
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    .line 404
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mDeleteAccountButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    const v3, 0x7f0b02cf

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 406
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->startOrCancelSync:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->setSyncButton(Z)V

    .line 411
    const v2, 0x7f0900b6

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mProviderIcon:Landroid/widget/ImageView;

    .line 412
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    const v2, 0x7f0900b7

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mProviderId:Landroid/widget/TextView;

    .line 415
    const v2, 0x7f0900b8

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mAccountId:Landroid/widget/TextView;

    .line 416
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mProviderId:Landroid/widget/TextView;

    const v3, 0x7f0b03c1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_3

    .line 419
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mAccountId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->hideGlobalError()V

    .line 423
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->resetSyncSourceUI()V

    .line 425
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    .line 427
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.eas.intent.chk_svrcap_failed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "intent.htc.mail.eas.sync_status"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.eas.intent.sync_change"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.eas.intent.failed_sync"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.eas.intent.phone_status_change"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "intent.eas.mail.schedulerChange"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/easclient/EASClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/easclient/EASClient$6;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASClient$6;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->resendSyncEvent(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_1
    return-void

    .line 366
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduleLabels:[Ljava/lang/String;

    goto/16 :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private onSyncSourceChange(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "statusMap"

    .prologue
    const v9, 0x7f0b03a3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 958
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->updateSyncSourceUI()V

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, bSyncRunning:Z
    const/4 v5, 0x0

    .line 962
    .local v5, widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 963
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 964
    .local v3, key:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 965
    .local v4, value:I
    packed-switch v3, :pswitch_data_0

    .line 979
    const/4 v5, 0x0

    .line 982
    :goto_1
    if-eqz v5, :cond_0

    .line 983
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 984
    invoke-virtual {v5, v9}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setSummary(I)V

    .line 985
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 986
    invoke-virtual {v5, v8}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 987
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 988
    const/4 v0, 0x1

    goto :goto_0

    .line 967
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 968
    goto :goto_1

    .line 970
    :pswitch_1
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 971
    goto :goto_1

    .line 973
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 974
    goto :goto_1

    .line 976
    :pswitch_3
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    .line 977
    goto :goto_1

    .line 989
    :cond_1
    if-ne v4, v8, :cond_2

    .line 990
    invoke-virtual {v5, v9}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setSummary(I)V

    .line 991
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 992
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 993
    invoke-virtual {v5, v8}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 994
    const/4 v0, 0x1

    goto :goto_0

    .line 996
    :cond_2
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 997
    invoke-virtual {v5, v7}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    goto :goto_0

    .line 1001
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #key:I
    .end local v4           #value:I
    :cond_3
    if-eqz v0, :cond_4

    .line 1002
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->hideGlobalError()V

    .line 1003
    sget-object v6, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->START:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASClient;->setSyncAction(Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V

    .line 1007
    :goto_2
    return-void

    .line 1005
    :cond_4
    sget-object v6, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASClient;->setSyncAction(Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V

    goto :goto_2

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetSyncErrorStatus(ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V
    .locals 1
    .parameter "bIsError"
    .parameter "syncSource"

    .prologue
    .line 1037
    if-nez p2, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 1059
    :cond_3
    :goto_0
    return-void

    .line 1048
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 1049
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    goto :goto_0

    .line 1050
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    goto :goto_0

    .line 1052
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 1053
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    goto :goto_0

    .line 1054
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 1055
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    goto :goto_0
.end method

.method private resetSyncSourceUI()V
    .locals 7

    .prologue
    .line 932
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_1

    .line 934
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceEnabled(JI)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 935
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceEnabled(JI)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 936
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const/4 v6, 0x3

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceEnabled(JI)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 937
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const/4 v6, 0x4

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceEnabled(JI)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 940
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
    const-string v2, "sync_category"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 942
    .local v1, notificationsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 945
    .end local v1           #notificationsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->updateSyncSourceUI()V

    .line 948
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelErrorNotification(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 949
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private setGlobalErrorMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->errorInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRemoveAccountButton(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1101
    :cond_0
    if-eqz p1, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1107
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1108
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1109
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->removeAccount:Landroid/widget/Button;

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method private setSyncAction(Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1013
    sget-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->START:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    if-ne p1, v0, :cond_1

    .line 1014
    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->enabledSyncSource(Z)V

    .line 1015
    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->setSyncButton(Z)V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    sget-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    if-ne p1, v0, :cond_0

    .line 1017
    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->enabledSyncSource(Z)V

    .line 1018
    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->setSyncButton(Z)V

    .line 1019
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 1020
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 1021
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 1022
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setActive(Z)V

    goto :goto_0
.end method

.method private setSyncButton(Z)V
    .locals 4
    .parameter "bSync"

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    .line 1085
    const v1, 0x7f0b0260

    .line 1086
    .local v1, text:I
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x208033b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1091
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->startOrCancelSync:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 1092
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->startOrCancelSync:Landroid/widget/Button;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1094
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient;->setRemoveAccountButton(Z)V

    .line 1095
    return-void

    .line 1088
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #text:I
    :cond_0
    const v1, 0x7f0b0263

    .line 1089
    .restart local v1       #text:I
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private startSync()V
    .locals 7

    .prologue
    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v3, :cond_1

    .line 571
    sget-boolean v3, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EASClient"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v6, "startSync(): mService is null"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->hideGlobalError()V

    .line 577
    new-instance v0, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "com.htc.android.mail.eas"

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v0, account:Landroid/accounts/Account;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 580
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "force"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    const-string v3, "htceas"

    invoke-static {v0, v3, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateAllUI()V
    .locals 4

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_0

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->resendSyncEvent(J)V

    .line 1189
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->resetSyncSourceUI()V

    .line 1190
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1191
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateScheduleUI(Ljava/lang/String;)V
    .locals 7
    .parameter "newVal"

    .prologue
    .line 840
    const-string v2, ""

    .line 841
    .local v2, ext:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 842
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduleLabels:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v3, v4, v5

    .line 848
    .local v3, summary:Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/htc/android/mail/easclient/EASClient;->mPhoneStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0297

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 861
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduling:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    return-void

    .line 844
    .end local v3           #summary:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASClient;->getScheduleIndex(I)I

    move-result v0

    .line 845
    .local v0, defIdx:I
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->syncScheduleLabels:[Ljava/lang/String;

    aget-object v3, v4, v0

    .restart local v3       #summary:Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v0           #defIdx:I
    :cond_2
    iget v4, p0, Lcom/htc/android/mail/easclient/EASClient;->mPhoneStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 852
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isConnWhileRoaming(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0b0265

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/EASClient;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 855
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0296

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 856
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private updateSyncSourceDisplay(Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;)V
    .locals 10
    .parameter "lastSyncInfo"

    .prologue
    const/4 v9, 0x1

    .line 471
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    :try_start_0
    iget v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    invoke-direct {p0, v5}, Lcom/htc/android/mail/easclient/EASClient;->getSyncPreference(I)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    move-result-object v4

    .line 474
    .local v4, widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 475
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 476
    .local v1, date:Ljava/util/Date;
    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 477
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, currentFormat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    const-string v0, "EE, MMM dd, yyyy"

    .line 480
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASClient;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, timeString:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    .end local v0           #currentFormat:Ljava/lang/String;
    .end local v1           #date:Ljava/util/Date;
    .end local v3           #timeString:Ljava/lang/String;
    :goto_1
    iget v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    if-ne v5, v9, :cond_5

    .line 491
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 494
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v6, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    iget v8, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceRunning(JI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 496
    iget v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    const/16 v6, 0x204

    if-lt v5, v6, :cond_4

    iget v5, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    const/16 v6, 0x207

    if-gt v5, v6, :cond_4

    .line 498
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lcom/htc/android/mail/easclient/CertificateUtil;->showCertificateInvalid(Landroid/app/Activity;Lcom/htc/android/mail/eassvc/pim/IEASService;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 509
    .end local v4           #widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 487
    .restart local v4       #widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    :cond_3
    const v5, 0x7f0b0264

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/EASClient;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 510
    .end local v4           #widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    :catch_1
    move-exception v2

    .line 511
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 503
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #widget:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget v6, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-interface {v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/mail/easclient/EASClient;->setGlobalErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setFailed(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method

.method private updateSyncSourceUI()V
    .locals 7

    .prologue
    .line 908
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v4, :cond_0

    .line 909
    iget-boolean v4, p0, Lcom/htc/android/mail/easclient/EASClient;->inDeleteAccount:Z

    if-eqz v4, :cond_1

    .line 910
    const-string v4, "EASClient"

    const-string v5, "updateSyncSourceUI(): skip"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getLastSyncInfo(J)Ljava/util/List;

    move-result-object v3

    .line 916
    .local v3, lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    new-instance v4, Lcom/htc/android/mail/easclient/EASClient$18;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/EASClient$18;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 922
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    .line 923
    .local v2, info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/EASClient;->updateSyncSourceDisplay(Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 925
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .end local v3           #lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .line 926
    :catch_1
    move-exception v0

    .line 927
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0xc8

    .line 216
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASClient"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v3, "onActivityResult()"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 217
    :cond_0
    if-nez p1, :cond_5

    .line 218
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 219
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASClient"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v3, "onActivityResult(CFG_RESULT_DELETE_ACCOUNT): finish EASClient"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    .line 237
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    if-ne p2, v4, :cond_2

    .line 222
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "EASClient"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v3, "onActivityResult(CFG_RESULT_CANCELED): finish EASClient"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    goto :goto_0

    .line 225
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 226
    if-ne p2, v4, :cond_7

    .line 227
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "EASClient"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    const-string v3, "onActivityResult(CFG_RESULT_CANCELED): finish EASClient"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 228
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    goto :goto_0

    .line 230
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->initUI()V

    goto :goto_0
.end method

.method public onChkSvrCapFailed()V
    .locals 3

    .prologue
    .line 1028
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->resetSyncErrorStatus(ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V

    .line 1029
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getDefaultErrorCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->setGlobalErrorMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1030
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 293
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASClient"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    .line 296
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    if-nez v0, :cond_2

    .line 297
    const-string v0, "EASClient"

    const-string v1, "onCreate() Error, account is null!!!!!"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASClient;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "EASClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to bind EAS AppSvc! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    const v10, 0x7f0b008e

    .line 752
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountId:J

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountName:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    .line 753
    .local v7, certDialog:Landroid/app/Dialog;
    if-eqz v7, :cond_0

    .line 835
    .end local v7           #certDialog:Landroid/app/Dialog;
    :goto_0
    return-object v7

    .line 756
    .restart local v7       #certDialog:Landroid/app/Dialog;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 835
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    goto :goto_0

    .line 758
    :sswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0295

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0293

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$13;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$13;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto :goto_0

    .line 771
    :sswitch_1
    new-instance v9, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 772
    .local v9, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 773
    const v0, 0x7f0b028d

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 774
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    move-object v7, v9

    .line 775
    goto :goto_0

    .line 778
    .end local v9           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0285

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0167

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$14;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$14;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto :goto_0

    .line 792
    :sswitch_3
    new-instance v8, Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-direct {v8, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 793
    .local v8, deleteDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v8, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    .line 794
    new-instance v6, Lcom/htc/android/mail/easclient/EASClient$15;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/EASClient$15;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    .line 800
    .local v6, callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    invoke-virtual {v8, v6}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCallback(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;)V

    move-object v7, v8

    .line 801
    goto/16 :goto_0

    .line 804
    .end local v6           #callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    .end local v8           #deleteDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    :sswitch_4
    invoke-static {p1, p0}, Lcom/htc/android/mail/MailCommon;->getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v7

    goto/16 :goto_0

    .line 807
    :sswitch_5
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b021a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$17;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$17;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/easclient/EASClient$16;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASClient$16;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-virtual {v0, v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_5
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 532
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 535
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/EASClient;->mLink2ServerSetting:Z

    .line 566
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 661
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncContacts:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 664
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$9;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$9;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 746
    :cond_0
    :goto_0
    return v3

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncCalendar:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 682
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$10;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$10;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    goto :goto_0

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 700
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$11;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$11;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 742
    :catch_1
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient;->AccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isTaskFOTA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 720
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 721
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V

    goto :goto_0

    .line 723
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$12;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$12;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 551
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 553
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->checkItsLife()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASClient;->updateAllUI()V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.eas.mail.priority.high"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASClient;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
