.class public Lcom/htc/android/mail/database/ImportantMailStore;
.super Ljava/lang/Object;
.source "ImportantMailStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImportantMailStore"

.field private static mStore:Lcom/htc/android/mail/database/ImportantMailStore; = null

.field private static final sInterval:J = 0x2710L


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContactsChangedUri:Landroid/net/Uri;

.field private mContactsCount:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGroup:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImportantMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImportantMailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mImprotantGroupUri:Landroid/net/Uri;

.field private mIsContactCountValidated:Z

.field private mLastChangeTime:J

.field private mLoadFinishedTokenId:I

.field private mNowTokenId:I

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
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/ImportantMailStore;->DEBUG:Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/database/ImportantMailStore;->mStore:Lcom/htc/android/mail/database/ImportantMailStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailList:Ljava/util/ArrayList;

    .line 42
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    .line 43
    iput-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContext:Landroid/content/Context;

    .line 45
    iput-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    const-string v2, "content://com.android.contacts/group/data/Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImprotantGroupUri:Landroid/net/Uri;

    .line 47
    const-string v2, "content://com.android.contacts/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContactsChangedUri:Landroid/net/Uri;

    .line 51
    const/16 v2, -0x64

    iput v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mNowTokenId:I

    .line 54
    iput-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mGroup:Ljava/lang/String;

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mIsContactCountValidated:Z

    .line 315
    new-instance v2, Lcom/htc/android/mail/database/ImportantMailStore$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/database/ImportantMailStore$2;-><init>(Lcom/htc/android/mail/database/ImportantMailStore;)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ImportantMail"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v0, importantMailThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mHandler:Landroid/os/Handler;

    .line 63
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContactsChangedUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-instance v5, Lcom/htc/android/mail/database/ImportantMailStore$1;

    iget-object v6, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/htc/android/mail/database/ImportantMailStore$1;-><init>(Lcom/htc/android/mail/database/ImportantMailStore;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v1, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/htc/android/mail/database/ImportantMailStore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/database/ImportantMailStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/database/ImportantMailStore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/database/ImportantMailStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->invalidate()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/database/ImportantMailStore;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mLastChangeTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/database/ImportantMailStore;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mLastChangeTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/database/ImportantMailStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->broadcastChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/database/ImportantMailStore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v0

    return v0
.end method

.method private broadcastChanged()V
    .locals 6

    .prologue
    .line 227
    iget-object v5, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 233
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, allWeakHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 231
    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/ref/WeakReference;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/htc/android/mail/database/ImportantMailStore;->notifyChanged(Ljava/lang/ref/WeakReference;)V

    .line 230
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private broadcastContactGroupChanged()V
    .locals 7

    .prologue
    .line 236
    iget-object v6, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 244
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 238
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

    .line 239
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 240
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 241
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->onContactGroupChanged()V

    .line 238
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getContactCountInternal()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 110
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_1

    .line 111
    new-array v2, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 112
    .local v2, projection:[Ljava/lang/String;
    const-string v3, " contacts._id IN (SELECT contact_id FROM raw_contacts WHERE account_type=\'com.tmobile.nab\' AND raw_contacts._id IN (SELECT raw_contact_id FROM data INNER JOIN mimetypes WHERE data.mimetype_id = mimetypes._id AND mimetype = \'vnd.android.cursor.item/vnd.tmobile.faves\' AND data1=1))"

    .line 119
    .local v3, where:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/android/mail/database/ImportantMailStore;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImportantMailStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactCountInternal>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContactsCount:I

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    iput-boolean v7, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mIsContactCountValidated:Z

    .line 127
    return-void
.end method

.method private getImportantMail()V
    .locals 24

    .prologue
    .line 133
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-eq v2, v3, :cond_5

    .line 135
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "title = %s AND deleted = 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mGroup:Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, where:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/database/ImportantMailStore;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ImportantMailStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImportantMail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 138
    .local v15, groupCursor:Landroid/database/Cursor;
    if-nez v15, :cond_2

    .line 206
    .end local v15           #groupCursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local v15       #groupCursor:Landroid/database/Cursor;
    :cond_2
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 141
    .local v9, count:I
    if-nez v9, :cond_4

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/database/ImportantMailStore;->broadcastContactGroupChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #count:I
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .restart local v9       #count:I
    :cond_4
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 150
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #count:I
    .end local v15           #groupCursor:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mNowTokenId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mLoadFinishedTokenId:I

    .line 152
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v21, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v13, emailDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/database/ImportantMailStore$EmailData;>;"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "( %s = \'%s\')"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mimetype"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/email_v2"

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .restart local v5       #where:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/database/ImportantMailStore;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ImportantMailStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImportantMail2>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImportantMailStore;->mImprotantGroupUri:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "is_super_primary"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_b

    .line 166
    :cond_7
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 169
    .local v19, mailAddr:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 170
    .local v17, isSuperPrimary:I
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 171
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 172
    .local v20, mailAddrLowerCase:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 174
    new-instance v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;-><init>(Lcom/htc/android/mail/database/ImportantMailStore$1;)V

    .line 175
    .local v12, emailData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    iput-object v10, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    .line 176
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->mailAddr:Ljava/lang/String;

    .line 177
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 178
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;

    .line 181
    .local v23, storedData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, ""

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    .end local v10           #displayName:Ljava/lang/String;
    .end local v12           #emailData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    .end local v17           #isSuperPrimary:I
    .end local v19           #mailAddr:Ljava/lang/String;
    .end local v20           #mailAddrLowerCase:Ljava/lang/String;
    .end local v23           #storedData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_b
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v18, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 193
    .local v14, emailSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 194
    .local v11, email:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;

    .line 195
    .restart local v12       #emailData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    iget-object v2, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v2, ""

    iget-object v3, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 196
    :cond_c
    iget-object v2, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->mailAddr:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    :cond_d
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v22, sb:Ljava/lang/StringBuffer;
    const-string v2, "\""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v12, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;->mailAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #emailData:Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
    .end local v22           #sb:Ljava/lang/StringBuffer;
    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    .line 205
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailList:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/ImportantMailStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    sget-object v0, Lcom/htc/android/mail/database/ImportantMailStore;->mStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-nez v0, :cond_1

    .line 86
    const-class v1, Lcom/htc/android/mail/database/ImportantMailStore;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/database/ImportantMailStore;->mStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/htc/android/mail/database/ImportantMailStore;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/database/ImportantMailStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/database/ImportantMailStore;->mStore:Lcom/htc/android/mail/database/ImportantMailStore;

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lcom/htc/android/mail/database/ImportantMailStore;->mStore:Lcom/htc/android/mail/database/ImportantMailStore;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mNowTokenId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mNowTokenId:I

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mIsContactCountValidated:Z

    .line 309
    return-void
.end method

.method private isContactCountValidated()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mIsContactCountValidated:Z

    return v0
.end method

.method private isValidated()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mNowTokenId:I

    iget v1, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mLoadFinishedTokenId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyChanged(Ljava/lang/ref/WeakReference;)V
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
    .line 220
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 221
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 222
    check-cast v0, Lcom/htc/android/mail/MailRequestHandler;

    .end local v0           #handler:Landroid/os/Handler;
    invoke-virtual {v0}, Lcom/htc/android/mail/MailRequestHandler;->onImportantMailUpdateComplete()V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public changeGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "group"

    .prologue
    const/16 v1, 0x9b

    .line 96
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 97
    const-string p1, "fave"

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iput-object p1, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mGroup:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->invalidate()V

    .line 102
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_3

    .line 103
    const-string v0, "content://com.android.contacts/filter_email_of_faves"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImprotantGroupUri:Landroid/net/Uri;

    goto :goto_0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/group/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImprotantGroupUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isContactCountValidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getContactCountInternal()V

    .line 287
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mContactsCount:I

    return v0
.end method

.method public declared-synchronized getImportantEmailSeq()Ljava/lang/String;
    .locals 6

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getContactCountInternal()V

    .line 260
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getImportantMail()V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 264
    :cond_1
    const/4 v4, 0x0

    .line 276
    :goto_0
    monitor-exit p0

    return-object v4

    .line 267
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v3, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 269
    .local v1, emailSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 258
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #emailSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 273
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #emailSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_3
    :try_start_2
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 276
    .end local v0           #email:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0
.end method

.method public declared-synchronized getImportantPrimaryEmailArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getImportantMail()V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 296
    :cond_1
    const/4 v0, 0x0

    .line 299
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isImportantEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "mail"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mImportantMailMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 209
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/htc/android/mail/database/ImportantMailStore;->notifyChanged(Ljava/lang/ref/WeakReference;)V

    .line 213
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
    .line 216
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/database/ImportantMailStore;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
