.class public Lcom/htc/android/mail/ulog/MULogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MULogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final INTENT_ACTION_ALARM_WAKEUP:Ljava/lang/String;

.field private final INTENT_ACTION_QUICK_BOOT:Ljava/lang/String;

.field private final MAILCOUNT:I

.field private final STARTALARM:I

.field private final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mULogThread:Landroid/os/HandlerThread;

.field private ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const-string v0, "android.intent.action.mail.ulog.MAILCOUNT"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->INTENT_ACTION_ALARM_WAKEUP:Ljava/lang/String;

    .line 26
    const-string v0, "android.intent.action.QUICKBOOT_POWERON"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->INTENT_ACTION_QUICK_BOOT:Ljava/lang/String;

    .line 27
    const-string v0, "MULogReceiver"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->MAILCOUNT:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->STARTALARM:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->DEBUG:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/ulog/MULogReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/MULogReceiver;->manageMailCountULog()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ulog/MULogReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/MULogReceiver;->setAlarm()V

    return-void
.end method

.method private manageMailCountULog()V
    .locals 20

    .prologue
    .line 131
    const-string v7, "content://mail/ulog_mailcount"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, URI_MAILCOUNT:Landroid/net/Uri;
    const-string v10, "_provider"

    .line 133
    .local v10, COLUMN_PROVIDER:Ljava/lang/String;
    const-string v11, "accounts._id"

    .line 134
    .local v11, PROJECTION_ACCOUNTID:Ljava/lang/String;
    const-string v8, "_id"

    .line 135
    .local v8, COLUMN_ACCOUNTID:Ljava/lang/String;
    const-string v12, "count(messages._id) as mailcount"

    .line 136
    .local v12, PROJECTION_MAILCOUNT:Ljava/lang/String;
    const-string v9, "mailcount"

    .line 137
    .local v9, COLUMN_MAILCOUNT:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 139
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v19, "accounts._id"

    aput-object v19, v4, v7

    const/4 v7, 0x1

    const-string v19, "_provider"

    aput-object v19, v4, v7

    const/4 v7, 0x2

    const-string v19, "count(messages._id) as mailcount"

    aput-object v19, v4, v7

    .line 144
    .local v4, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 145
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 146
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 149
    .local v15, cursorOfMailCount:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 151
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v18, uLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :cond_0
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 157
    .local v17, record:[Ljava/lang/String;
    const-string v7, "_provider"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, accountType:Ljava/lang/String;
    const-string v7, "_id"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 159
    .local v13, accountId:I
    const-string v7, "mailcount"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 161
    .local v16, mailCount:I
    const/4 v7, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v7

    .line 162
    const/4 v7, 0x1

    aput-object v14, v17, v7

    .line 163
    const/4 v7, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v7

    .line 164
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 167
    new-instance v7, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v7}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailCountULog(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 172
    .end local v13           #accountId:I
    .end local v14           #accountType:Ljava/lang/String;
    .end local v16           #mailCount:I
    .end local v17           #record:[Ljava/lang/String;
    .end local v18           #uLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_2
    return-void
.end method

.method private setAlarm()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 92
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 93
    .local v1, TABLE_ACCOUNTS:Landroid/net/Uri;
    const-string v6, "_id"

    .line 94
    .local v6, COLUMN_ID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    .local v7, cursorOfAccounts:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v8}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 99
    .local v8, ulogMgr:Lcom/htc/android/mail/ulog/MULogMgr;
    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/htc/android/mail/ulog/MULogMgr;->isNeedUpdateMailCountULog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/MULogReceiver;->manageMailCountULog()V

    .line 103
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Lcom/htc/android/mail/ulog/MULogMgr;->setAlarm(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_2
    return-void

    .line 109
    .end local v8           #ulogMgr:Lcom/htc/android/mail/ulog/MULogMgr;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_3
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mULogThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MULogThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mULogThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mULogThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    if-nez v2, :cond_1

    .line 47
    new-instance v2, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mULogThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;-><init>(Lcom/htc/android/mail/ulog/MULogReceiver;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 56
    .local v1, msg:Landroid/os/Message;
    const-string v2, "android.intent.action.mail.ulog.MAILCOUNT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 58
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    :cond_2
    :goto_0
    return-void

    .line 59
    :cond_3
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    :cond_4
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 61
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogReceiver;->ulogHandler:Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
