.class public Lcom/htc/android/mail/database/GroupMailStore;
.super Ljava/lang/Object;
.source "GroupMailStore.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GroupMailStore"

.field private static mStore:Lcom/htc/android/mail/database/GroupMailStore; = null

.field private static final sContactsEmailGroupUri:Landroid/net/Uri; = null

.field private static final sContactsGroupUri:Landroid/net/Uri; = null

.field private static final sGroupProjection:[Ljava/lang/String; = null

.field private static final sInterval:J = 0x2710L


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContactsChangedUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastChangeTime:J

.field public mLoadFinishedTokenId:I

.field public mNowTokenId:I

.field private mSyncing:Z

.field private mWeakMailRequestHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/GroupMailStore;->DEBUG:Z

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sortorder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/database/GroupMailStore;->sGroupProjection:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/database/GroupMailStore;->mStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 47
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_for_mail"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/database/GroupMailStore;->sContactsGroupUri:Landroid/net/Uri;

    .line 48
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "filter_email_with_group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/database/GroupMailStore;->sContactsEmailGroupUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    .line 44
    iput-object v3, p0, Lcom/htc/android/mail/database/GroupMailStore;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object v3, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContext:Landroid/content/Context;

    .line 46
    iput-object v3, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    const-string v2, "content://com.android.contacts/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContactsChangedUri:Landroid/net/Uri;

    .line 53
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mNowTokenId:I

    .line 210
    new-instance v2, Lcom/htc/android/mail/database/GroupMailStore$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/database/GroupMailStore$2;-><init>(Lcom/htc/android/mail/database/GroupMailStore;)V

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "GroupMail"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, groupMailThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContactsChangedUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-instance v5, Lcom/htc/android/mail/database/GroupMailStore$1;

    iget-object v6, p0, Lcom/htc/android/mail/database/GroupMailStore;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/htc/android/mail/database/GroupMailStore$1;-><init>(Lcom/htc/android/mail/database/GroupMailStore;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v1, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/database/GroupMailStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/android/mail/database/GroupMailStore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/database/GroupMailStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mSyncing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/database/GroupMailStore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/htc/android/mail/database/GroupMailStore;->mSyncing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/database/GroupMailStore;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mLastChangeTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/database/GroupMailStore;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/htc/android/mail/database/GroupMailStore;->mLastChangeTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/database/GroupMailStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/mail/database/GroupMailStore;->broadcastChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/database/GroupMailStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/mail/database/GroupMailStore;->isValidate()Z

    move-result v0

    return v0
.end method

.method private broadcastChanged()V
    .locals 7

    .prologue
    .line 106
    iget-object v6, p0, Lcom/htc/android/mail/database/GroupMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 115
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/database/GroupMailStore;->isValidate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/htc/android/mail/database/GroupMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, allWeakHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 110
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 111
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 112
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->onGroupMailChanged()V

    .line 109
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private dump(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 134
    if-eqz p1, :cond_1

    .line 135
    const-string v2, "GroupMailStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 137
    .local v0, columnCount:I
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 139
    const-string v2, "GroupMailStore"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0           #columnCount:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private dumpPeopleData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleDataURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 128
    invoke-direct {p0, v6}, Lcom/htc/android/mail/database/GroupMailStore;->dump(Landroid/database/Cursor;)V

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_0
    return-void
.end method

.method private dumpPeopleGroups()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleGroupURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 120
    invoke-direct {p0, v6}, Lcom/htc/android/mail/database/GroupMailStore;->dump(Landroid/database/Cursor;)V

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/GroupMailStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    sget-object v0, Lcom/htc/android/mail/database/GroupMailStore;->mStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/htc/android/mail/database/GroupMailStore;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/database/GroupMailStore;->mStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/htc/android/mail/database/GroupMailStore;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/database/GroupMailStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/database/GroupMailStore;->mStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/htc/android/mail/database/GroupMailStore;->mStore:Lcom/htc/android/mail/database/GroupMailStore;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidate()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mNowTokenId:I

    iget v1, p0, Lcom/htc/android/mail/database/GroupMailStore;->mLoadFinishedTokenId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataFromPeople()V
    .locals 21

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/database/GroupMailStore;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/android/mail/database/GroupMailStore;->mNowTokenId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/android/mail/database/GroupMailStore;->mLoadFinishedTokenId:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 152
    .local v18, t:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/database/GroupMailStore;->sContactsGroupUri:Landroid/net/Uri;

    sget-object v3, Lcom/htc/android/mail/database/GroupMailStore;->sGroupProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 154
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v15, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleGroupURI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 160
    .local v13, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 161
    .local v20, title:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 163
    .local v16, sortOrder:J
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleGroupURI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/database/GroupMailStore;->sGroupProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/database/GroupMailStore;->sGroupProjection:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/database/GroupMailStore;->sGroupProjection:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v13           #id:J
    .end local v16           #sortOrder:J
    .end local v20           #title:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/database/GroupMailStore;->sContactsEmailGroupUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, dataCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 176
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleDataURI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 180
    .local v11, group_id:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, email:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPeopleDataURI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "group_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 189
    .end local v10           #email:Ljava/lang/String;
    .end local v11           #group_id:J
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/database/GroupMailStore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mail"

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    .end local v8           #dataCursor:Landroid/database/Cursor;
    .end local v15           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    :goto_3
    sget-boolean v1, Lcom/htc/android/mail/database/GroupMailStore;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "GroupMailStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_6
    sget-boolean v1, Lcom/htc/android/mail/database/GroupMailStore;->DEBUG:Z

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/database/GroupMailStore;->dumpPeopleGroups()V

    .line 203
    :cond_7
    sget-boolean v1, Lcom/htc/android/mail/database/GroupMailStore;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/database/GroupMailStore;->dumpPeopleData()V

    goto/16 :goto_0

    .line 194
    .restart local v8       #dataCursor:Landroid/database/Cursor;
    .restart local v15       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v9

    .line 195
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "GroupMailStore"

    const-string v2, "catch excepiton"

    invoke-static {v1, v2, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 196
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 197
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v1, "GroupMailStore"

    const-string v2, "catch excepiton"

    invoke-static {v1, v2, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V
    .locals 1
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0}, Lcom/htc/android/mail/database/GroupMailStore;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/htc/android/mail/database/GroupMailStore;->broadcastChanged()V

    .line 99
    :cond_0
    return-void
.end method

.method public unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/database/GroupMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method
