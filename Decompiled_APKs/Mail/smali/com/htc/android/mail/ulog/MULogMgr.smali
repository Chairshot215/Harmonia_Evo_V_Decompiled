.class public Lcom/htc/android/mail/ulog/MULogMgr;
.super Ljava/lang/Object;
.source "MULogMgr.java"


# static fields
.field private static mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

.field private static final ulogFileLock:Ljava/lang/Object;


# instance fields
.field private final ACCOUNT_TYPE:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final CATEGORY_EAS_CREATATION:Ljava/lang/String;

.field private final CATEGORY_MAILCOUNT:Ljava/lang/String;

.field private final CATEGORY_MAILSIZE:Ljava/lang/String;

.field private final CATEGORY_UPDATE_SCHEDULE:Ljava/lang/String;

.field private final DEBUG:Z

.field private final PACKAGE_NAME:Ljava/lang/String;

.field private final POP3orIMAP:I

.field private final TAG:Ljava/lang/String;

.field private final TAG_ANALYTIC:Ljava/lang/String;

.field private final htmlFormat:I

.field private mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

.field private mailSizeList:[Ljava/lang/String;

.field private scheduleList:[Ljava/lang/String;

.field private final textFormat:I

.field private uLogData:Lcom/htc/utils/ulog/ReusableULogData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->ulogFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "com.htc.android.mail"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->APP_ID:Ljava/lang/String;

    .line 34
    const-string v0, "update_schedule"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->CATEGORY_UPDATE_SCHEDULE:Ljava/lang/String;

    .line 35
    const-string v0, "default_mailsize"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->CATEGORY_MAILSIZE:Ljava/lang/String;

    .line 36
    const-string v0, "EAS_success"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->CATEGORY_EAS_CREATATION:Ljava/lang/String;

    .line 37
    const-string v0, "mail_count"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->CATEGORY_MAILCOUNT:Ljava/lang/String;

    .line 39
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 40
    const-string v0, "ANALYTIC_Mail"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->TAG_ANALYTIC:Ljava/lang/String;

    .line 41
    const-string v0, "com.htc.android.mail"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->PACKAGE_NAME:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->scheduleList:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->htmlFormat:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->textFormat:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->POP3orIMAP:I

    .line 47
    iput-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->DEBUG:Z

    .line 52
    const-string v0, "MULogMgr"

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getAccountType(J)Ljava/lang/String;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 501
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    invoke-static {v0}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "imap"

    .line 505
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pop3"

    goto :goto_0
.end method

.method private initHtcAppUsageStatsService()V
    .locals 2

    .prologue
    .line 364
    const-string v1, "HtcAppUsageStatsService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 365
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 366
    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_0
.end method

.method private setMailFormat(I)V
    .locals 7
    .parameter "format"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Headers only"

    aput-object v1, v0, v2

    const-string v1, "2 KB"

    aput-object v1, v0, v3

    const-string v1, "5 KB"

    aput-object v1, v0, v4

    const-string v1, "10 KB"

    aput-object v1, v0, v5

    const-string v1, "20 KB"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "50 KB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Text only, no pictures"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Maximum size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Headers only"

    aput-object v1, v0, v2

    const-string v1, "2 KB"

    aput-object v1, v0, v3

    const-string v1, "5 KB"

    aput-object v1, v0, v4

    const-string v1, "10 KB"

    aput-object v1, v0, v5

    const-string v1, "20 KB"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "50 KB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Maximum size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Headers only"

    aput-object v1, v0, v2

    const-string v1, "1 KB (text only)"

    aput-object v1, v0, v3

    const-string v1, "5 KB (text only)"

    aput-object v1, v0, v4

    const-string v1, "25 KB"

    aput-object v1, v0, v5

    const-string v1, "50 KB"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "100 KB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1 MB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Maximum size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addEASULog()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 141
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v1, "com.htc.android.mail"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "EAS_success"

    invoke-interface {v0, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v0

    const-string v1, "EAS_activate"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 145
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 146
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 147
    const-string v0, "ANALYTIC_Mail"

    const-string v1, "[EAS]User creates an EAS account"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public addMailCountULog(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, uDBList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    sget-object v12, Lcom/htc/android/mail/ulog/MULogMgr;->ulogFileLock:Ljava/lang/Object;

    monitor-enter v12

    .line 243
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 244
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v13, "com.htc.android.mail"

    invoke-virtual {v11, v13}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v11

    const-string v13, "mail_count"

    invoke-interface {v11, v13}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 246
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 247
    .local v8, size_db:I
    const-string v1, "account"

    .line 248
    .local v1, accCount:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v10, udata:Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 250
    .local v6, message:Ljava/lang/String;
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    if-nez v11, :cond_0

    .line 251
    new-instance v11, Lcom/htc/android/mail/ulog/ULogFileMgr;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/htc/android/mail/ulog/ULogFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    .line 253
    :cond_0
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->getRecordList()Ljava/util/ArrayList;

    move-result-object v7

    .line 254
    .local v7, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ulog/Record;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 257
    .local v9, size_recordList:I
    const/4 v3, 0x0

    .line 258
    .local v3, hasRecordInFile:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 260
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, hasMailSyncedRecord:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 272
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/Record;->getId()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_3

    .line 273
    const/4 v2, 0x1

    .line 274
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/Record;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->hasOldRecord()Z

    move-result v11

    if-nez v11, :cond_3

    .line 281
    :cond_1
    if-nez v2, :cond_2

    .line 282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0,0,"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 286
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #udata:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .restart local v10       #udata:Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 270
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 302
    .end local v2           #hasMailSyncedRecord:Z
    .end local v5           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v11}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v11}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 304
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->hasOldRecord()Z

    move-result v11

    if-nez v11, :cond_5

    .line 305
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->clean()V

    .line 311
    :goto_2
    const-string v11, "ANALYTIC_Mail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[MailCount]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v12

    .line 313
    return-void

    .line 308
    :cond_5
    sget-object v11, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->cleanNotTodayRecordCache()V

    goto :goto_2

    .line 312
    .end local v1           #accCount:Ljava/lang/String;
    .end local v3           #hasRecordInFile:Z
    .end local v4           #i:I
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ulog/Record;>;"
    .end local v8           #size_db:I
    .end local v9           #size_recordList:I
    .end local v10           #udata:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public addMailSizeULog(JII)V
    .locals 1
    .parameter "accountId"
    .parameter "selectedIndex"
    .parameter "format"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ulog/MULogMgr;->getAccountType(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(Ljava/lang/String;II)V

    .line 154
    return-void
.end method

.method public addMailSizeULog(Ljava/lang/String;II)V
    .locals 4
    .parameter "accType"
    .parameter "selectedIndex"
    .parameter "format"

    .prologue
    .line 159
    invoke-direct {p0, p3}, Lcom/htc/android/mail/ulog/MULogMgr;->setMailFormat(I)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, message:Ljava/lang/String;
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 162
    iget-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "default_mailsize"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "account_type"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "mail_size_limit"

    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mailSizeList:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 166
    iget-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 167
    iget-object v1, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 168
    const-string v1, "ANALYTIC_Mail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MailSize]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public addPausedMailListLog(ILjava/lang/String;)V
    .locals 5
    .parameter "hashCode"
    .parameter "activityName"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-nez v2, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/MULogMgr;->initHtcAppUsageStatsService()V

    .line 322
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IHtcAppUsageStatsService;->notePauseActivity(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, message:Ljava/lang/StringBuilder;
    const-string v2, " is paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, "ANALYTIC_Mail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MailList]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 323
    .end local v1           #message:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addResumedMailListLog(ILjava/lang/String;)V
    .locals 8
    .parameter "hashCode"
    .parameter "activityName"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/MULogMgr;->initHtcAppUsageStatsService()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-nez v0, :cond_1

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "com.htc.android.mail"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .local v7, msg:Ljava/lang/StringBuilder;
    const-string v0, " is resumed"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, "ANALYTIC_Mail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MailList]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v7           #msg:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 346
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public addScheduleULog(JII)V
    .locals 1
    .parameter "accountId"
    .parameter "selectedIndex"
    .parameter "selectedIndexOFFPeak"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ulog/MULogMgr;->getAccountType(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/htc/android/mail/ulog/MULogMgr;->addScheduleULog(Ljava/lang/String;II)V

    .line 174
    return-void
.end method

.method public addScheduleULog(Ljava/lang/String;II)V
    .locals 5
    .parameter "accType"
    .parameter "selectedIndexPeak"
    .parameter "selectedIndexOFFPeak"

    .prologue
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogMgr;->scheduleList:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ulog/MULogMgr;->scheduleList:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, schedule:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, message:Ljava/lang/String;
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 182
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "update_schedule"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "account_type"

    invoke-interface {v2, v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "update_schedule"

    invoke-interface {v2, v3, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 186
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 187
    iget-object v2, p0, Lcom/htc/android/mail/ulog/MULogMgr;->uLogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 188
    const-string v2, "ANALYTIC_Mail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UpdateSchedule]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public addSyncErrLog(Ljava/lang/String;)V
    .locals 3
    .parameter "log"

    .prologue
    .line 355
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->APP_MAIL_INVALID_SYNC_KEY:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v0, p1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 356
    const-string v0, "ANALYTIC_Mail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SyncFail]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public cleanMailCountRecords(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 216
    sget-object v1, Lcom/htc/android/mail/ulog/MULogMgr;->ulogFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    .line 221
    :cond_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->clean()V

    .line 222
    monitor-exit v1

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteMailCountRecord(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 204
    sget-object v1, Lcom/htc/android/mail/ulog/MULogMgr;->ulogFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    .line 209
    :cond_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, p3}, Lcom/htc/android/mail/ulog/ULogFileMgr;->delete(ZJ)V

    .line 210
    monitor-exit v1

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNeedUpdateMailCountULog(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 228
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    .line 231
    :cond_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isULogFileEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->hasNotToday()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageShowMeLog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 481
    const/4 v1, 0x2

    if-eq v1, p2, :cond_0

    if-nez p2, :cond_1

    .line 484
    :cond_0
    invoke-static {p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isAddShowMeFile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.showme.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "callingApp"

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-mail-pop_imap_setup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setAlarm(Landroid/content/Context;Z)V
    .locals 21
    .parameter "context"
    .parameter "isEnable"

    .prologue
    .line 428
    const-string v3, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 429
    .local v2, alarmMgr:Landroid/app/AlarmManager;
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.mail.ulog.MAILCOUNT"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v13, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 432
    .local v8, pIntent:Landroid/app/PendingIntent;
    if-eqz p2, :cond_0

    .line 434
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9}, Ljava/util/GregorianCalendar;-><init>()V

    .line 435
    .local v9, cal:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    .line 436
    .local v12, hour24:I
    const/16 v3, 0xc

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    .line 437
    .local v14, min:I
    const/16 v3, 0xd

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v18

    .line 438
    .local v18, sec:I
    const/16 v3, 0xe

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .line 441
    .local v15, ms:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 442
    .local v10, currentTime:J
    const-wide/32 v6, 0x5265c00

    .line 443
    .local v6, period:J
    mul-int/lit16 v3, v12, 0xe10

    mul-int/lit8 v4, v14, 0x3c

    add-int/2addr v3, v4

    add-int v3, v3, v18

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long v3, v6, v3

    int-to-long v0, v15

    move-wide/from16 v19, v0

    add-long v3, v3, v19

    const-wide/32 v19, 0x84148

    sub-long v16, v3, v19

    .line 453
    .local v16, remainTime:J
    const/4 v3, 0x1

    add-long v4, v10, v16

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 463
    .end local v6           #period:J
    .end local v9           #cal:Ljava/util/Calendar;
    .end local v10           #currentTime:J
    .end local v12           #hour24:I
    .end local v14           #min:I
    .end local v15           #ms:I
    .end local v16           #remainTime:J
    .end local v18           #sec:I
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setMULogReceiver(ZLandroid/content/Context;)V
    .locals 4
    .parameter "enable"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 467
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 468
    .local v0, pkgMgr:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v1, Lcom/htc/android/mail/ulog/MULogReceiver;

    invoke-direct {v3, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 473
    return-void

    .line 468
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setMailAccountType(Z)V
    .locals 7
    .parameter "isEAS"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Manual"

    aput-object v1, v0, v2

    const-string v1, "Push mail"

    aput-object v1, v0, v3

    const-string v1, "Every 5 minutes"

    aput-object v1, v0, v4

    const-string v1, "Every 10 minutes"

    aput-object v1, v0, v5

    const-string v1, "Every 15 minutes"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Every 30 minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Every hour"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Every 2 hours"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Every 4 hours"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Once a day"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->scheduleList:[Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Manual"

    aput-object v1, v0, v2

    const-string v1, "Every 5 minutes"

    aput-object v1, v0, v3

    const-string v1, "Every 10 minutes"

    aput-object v1, v0, v4

    const-string v1, "Every 15 minutes"

    aput-object v1, v0, v5

    const-string v1, "Every 30 minutes"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Every hour"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Every 2 hours"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Every 4 hours"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Once a day"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Push mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ulog/MULogMgr;->scheduleList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public updateMailCountRecord(Landroid/content/Context;JJJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailReceivedNum"
    .parameter "mailSentNum"

    .prologue
    .line 193
    sget-object v8, Lcom/htc/android/mail/ulog/MULogMgr;->ulogFileLock:Ljava/lang/Object;

    monitor-enter v8

    .line 194
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/htc/android/mail/ulog/ULogFileMgr;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    .line 198
    :cond_0
    sget-object v0, Lcom/htc/android/mail/ulog/MULogMgr;->mULogFileMgr:Lcom/htc/android/mail/ulog/ULogFileMgr;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/ulog/ULogFileMgr;->manageMailCountULog(ZJJJ)V

    .line 199
    monitor-exit v8

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
