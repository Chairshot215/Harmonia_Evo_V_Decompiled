.class public Lcom/android/providers/telephony/ContactMessageStore;
.super Ljava/lang/Object;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;,
        Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;,
        Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    }
.end annotation


# static fields
.field public static final ACTION_HTC_MAIL_CHANGE:Ljava/lang/String; = "com.htc.android.mail.intent.change"

.field private static COLUMN_HTC_THREAD_ID:I = 0x0

.field private static COLUMN_RECIPIENT_ADDRESS:I = 0x0

.field private static COLUMN_THREAD_ID:I = 0x0

.field private static CONTACTS1_PROJECT:[Ljava/lang/String; = null

.field public static CONTACT_ID_LOW_BOUND:J = 0x0L

.field private static CONTACT_PROJECT:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field public static final DELETING_STATUS_PROJECTION:[Ljava/lang/String; = null

.field public static final HTC_ACTION_EAS_ACNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field public static final MSG_CHECK_DELETION:I = 0x5

.field public static final MSG_NOTIFY_CS_TO_SYNC:I = 0x3

.field public static final MSG_NOTIFY_DELETE_END:I = 0x4

.field public static final MSG_REGISTER_CONTENT_OBSERVER:I = 0x2

.field public static final MSG_UPDATE_CONTACTS_TABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactMessageStore"

.field private static bFirstCreate:Z

.field private static mContext:Landroid/content/Context;

.field private static mDeleteTask:Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

.field private static mDeletingCounter:Ljava/lang/Integer;

.field private static mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static mStopDelete:Z

.field private static mStore:Lcom/android/providers/telephony/ContactMessageStore;


# instance fields
.field private AddressKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final CONTACTS_ARRAY:[Ljava/lang/String;

.field private CSneedSync:Z

.field ChangeKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ChangecontactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/telephony/ContactMessageStore$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private CurrentContact:Ljava/lang/String;

.field PersonalID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field bNeedRefresh:Z

.field private contactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/telephony/ContactMessageStore$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private isScreenOff:Z

.field private isSupportQueryDialer:Z

.field lPersonId:J

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContactsChangedUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialerSrv:Lcom/htc/service/dialer/IDialerService;

.field private final mHandler:Landroid/os/Handler;

.field mInsertedThreadId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvConn:Landroid/content/ServiceConnection;

.field private m_bIsContactTableCreated:Z

.field private tempContact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    sput-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    .line 81
    sput-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    .line 95
    const-wide/32 v0, 0x5f5e100

    sput-wide v0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    .line 105
    sput v2, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_HTC_THREAD_ID:I

    .line 106
    sput v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_THREAD_ID:I

    .line 107
    sput v4, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_RECIPIENT_ADDRESS:I

    .line 113
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_PROJECT:[Ljava/lang/String;

    .line 121
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "htcthread_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACTS1_PROJECT:[Ljava/lang/String;

    .line 130
    sput-boolean v2, Lcom/android/providers/telephony/ContactMessageStore;->bFirstCreate:Z

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    .line 145
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DELETING"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->DELETING_STATUS_PROJECTION:[Ljava/lang/String;

    .line 1605
    sput-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mDeleteTask:Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1606
    sput-boolean v2, Lcom/android/providers/telephony/ContactMessageStore;->mStopDelete:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    const-string v2, "content://com.android.contacts/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContactsChangedUri:Landroid/net/Uri;

    .line 85
    iput-boolean v4, p0, Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/providers/telephony/ContactMessageStore;->m_bIsContactTableCreated:Z

    .line 127
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contacts1"

    aput-object v3, v2, v4

    const-string v3, "contacts2"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACTS_ARRAY:[Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACTS_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->CurrentContact:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACTS_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->tempContact:Ljava/lang/String;

    .line 131
    iput-boolean v4, p0, Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    .line 134
    iput-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    .line 135
    iput-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->mSrvConn:Landroid/content/ServiceConnection;

    .line 139
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    .line 871
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    .line 872
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    .line 873
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->AddressKey:Ljava/util/HashMap;

    .line 874
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->ChangeKey:Ljava/util/ArrayList;

    .line 875
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->PersonalID:Ljava/util/ArrayList;

    .line 877
    const-wide/high16 v2, -0x8000

    iput-wide v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    .line 878
    iput-boolean v5, p0, Lcom/android/providers/telephony/ContactMessageStore;->bNeedRefresh:Z

    .line 1609
    new-instance v2, Lcom/android/providers/telephony/ContactMessageStore$2;

    invoke-direct {v2, p0}, Lcom/android/providers/telephony/ContactMessageStore$2;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    const-string v2, "ContactMessageStore"

    const-string v3, "init contact store> "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sput-object p1, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ContactMessageThread"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 186
    .local v0, groupMailThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v2, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;-><init>(Lcom/android/providers/telephony/ContactMessageStore;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    .line 188
    sget-object v2, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 191
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v1, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v2, "ContactMessageStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 205
    :cond_1
    const-string v2, "ContactMessageStore"

    const-string v3, "set isSupportQueryDialer true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-boolean v5, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    .line 209
    :cond_2
    iget-boolean v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    if-eqz v2, :cond_3

    .line 210
    const-string v2, "com.android.htcdialer.CONTACT_CACHE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    :cond_3
    sget-object v2, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v2

    sput-object v2, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 214
    iget-boolean v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    if-eqz v2, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->bindDialerService()V

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->createContactTable()V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/ContactMessageStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/ContactMessageStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/telephony/ContactMessageStore;->regisPeopleURIObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/telephony/ContactMessageStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/telephony/ContactMessageStore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/telephony/ContactMessageStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/telephony/ContactMessageStore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z

    return p1
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeleteTask:Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/android/providers/telephony/ContactMessageStore;->mDeleteTask:Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/providers/telephony/ContactMessageStore;->mStopDelete:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/android/providers/telephony/ContactMessageStore;->mStopDelete:Z

    return p0
.end method

.method static synthetic access$800()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/providers/telephony/ContactMessageStore;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    return-object p1
.end method

.method private declared-synchronized clearTempContactTable()V
    .locals 5

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    const-string v2, "ContactMessageStore"

    const-string v3, "createTempContactTable() >>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget-object v2, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 709
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getTempContactsTableStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 713
    :goto_0
    :try_start_2
    const-string v2, "ContactMessageStore"

    const-string v3, "createTempContactTable() <<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    monitor-exit p0

    return-void

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ContactMessageStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createTempContactTable exception >>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 706
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private createContactThreads()Z
    .locals 9

    .prologue
    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 480
    .local v3, t:J
    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 481
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 483
    .local v2, success:Z
    :try_start_0
    const-string v5, "ContactMessageStore"

    const-string v6, "createContactThreads() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 552
    const-string v5, "date"

    invoke-direct {p0, v0, v5}, Lcom/android/providers/telephony/ContactMessageStore;->createContactThreadsBySort(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 553
    const-string v5, "date2"

    invoke-direct {p0, v0, v5}, Lcom/android/providers/telephony/ContactMessageStore;->createContactThreadsBySort(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 556
    const-string v5, "ContactMessageStore"

    const-string v6, "createContactThreads() <<<"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    const/4 v2, 0x1

    .line 562
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    :goto_0
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createContactThreads time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, ex:Ljava/lang/Throwable;
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactThreads1 exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    .end local v1           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 559
    .restart local v1       #ex:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactThreads exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 563
    :catch_2
    move-exception v1

    .line 564
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactThreads1 exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 562
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 565
    :goto_1
    throw v5

    .line 563
    :catch_3
    move-exception v1

    .line 564
    .restart local v1       #ex:Ljava/lang/Throwable;
    const-string v6, "ContactMessageStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " createContactThreads1 exception >>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createContactThreadsBySort(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "SortBy"

    .prologue
    .line 600
    const-string v3, "contact_threads"

    .line 601
    .local v3, ViewName:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v4, "date"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    :cond_0
    const-string v4, "ContactMessageStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crerate view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP VIEW IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SELECT c.contact_id AS _id, SUM(msg_count) AS message_count,tt.thread_id,date,MIN(read) AS read,snippet,snippet_cs,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(case when (error > 0) then 1 else 0 end) as error,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUM(unread_count) AS unread_count,recipient_address,recipient_ids,priority,type,transport_type,msg_box,locked, name, err_type, htc_category, c_type, exp, date2 FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     SELECT msg_count, thread_id, date, read, recipient_address, recipient_ids, unread_count, snippet, snippet_cs, error, priority, type, transport_type, msg_box, locked, name, err_type, htc_category, c_type, exp, date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         SELECT msg_count, t._id AS thread_id, p.date * 1000 AS date , p.read, t.recipient_address, t.recipient_ids, p.unread_count, p.snippet, p.snippet_cs, t.error, t.priority,t.type, \'mms\' AS transport_type, p.msg_box, p.locked, t.name, pm.err_type, p.htc_category, 0 as c_type, 0 as exp, p.date2 * 1000 AS date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             SELECT count(1) AS msg_count, count(1)-SUM(read) AS unread_count, thread_id,_id, date , MIN(read) AS read, sub AS snippet, sub_cs AS snippet_cs, msg_box, locked, htc_category, date2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             FROM (SELECT * FROM pdu ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") WHERE msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130) GROUP BY thread_id, htc_category"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ) p JOIN threads t ON p.thread_id = t._id left JOIN pending_msgs pm ON p._id = pm.msg_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         UNION ALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         SELECT msg_count, t._id AS thread_id, s.date, s.read, t.recipient_address, t.recipient_ids, s.unread_count,  s.snippet, 0 AS snippet_cs, s.error, t.priority,t.type, \'sms\' AS transport_type, s.msg_box, s.locked, t.name, s.err_type, s.htc_category, s.c_type, s.exp ,s.date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             SELECT count(1) AS msg_count, count(1)-SUM(CASE WHEN type != 1 THEN 1 ELSE read END) AS unread_count, thread_id, date, MIN(CASE WHEN type != 1 THEN 1 ELSE read END) as read, body AS snippet, 0 AS snippet_cs, type AS msg_box, locked, error_code As err_type, htc_category, c_type, exp, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             SUM(case when (type=5) then 1 else 0 end) as error, date2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             FROM (SELECT * FROM sms ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") where type != 3 AND type > 0 GROUP BY thread_id, htc_category"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ) s JOIN threads t ON s.thread_id = t._id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) tt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " JOIN contacts1 c ON tt.thread_id = c.thread_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GROUP BY c.contact_id, htc_category"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    const-string v3, "contact_allprovider_threads"

    .line 631
    const-string v2, "latest_date "

    .line 632
    .local v2, CaseSelection:Ljava/lang/String;
    const-string v0, "latest_date "

    .line 633
    .local v0, CaseLatestdate:Ljava/lang/String;
    const-string v1, "msg_type"

    .line 634
    .local v1, CaseMsgType:Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v4, "date"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    const-string v4, "date2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    const-string v2, "case WHEN (latest_date < date2) THEN date2 ELSE latest_date END  as latest_date2 "

    .line 638
    const-string v1, "case WHEN (latest_date < date2) THEN \'\' ELSE msg_type END as msg_type"

    .line 639
    const-string v0, "latest_date2 "

    .line 642
    :cond_1
    const-string v4, "ContactMessageStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crerate view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP VIEW IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SELECT contact_id AS _id, T._id AS htcthread_id, T.thread_id AS thread_id, recipient_ids, recipient_address, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as latest_date, SUM(p_message_count) AS p_message_count, SUM(p_unread_count) AS p_unread_count, CASE SUM(p_unread_count) WHEN 0 THEN 1 ELSE 0 END AS p_read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vvm_ptime, is_private, is_urgent, SUM(msg_count) AS message_count, date, read, snippet, snippet_cs,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(case when (error > 0) then 1 else 0 end) as error,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUM(unread_count) AS unread_count, body, name, priority, type, has_attachment, transport_type, msg_box, locked, htc_category, err_type, T.c_type, T.exp, date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     SELECT *, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         htcthreads LEFT JOIN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             SELECT thread_id as _id, date, SUM(msg_count) AS msg_count, recipient_ids, recipient_address, snippet, snippet_cs, MIN(read) AS read, SUM(unread_count) AS unread_count, body, name, priority, type, error, has_attachment, transport_type, msg_box, locked, htc_category, err_type, c_type, exp, date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                SELECT * FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     SELECT msg_count, t._id AS thread_id, p.date * 1000 AS date , p.read, t.recipient_address, t.recipient_ids, p.unread_count, t.body, p.snippet, p.snippet_cs, t.error, t.priority,t.type, \'mms\' AS transport_type, p.msg_box, p.locked, t.name, pm.err_type, t.has_attachment, p.htc_category, 0 as c_type, 0 as exp, p.date2 * 1000 AS date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                         SELECT count(1) AS msg_count, count(1)-SUM(read) AS unread_count, thread_id,_id, date , MIN(read) AS read, sub AS snippet, sub_cs AS snippet_cs, msg_box, locked, htc_category, date2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                         FROM (SELECT * FROM pdu ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") WHERE msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130) GROUP BY thread_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     ) p JOIN threads t ON p.thread_id = t._id left JOIN pending_msgs pm ON p._id = pm.msg_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     UNION ALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     SELECT msg_count, t._id AS thread_id, s.date, s.read, t.recipient_address, t.recipient_ids, s.unread_count, t.body, s.snippet, 0 AS snippet_cs, s.error, t.priority,t.type, \'sms\' AS transport_type, s.msg_box, s.locked, t.name, s.err_type, t.has_attachment, s.htc_category, s.c_type, s.exp, s.date2 FROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                         SELECT count(1) AS msg_count, count(1)-SUM(CASE WHEN type != 1 THEN 1 ELSE read END) AS unread_count, thread_id, date, MIN(CASE WHEN type != 1 THEN 1 ELSE read END) AS read, body AS snippet, 0 AS snippet_cs, type AS msg_box, locked, error_code As err_type, htc_category, c_type, exp, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             \t\t\t SUM(case when (type=5) then 1 else 0 end) as error, date2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                         FROM (SELECT * FROM sms ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") where type != 3 AND type > 0 GROUP BY thread_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                     ) s JOIN threads t ON s.thread_id = t._id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "                ) ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "             ) GROUP BY _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ) tt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "         ON htcthreads.recipient_ids = tt.recipient_ids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     ) ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " JOIN contacts1 ON T._id = contacts1.htcthread_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GROUP BY contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private declared-synchronized createContactsTable()Z
    .locals 7

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 442
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v4, "DELETE from contacts1"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    const-string v4, "INSERT INTO contacts1 SELECT thread_id, _id AS htcthread_id, _id+100000000 AS contact_id FROM htcthreads"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    const-string v4, "DROP TRIGGER IF EXISTS delete_obsolete_contacts_when_update_threads"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    const-string v4, "DROP TRIGGER IF EXISTS delete_obsolete_contacts_when_delete_threads"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v0, " BEGIN    DELETE FROM contacts1      WHERE htcthread_id NOT IN (SELECT _id FROM htcthreads);  END;"

    .line 457
    .local v0, DELETE_CONTACTS_CONSTRAIN:Ljava/lang/String;
    const-string v4, "DROP TRIGGER IF EXISTS delete_obsolete_contacts_when_delete_htcthreads"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    const-string v1, "CREATE TRIGGER delete_obsolete_contacts_when_delete_htcthreads AFTER DELETE ON htcthreads "

    .line 459
    .local v1, SQL:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BEGIN    DELETE FROM contacts1      WHERE htcthread_id NOT IN (SELECT _id FROM htcthreads);  END;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    const-string v4, "DROP TRIGGER IF EXISTS update_obsolete_contacts_when_delete_threads"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    const-string v1, "CREATE TRIGGER update_obsolete_contacts_when_delete_threads AFTER DELETE ON threads "

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BEGIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UPDATE contacts1 SET thread_id = 0 WHERE thread_id = OLD._id; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    const/4 v4, 0x1

    .line 474
    .end local v0           #DELETE_CONTACTS_CONSTRAIN:Ljava/lang/String;
    .end local v1           #SQL:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v4

    .line 472
    :catch_0
    move-exception v3

    .line 473
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ContactMessageStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " createContactTable exception >>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    const/4 v4, 0x0

    goto :goto_0

    .line 440
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createContactsView()Z
    .locals 9

    .prologue
    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 573
    .local v3, t:J
    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 574
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 576
    .local v2, success:Z
    :try_start_0
    const-string v5, "ContactMessageStore"

    const-string v6, "createContactsView() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 578
    const-string v5, "DROP VIEW IF EXISTS contacts"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW IF NOT EXISTS contacts AS SELECT * FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 581
    const-string v5, "ContactMessageStore"

    const-string v6, "createContactsView() <<<"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 582
    const/4 v2, 0x1

    .line 587
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    :goto_0
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createContactsView time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v2

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, ex:Ljava/lang/Throwable;
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactsView1 exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v1           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 584
    .restart local v1       #ex:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactsView exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 588
    :catch_2
    move-exception v1

    .line 589
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " createContactsView1 exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 587
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 590
    :goto_1
    throw v5

    .line 588
    :catch_3
    move-exception v1

    .line 589
    .restart local v1       #ex:Ljava/lang/Throwable;
    const-string v6, "ContactMessageStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " createContactsView1 exception >>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private establishContactHashMap(J)Z
    .locals 29
    .parameter "lPersonalID"

    .prologue
    .line 881
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v6, v3

    .line 887
    .local v6, sProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    if-eqz v3, :cond_0

    .line 889
    const/16 v20, 0x1

    .line 1057
    :goto_0
    return v20

    .line 892
    :cond_0
    const-string v3, "ContactMessageStore"

    const-string v4, "establishContactHashMap() >>>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 896
    .local v22, time:J
    const/16 v16, 0x0

    .line 897
    .local v16, count:I
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 899
    .local v10, builder:Landroid/net/Uri$Builder;
    const-string v3, "ContactMessageStore"

    const-string v4, "Begin Establish ContactMap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v7, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 906
    .local v11, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 907
    .local v20, mChange:Z
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 910
    .local v21, newcontactMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/providers/telephony/ContactMessageStore$ContactData;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangeKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 915
    if-eqz v11, :cond_4

    .line 921
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 922
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 923
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor count>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 928
    .local v24, time1:J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 929
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 930
    .local v14, contactName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 931
    .local v15, contactNumber:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 932
    .local v12, contactId:J
    if-eqz v15, :cond_1

    .line 934
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/telephony/ContactMessageStore;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 936
    .local v19, key:Ljava/lang/String;
    new-instance v17, Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore$ContactData;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    .line 937
    .local v17, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    move-object/from16 v0, v17

    iput-wide v12, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    .line 938
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactName:Ljava/lang/String;

    .line 939
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangeKey:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .end local v17           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .end local v19           #key:Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 951
    rem-int/lit8 v3, v18, 0x64

    if-nez v3, :cond_2

    .line 952
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 928
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 955
    .end local v12           #contactId:J
    .end local v14           #contactName:Ljava/lang/String;
    .end local v15           #contactNumber:Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 956
    .local v26, time2:J
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query DB time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v7, v24, v22

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate hashMap time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v7, v26, v22

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 960
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 961
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    .line 962
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    const/16 v21, 0x0

    .line 965
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace hashMap time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v26

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 968
    const-string v3, "ContactMessageStore"

    const-string v4, "End Establish ContactMap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 972
    const/16 v20, 0x1

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1038
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compare hashmap time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v7, v24, v22

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .end local v18           #i:I
    .end local v24           #time1:J
    .end local v26           #time2:J
    :goto_2
    if-eqz v20, :cond_5

    .line 1047
    const-string v3, "ContactMessageStore"

    const-string v4, "mChange = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v3, "content://mms-sms-v2/get-ContactInfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 1050
    .local v28, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1055
    .end local v28           #uri:Landroid/net/Uri;
    :goto_3
    const-string v3, "ContactMessageStore"

    const-string v4, "establishContactHashMap() <<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 962
    .restart local v18       #i:I
    .restart local v24       #time1:J
    .restart local v26       #time2:J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1041
    .end local v18           #i:I
    .end local v24           #time1:J
    .end local v26           #time2:J
    :cond_4
    const-string v3, "ContactMessageStore"

    const-string v4, "Cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/16 v20, 0x1

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_2

    .line 1052
    :cond_5
    const-string v3, "ContactMessageStore"

    const-string v4, "mChange = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static genContactId(J)J
    .locals 5
    .parameter "threadId"

    .prologue
    .line 317
    invoke-static {p0, p1}, Lcom/android/providers/telephony/ContactMessageStore;->getHtcThreadIdByThreadId(J)J

    move-result-wide v0

    .line 318
    .local v0, htcThreadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 319
    const-string v2, "ContactMessageStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "something error! thread_id> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    sget-wide v2, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1061
    sget v0, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    .line 1062
    .local v0, MIN_MATCH:I
    move-object v1, p1

    .line 1064
    .local v1, key:Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1065
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v1

    .line 1079
    .end local v1           #key:Ljava/lang/String;
    .local v2, key:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1070
    .end local v2           #key:Ljava/lang/String;
    .restart local v1       #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 1071
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1072
    .local v3, len:I
    sub-int v4, v3, v0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v3           #len:I
    :goto_1
    move-object v2, v1

    .line 1079
    .end local v1           #key:Ljava/lang/String;
    .restart local v2       #key:Ljava/lang/String;
    goto :goto_0

    .line 1074
    .end local v2           #key:Ljava/lang/String;
    .restart local v1       #key:Ljava/lang/String;
    :cond_1
    move-object v1, p1

    goto :goto_1

    .line 1077
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static getConcatString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 372
    :goto_0
    return-object v3

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 365
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 366
    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 372
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static getContactIdByHtcThreadId(J)J
    .locals 2
    .parameter "htcthreadId"

    .prologue
    .line 327
    sget-wide v0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getContactInfoFromPeople(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;
    .locals 20
    .parameter "context"
    .parameter "address"

    .prologue
    .line 728
    const-wide/16 v18, 0x0

    .line 729
    .local v18, personID:J
    new-instance v17, Landroid/provider/Telephony$namephoto;

    invoke-direct/range {v17 .. v17}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 731
    .local v17, mdata:Landroid/provider/Telephony$namephoto;
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v12

    .line 732
    .local v12, bIsMail:Z
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    .line 734
    .local v13, bIsPhone:Z
    if-eqz v12, :cond_3

    .line 736
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 739
    .local v5, contactEmailLookupUri:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v6, v3

    .line 740
    .local v6, sProjection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 742
    .local v14, cCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 743
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 744
    const-string v3, "MmsSmsV2Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query result cursor count: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 749
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 750
    .local v10, _Id:Ljava/lang/String;
    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 753
    .local v11, _Name:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 754
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_0

    .line 755
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 756
    if-eqz v11, :cond_0

    .line 757
    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 760
    .end local v10           #_Id:Ljava/lang/String;
    .end local v11           #_Name:Ljava/lang/String;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 783
    .end local v5           #contactEmailLookupUri:Landroid/net/Uri;
    .end local v6           #sProjection:[Ljava/lang/String;
    .end local v14           #cCursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v17

    .line 762
    .restart local v5       #contactEmailLookupUri:Landroid/net/Uri;
    .restart local v6       #sProjection:[Ljava/lang/String;
    .restart local v14       #cCursor:Landroid/database/Cursor;
    :cond_2
    const-string v3, "MmsSmsV2Provider"

    const-string v4, "Query result cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    .end local v5           #contactEmailLookupUri:Landroid/net/Uri;
    .end local v6           #sProjection:[Ljava/lang/String;
    .end local v14           #cCursor:Landroid/database/Cursor;
    :cond_3
    const/4 v3, 0x1

    if-ne v13, v3, :cond_1

    .line 765
    const/16 v16, 0x0

    .line 768
    .local v16, info:Lcom/android/internal/telephony/CallerInfo;
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 773
    :goto_1
    if-eqz v16, :cond_1

    .line 774
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    .line 775
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_1

    .line 776
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-object/from16 v0, v17

    iput-wide v3, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 777
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 778
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    goto :goto_0

    .line 769
    :catch_0
    move-exception v15

    .line 770
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static getHtcThreadIdByThreadId(J)J
    .locals 6
    .parameter "threadId"

    .prologue
    .line 412
    const-wide/16 v1, 0x0

    .line 413
    .local v1, htcThreadId:J
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM htcthreads WHERE thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 416
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 418
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 422
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_1
    return-wide v1

    .line 422
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 237
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-nez v0, :cond_1

    .line 238
    const-class v1, Lcom/android/providers/telephony/ContactMessageStore;

    monitor-enter v1

    .line 239
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/ContactMessageStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    .line 242
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_1
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getThreadIdFromFakeId(Landroid/content/Context;J)J
    .locals 8
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 334
    sget-wide v5, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    sub-long v1, p1, v5

    .line 335
    .local v1, htcThreadId:J
    const-wide/16 v3, 0x0

    .line 337
    .local v3, threadId:J
    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " SELECT thread_id FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE htcthread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 340
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 347
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_1
    return-wide v3

    .line 347
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static isDeleting()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFakedContactId(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 429
    sget-wide v0, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshContactsView()Z
    .locals 9

    .prologue
    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 681
    .local v3, t:J
    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 682
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 684
    .local v2, success:Z
    :try_start_0
    const-string v5, "ContactMessageStore"

    const-string v6, "refreshContactsView() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 686
    const-string v5, "DELETE FROM contacts1"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const-string v5, "INSERT INTO contacts1 SELECT * FROM contacts2"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 689
    const-string v5, "ContactMessageStore"

    const-string v6, "refreshContactsView() <<<"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 690
    const/4 v2, 0x1

    .line 695
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    :goto_0
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createContactsView time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return v2

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, ex:Ljava/lang/Throwable;
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " refreshContactsView exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 691
    .end local v1           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 692
    .restart local v1       #ex:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " refreshContactsView exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 696
    :catch_2
    move-exception v1

    .line 697
    const-string v5, "ContactMessageStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " refreshContactsView exception >>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 695
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 698
    :goto_1
    throw v5

    .line 696
    :catch_3
    move-exception v1

    .line 697
    .restart local v1       #ex:Ljava/lang/Throwable;
    const-string v6, "ContactMessageStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " refreshContactsView exception >>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private regisPeopleURIObserver()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mContactsChangedUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/providers/telephony/ContactMessageStore$1;

    iget-object v4, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/telephony/ContactMessageStore$1;-><init>(Lcom/android/providers/telephony/ContactMessageStore;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private replaceContactTable()V
    .locals 2

    .prologue
    .line 720
    const-string v0, "ContactMessageStore"

    const-string v1, "replaceContactTable() >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/providers/telephony/ContactMessageStore;->refreshContactsView()Z

    .line 722
    const-string v0, "ContactMessageStore"

    const-string v1, "replaceContactTable() <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public static setDeleting(Z)V
    .locals 3
    .parameter "bFlag"

    .prologue
    .line 156
    if-eqz p0, :cond_1

    .line 157
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    iget-object v0, v0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    :cond_0
    :goto_0
    if-nez p0, :cond_2

    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v0, :cond_2

    .line 166
    sget-object v1, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_1
    const-string v0, "ContactMessageStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeletingCounter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_2
    sget-object v1, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    monitor-enter v1

    .line 172
    if-eqz p0, :cond_3

    .line 173
    :try_start_2
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    .line 176
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 175
    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mDeletingCounter:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method bindDialerService()V
    .locals 4

    .prologue
    .line 1674
    const-string v0, "ContactMessageStore"

    const-string v1, "bindDialerService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->mSrvConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 1677
    new-instance v0, Lcom/android/providers/telephony/ContactMessageStore$3;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/ContactMessageStore$3;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    iput-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->mSrvConn:Landroid/content/ServiceConnection;

    .line 1693
    sget-object v0, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.htcdialer.DialerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/providers/telephony/ContactMessageStore;->mSrvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    const-string v0, "ContactMessageStore"

    const-string v1, "bind DialerService fail !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_0
    return-void
.end method

.method public declared-synchronized createContactTable()V
    .locals 11

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->m_bIsContactTableCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 310
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_1
    :try_start_1
    const-string v7, "ContactMessageStore"

    const-string v8, "createContactTable >>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/providers/telephony/ContactMessageStore;->bFirstCreate:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 279
    .local v3, time:J
    invoke-direct {p0}, Lcom/android/providers/telephony/ContactMessageStore;->createContactsTable()Z

    move-result v2

    .line 281
    .local v2, success:Z
    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 283
    .local v5, time1:J
    const-string v7, "ContactMessageStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createConteactsTable() time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-wide v3, v5

    .line 286
    invoke-direct {p0}, Lcom/android/providers/telephony/ContactMessageStore;->createContactThreads()Z

    move-result v2

    .line 287
    if-eqz v2, :cond_0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 289
    const-string v7, "ContactMessageStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContactThreads time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-wide v3, v5

    .line 291
    invoke-direct {p0}, Lcom/android/providers/telephony/ContactMessageStore;->createContactsView()Z

    move-result v2

    .line 292
    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 294
    const-string v7, "ContactMessageStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContactsView() time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->m_bIsContactTableCreated:Z

    .line 299
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 301
    const-string v7, "ContactMessageStore"

    const-string v8, "createContactTable <<<"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, msg1:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7530

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 308
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 309
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x927c0

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 272
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msg1:Landroid/os/Message;
    .end local v2           #success:Z
    .end local v3           #time:J
    .end local v5           #time1:J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .locals 8
    .parameter "address"

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1087
    .local v0, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    iget-boolean v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z

    if-nez v6, :cond_2

    .line 1088
    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ContactMessageStore;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1091
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1092
    new-instance v1, Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/ContactMessageStore$ContactData;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .local v1, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :try_start_1
    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->contactMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1095
    .end local v1           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v0       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :cond_0
    :try_start_2
    monitor-exit v7

    .line 1131
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1095
    .restart local v3       #key:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1098
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-nez v6, :cond_3

    .line 1099
    sget-object v6, Lcom/android/providers/telephony/ContactMessageStore;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/providers/telephony/ContactMessageStore;->getContactInfoFromPeople(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v4

    .line 1100
    .local v4, mdata:Landroid/provider/Telephony$namephoto;
    if-eqz v4, :cond_1

    .line 1101
    new-instance v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    invoke-direct {v0, p0}, Lcom/android/providers/telephony/ContactMessageStore$ContactData;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    .line 1102
    .restart local v0       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    iget-wide v6, v4, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iput-wide v6, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    .line 1103
    iget-object v6, v4, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactName:Ljava/lang/String;

    goto :goto_0

    .line 1107
    .end local v4           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v6, p1}, Lcom/htc/service/dialer/IDialerService;->getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;

    move-result-object v5

    .line 1108
    .local v5, rData:Lcom/htc/service/dialer/ContactData;
    if-eqz v5, :cond_1

    .line 1109
    new-instance v1, Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/ContactMessageStore$ContactData;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1110
    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v1       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :try_start_4
    iget-wide v6, v5, Lcom/htc/service/dialer/ContactData;->mContactId:J

    iput-wide v6, v1, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    .line 1111
    iget-object v6, v5, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .end local v1           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v0       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    goto :goto_0

    .line 1125
    .end local v5           #rData:Lcom/htc/service/dialer/ContactData;
    :catch_0
    move-exception v2

    .line 1126
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1125
    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v5       #rData:Lcom/htc/service/dialer/ContactData;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v0       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    goto :goto_2

    .line 1095
    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .end local v5           #rData:Lcom/htc/service/dialer/ContactData;
    .restart local v1       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v3       #key:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .restart local v0       #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    goto :goto_1
.end method

.method public getContactsTableStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->CurrentContact:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcThreadIdsFromContactId(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "contactId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, htcThreadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    .line 385
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SELECT thread_id, htcthread_id FROM contacts  WHERE contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 388
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 390
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    if-eqz p3, :cond_1

    .line 392
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 393
    .local v2, threadId:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    .line 394
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2           #threadId:Ljava/lang/Long;
    :cond_1
    if-eqz p4, :cond_0

    .line 398
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 399
    .local v1, htcThreadId:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_0

    .line 400
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    .end local v1           #htcThreadId:Ljava/lang/Long;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_3
    return-void
.end method

.method public getTempContactsTableStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->tempContact:Ljava/lang/String;

    return-object v0
.end method

.method public insertContactsTable()V
    .locals 62
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    .line 1138
    .local v56, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    move-wide/from16 v31, v0

    .line 1139
    .local v31, inside_lPersonalID:J
    sget-boolean v30, Lcom/android/providers/telephony/ContactMessageStore;->bFirstCreate:Z

    .line 1142
    .local v30, inside_bFirstCreate:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/ContactMessageStore;->establishContactHashMap(J)Z

    move-result v35

    .line 1143
    .local v35, mChange:Z
    if-nez v30, :cond_1

    .line 1144
    if-nez v35, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "htcthreads"

    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_PROJECT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1153
    .local v20, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    .line 1155
    .local v58, time1:J
    move-wide/from16 v56, v58

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    monitor-enter v4

    .line 1158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1159
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    if-eqz v20, :cond_0

    .line 1163
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/providers/telephony/ContactMessageStore;->bFirstCreate:Z

    .line 1165
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v37

    .line 1167
    .local v37, size:I
    if-lez v37, :cond_14

    .line 1168
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 1171
    .local v22, db:Landroid/database/sqlite/SQLiteDatabase;
    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v52, v0

    .line 1172
    .local v52, tempThreadID:[Ljava/lang/Long;
    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v51, v0

    .line 1173
    .local v51, tempHTCThreadID:[Ljava/lang/Long;
    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v50, v0

    .line 1174
    .local v50, tempContactID:[Ljava/lang/Long;
    const/16 v29, 0x0

    .line 1175
    .local v29, iNumberCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [J

    move-object/from16 v53, v0

    .line 1176
    .local v53, threadIDArray:[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [J

    move-object/from16 v27, v0

    .line 1177
    .local v27, htcthreadIDArray:[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v13, v3, [J

    .line 1180
    .local v13, ContactIDArray:[J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 1187
    .local v42, t0:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x0

    cmp-long v3, v31, v3

    if-lez v3, :cond_a

    .line 1189
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "contacts1"

    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->CONTACTS1_PROJECT:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1191
    .local v11, Contact1Cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 1193
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1194
    .local v12, Contact1Size:I
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact1Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-wide/16 v15, 0x0

    .line 1196
    .local v15, _id:J
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1197
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    .line 1201
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_RECIPIENT_ADDRESS:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1202
    .local v17, address:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1204
    .local v34, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangecontactMap:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    .line 1208
    .local v61, value1:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_THREAD_ID:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v53, v29

    .line 1209
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_HTC_THREAD_ID:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v27, v29

    .line 1210
    move-object/from16 v0, v61

    iget-wide v3, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    aput-wide v3, v13, v29

    .line 1211
    add-int/lit8 v29, v29, 0x1

    .line 1214
    .end local v61           #value1:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 1197
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1159
    .end local v11           #Contact1Cursor:Landroid/database/Cursor;
    .end local v12           #Contact1Size:I
    .end local v13           #ContactIDArray:[J
    .end local v15           #_id:J
    .end local v17           #address:Ljava/lang/String;
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v27           #htcthreadIDArray:[J
    .end local v28           #i:I
    .end local v29           #iNumberCount:I
    .end local v34           #key:Ljava/lang/String;
    .end local v37           #size:I
    .end local v42           #t0:J
    .end local v50           #tempContactID:[Ljava/lang/Long;
    .end local v51           #tempHTCThreadID:[Ljava/lang/Long;
    .end local v52           #tempThreadID:[Ljava/lang/Long;
    .end local v53           #threadIDArray:[J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1218
    .restart local v11       #Contact1Cursor:Landroid/database/Cursor;
    .restart local v12       #Contact1Size:I
    .restart local v13       #ContactIDArray:[J
    .restart local v15       #_id:J
    .restart local v22       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27       #htcthreadIDArray:[J
    .restart local v28       #i:I
    .restart local v29       #iNumberCount:I
    .restart local v37       #size:I
    .restart local v42       #t0:J
    .restart local v50       #tempContactID:[Ljava/lang/Long;
    .restart local v51       #tempHTCThreadID:[Ljava/lang/Long;
    .restart local v52       #tempThreadID:[Ljava/lang/Long;
    .restart local v53       #threadIDArray:[J
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1219
    const/16 v33, 0x0

    .local v33, j:I
    :goto_2
    move/from16 v0, v33

    if-ge v0, v12, :cond_5

    .line 1222
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->ChangeKey:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->AddressKey:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1227
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v53, v29

    .line 1228
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v27, v29

    .line 1229
    aget-wide v3, v27, v29

    invoke-static {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore;->getContactIdByHtcThreadId(J)J

    move-result-wide v3

    aput-wide v3, v13, v29

    .line 1230
    add-int/lit8 v29, v29, 0x1

    .line 1231
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find Number been Modify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1219
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 1238
    .end local v12           #Contact1Size:I
    .end local v15           #_id:J
    .end local v28           #i:I
    .end local v33           #j:I
    :cond_5
    const/16 v38, 0x0

    .line 1241
    .local v38, sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Update contacts1 SET contact_id=? WHERE (htcthread_id=? AND thread_id=?)"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1242
    .local v14, UpdateSQLCommand:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1243
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v38

    .line 1244
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 1245
    const/4 v3, 0x1

    aget-wide v4, v13, v28

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1246
    const/4 v3, 0x2

    aget-wide v4, v27, v28

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1247
    const/4 v3, 0x3

    aget-wide v4, v53, v28

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1248
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1244
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 1250
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1255
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1256
    if-eqz v38, :cond_7

    .line 1257
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1261
    :cond_7
    :goto_4
    const/4 v13, 0x0

    .line 1262
    const/16 v27, 0x0

    .line 1263
    const/16 v53, 0x0

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1267
    const-string v3, "ContactMessageStore"

    const-string v4, "notify MmsSms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    .end local v14           #UpdateSQLCommand:Ljava/lang/String;
    .end local v28           #i:I
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    .line 1273
    .local v44, t1:J
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1274
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1258
    .end local v44           #t1:J
    .restart local v14       #UpdateSQLCommand:Ljava/lang/String;
    .restart local v28       #i:I
    :catch_0
    move-exception v24

    .line 1259
    .local v24, ex:Ljava/lang/Throwable;
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1251
    .end local v14           #UpdateSQLCommand:Ljava/lang/String;
    .end local v24           #ex:Ljava/lang/Throwable;
    .end local v28           #i:I
    :catch_1
    move-exception v24

    .line 1252
    .local v24, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1255
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1256
    if-eqz v38, :cond_8

    .line 1257
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 1261
    .end local v24           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_8
    :goto_6
    const/4 v13, 0x0

    .line 1262
    const/16 v27, 0x0

    .line 1263
    const/16 v53, 0x0

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1267
    const-string v3, "ContactMessageStore"

    const-string v4, "notify MmsSms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1258
    .restart local v24       #ex:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v24

    .line 1259
    .local v24, ex:Ljava/lang/Throwable;
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1254
    .end local v24           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 1255
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1256
    if-eqz v38, :cond_9

    .line 1257
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 1261
    :cond_9
    :goto_7
    const/4 v13, 0x0

    .line 1262
    const/16 v27, 0x0

    .line 1263
    const/16 v53, 0x0

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1267
    const-string v4, "ContactMessageStore"

    const-string v5, "notify MmsSms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 1258
    :catch_3
    move-exception v24

    .line 1259
    .restart local v24       #ex:Ljava/lang/Throwable;
    const-string v4, "ContactMessageStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " insertContactsTable exception >>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1280
    .end local v11           #Contact1Cursor:Landroid/database/Cursor;
    .end local v24           #ex:Ljava/lang/Throwable;
    .end local v38           #sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    :cond_a
    const/16 v29, 0x0

    .line 1281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->AddressKey:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1282
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1283
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v37

    if-ge v0, v1, :cond_10

    .line 1285
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_HTC_THREAD_ID:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1286
    .local v25, htcThreadId:J
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_THREAD_ID:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 1288
    .local v54, threadId:J
    const-wide/16 v18, -0x2

    .line 1290
    .local v18, contactId:J
    sget v3, Lcom/android/providers/telephony/ContactMessageStore;->COLUMN_RECIPIENT_ADDRESS:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1291
    .restart local v17       #address:Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1293
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    move-result-object v21

    .line 1294
    .local v21, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    if-eqz v21, :cond_b

    .line 1295
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    move-wide/from16 v18, v0

    .line 1297
    .end local v21           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->AddressKey:Ljava/util/HashMap;

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-gez v3, :cond_c

    .line 1302
    invoke-static/range {v25 .. v26}, Lcom/android/providers/telephony/ContactMessageStore;->getContactIdByHtcThreadId(J)J

    move-result-wide v18

    .line 1306
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1307
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1313
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1315
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1316
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1318
    :try_start_9
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v52, v29

    .line 1319
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v51, v29

    .line 1320
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v50, v29
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1321
    add-int/lit8 v29, v29, 0x1

    .line 1329
    :cond_e
    :goto_9
    rem-int/lit8 v3, v28, 0x64

    if-nez v3, :cond_f

    .line 1331
    const-wide/16 v3, 0xfa

    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9

    .line 1336
    :cond_f
    :goto_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 1283
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_8

    .line 1316
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_4

    .line 1324
    :catch_4
    move-exception v24

    .line 1325
    .local v24, ex:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1339
    .end local v17           #address:Ljava/lang/String;
    .end local v18           #contactId:J
    .end local v24           #ex:Landroid/database/sqlite/SQLiteException;
    .end local v25           #htcThreadId:J
    .end local v54           #threadId:J
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v40

    .line 1340
    .local v40, t:J
    const-string v23, ""

    .line 1341
    .local v23, delList:Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v3, v0

    if-lez v3, :cond_11

    .line 1342
    invoke-static/range {v52 .. v52}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1343
    const/4 v3, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1348
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v46

    .line 1349
    .local v46, t2:J
    const/16 v38, 0x0

    .line 1353
    .restart local v38       #sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "INSERT INTO contacts1 VALUES (?,?,?)"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 1354
    .local v39, strSQLCommand:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1355
    sget-object v3, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 1357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE thread_id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string v3, "ContactMessageStore"

    const-string v4, "clearContact1Table() <<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v38

    .line 1360
    const/16 v28, 0x0

    :goto_b
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 1362
    const/4 v3, 0x1

    aget-object v4, v52, v28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1363
    const/4 v3, 0x2

    aget-object v4, v51, v28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1364
    const/4 v3, 0x3

    aget-object v4, v50, v28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1365
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 1360
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 1367
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6

    .line 1376
    :try_start_e
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1377
    if-eqz v38, :cond_13

    .line 1378
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 1382
    :cond_13
    :goto_c
    const/16 v52, 0x0

    .line 1383
    const/16 v51, 0x0

    .line 1384
    const/16 v50, 0x0

    .line 1386
    .end local v39           #strSQLCommand:Ljava/lang/String;
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v48

    .line 1387
    .local v48, t3:J
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete/insert time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v48, v46

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v3, "ContactMessageStore"

    const-string v4, "insertContactsTable() <<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    .line 1391
    .restart local v44       #t1:J
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v44, v42

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    .end local v13           #ContactIDArray:[J
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #delList:Ljava/lang/String;
    .end local v27           #htcthreadIDArray:[J
    .end local v28           #i:I
    .end local v29           #iNumberCount:I
    .end local v38           #sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v40           #t:J
    .end local v42           #t0:J
    .end local v44           #t1:J
    .end local v46           #t2:J
    .end local v48           #t3:J
    .end local v50           #tempContactID:[Ljava/lang/Long;
    .end local v51           #tempHTCThreadID:[Ljava/lang/Long;
    .end local v52           #tempThreadID:[Ljava/lang/Long;
    .end local v53           #threadIDArray:[J
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1398
    const-string v3, "ContactMessageStore"

    const-string v4, "notify MmsSms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v3, "content://mms-sms-v2/updateThreadsName"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v60

    .line 1402
    .local v60, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1404
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1405
    if-eqz v30, :cond_0

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v36

    .line 1407
    .local v36, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1379
    .end local v36           #msg:Landroid/os/Message;
    .end local v60           #uri:Landroid/net/Uri;
    .restart local v13       #ContactIDArray:[J
    .restart local v22       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23       #delList:Ljava/lang/String;
    .restart local v27       #htcthreadIDArray:[J
    .restart local v28       #i:I
    .restart local v29       #iNumberCount:I
    .restart local v38       #sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    .restart local v39       #strSQLCommand:Ljava/lang/String;
    .restart local v40       #t:J
    .restart local v42       #t0:J
    .restart local v46       #t2:J
    .restart local v50       #tempContactID:[Ljava/lang/Long;
    .restart local v51       #tempHTCThreadID:[Ljava/lang/Long;
    .restart local v52       #tempThreadID:[Ljava/lang/Long;
    .restart local v53       #threadIDArray:[J
    :catch_5
    move-exception v24

    .line 1380
    .local v24, ex:Ljava/lang/Throwable;
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1369
    .end local v24           #ex:Ljava/lang/Throwable;
    .end local v39           #strSQLCommand:Ljava/lang/String;
    :catch_6
    move-exception v24

    .line 1371
    .local v24, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_f
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1376
    :try_start_10
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1377
    if-eqz v38, :cond_15

    .line 1378
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 1382
    .end local v24           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_15
    :goto_e
    const/16 v52, 0x0

    .line 1383
    const/16 v51, 0x0

    .line 1384
    const/16 v50, 0x0

    .line 1385
    goto/16 :goto_d

    .line 1379
    .restart local v24       #ex:Landroid/database/sqlite/SQLiteException;
    :catch_7
    move-exception v24

    .line 1380
    .local v24, ex:Ljava/lang/Throwable;
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " insertContactsTable exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1375
    .end local v24           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    .line 1376
    :try_start_11
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1377
    if-eqz v38, :cond_16

    .line 1378
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 1382
    :cond_16
    :goto_f
    const/16 v52, 0x0

    .line 1383
    const/16 v51, 0x0

    .line 1384
    const/16 v50, 0x0

    throw v3

    .line 1379
    :catch_8
    move-exception v24

    .line 1380
    .restart local v24       #ex:Ljava/lang/Throwable;
    const-string v4, "ContactMessageStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " insertContactsTable exception >>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1332
    .end local v23           #delList:Ljava/lang/String;
    .end local v24           #ex:Ljava/lang/Throwable;
    .end local v38           #sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v40           #t:J
    .end local v46           #t2:J
    .restart local v17       #address:Ljava/lang/String;
    .restart local v18       #contactId:J
    .restart local v25       #htcThreadId:J
    .restart local v54       #threadId:J
    :catch_9
    move-exception v3

    goto/16 :goto_a
.end method

.method public declared-synchronized insertContactsTable(JJLjava/lang/String;)V
    .locals 15
    .parameter "thread_id"
    .parameter "htcThreadId"
    .parameter "recipientAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        }
    .end annotation

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    const-string v12, "ContactMessageStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertContactsTable> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gtz v12, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v12, p3, v12

    if-gtz v12, :cond_1

    .line 864
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 791
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gez v12, :cond_2

    const-wide/16 p1, 0x0

    .line 792
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v12, p3, v12

    if-gez v12, :cond_3

    const-wide/16 p3, 0x0

    .line 794
    :cond_3
    :try_start_1
    sget-boolean v12, Lcom/android/providers/telephony/ContactMessageStore;->bFirstCreate:Z

    if-eqz v12, :cond_4

    .line 795
    const-string v12, "Goven"

    const-string v13, "============ bfirstCreate"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->insertContactsTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 799
    :cond_4
    :try_start_2
    iget-object v12, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 803
    const/4 v3, 0x0

    .line 805
    .local v3, bExist:Z
    const-wide/16 v12, 0x0

    cmp-long v12, p3, v12

    if-gtz v12, :cond_5

    .line 806
    invoke-static/range {p1 .. p2}, Lcom/android/providers/telephony/ContactMessageStore;->getHtcThreadIdByThreadId(J)J

    move-result-wide p3

    .line 809
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " WHERE thread_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND htcthread_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 810
    .local v11, where:Ljava/lang/String;
    sget-object v12, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT * FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 811
    .local v6, cursor:Landroid/database/Cursor;
    const-string v12, "ContactMessageStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getContactsTableStr> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz v6, :cond_7

    .line 814
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_6

    .line 815
    const/4 v3, 0x1

    .line 816
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 819
    :cond_7
    if-eqz v3, :cond_8

    .line 820
    const-string v12, "ContactMessageStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertContactsTable() "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " already exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 824
    :cond_8
    iget-object v13, p0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    :try_start_3
    iget-object v12, p0, Lcom/android/providers/telephony/ContactMessageStore;->mInsertedThreadId:Ljava/util/HashSet;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 829
    move-wide/from16 v9, p1

    .line 830
    .local v9, threadId:J
    const-wide/16 v4, -0x2

    .line 832
    .local v4, contactId:J
    move-object/from16 v2, p5

    .line 833
    .local v2, address:Ljava/lang/String;
    :try_start_4
    const-string v12, ";"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 835
    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/ContactMessageStore;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    move-result-object v7

    .line 836
    .local v7, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    if-eqz v7, :cond_9

    .line 837
    iget-wide v4, v7, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    .line 839
    .end local v7           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :cond_9
    const-string v12, "ContactMessageStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ContactID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_a

    .line 844
    invoke-static/range {p3 .. p4}, Lcom/android/providers/telephony/ContactMessageStore;->getContactIdByHtcThreadId(J)J

    move-result-wide v4

    .line 848
    :cond_a
    sget-object v12, Lcom/android/providers/telephony/ContactMessageStore;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 852
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " WHERE htcthread_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INSERT INTO "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " VALUES ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ");"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 826
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #contactId:J
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #threadId:J
    :catchall_1
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public isContactTableCreated()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/providers/telephony/ContactMessageStore;->m_bIsContactTableCreated:Z

    return v0
.end method

.method public requestCS2Sync()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 249
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z

    if-eqz v1, :cond_2

    .line 253
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, msg1:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
