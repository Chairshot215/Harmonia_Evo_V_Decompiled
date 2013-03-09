.class public Lcom/htc/android/mail/eassvc/core/MailSyncSource;
.super Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
.source "MailSyncSource.java"


# static fields
.field private static DEBUG:Z = false

.field private static final EAS_ATTACHMENT_ALWASY_DOWNLOAD_SIZE:Ljava/lang/String; = "5"

.field private static final EAS_MAIL_CFG_FILE_NAME:Ljava/lang/String; = "eas_mail.prefs"

.field private static final EAS_SYNCSRC_CFG_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final EAS_SYNCSRC_CFG_FILE_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final EAS_SYNCSRC_CFG_FILE_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field private static final EAS_SYNCSRC_CFG_FOLDER_SYNC_KEY:Ljava/lang/String; = "FolderSyncKey"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_ERROR_CODE:Ljava/lang/String; = "LastSyncErrorCode"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_RESULT:Ljava/lang/String; = "LastSyncResult"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_TIME:Ljava/lang/String; = "LastSyncTime"

.field private static final EAS_SYNCSRC_CFG_ROOT_SECTION:Ljava/lang/String; = "Sync"

.field private static final TAG:Ljava/lang/String; = "MailSyncSource"

.field private static mLockObj:Ljava/lang/Object;

.field private static sendMailLock:Ljava/lang/Object;


# instance fields
.field private dynamicWindowSize:Ljava/lang/String;

.field private mCollectionInited:Z

.field private mCurrentItemNum:J

.field private mDefaultInboxColID:Ljava/lang/String;

.field private mIsSending:Z

.field private mOnlyDelete:Z

.field private mOutHttpClient:Landroid/net/http/AndroidHttpClient;

.field private mTotalItemCount:J

.field private mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

.field private prefFile:Ljava/io/File;

.field private svrCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mLockObj:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->sendMailLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter "context"
    .parameter "exAccount"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;I)V

    .line 64
    const-string v0, "50"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->dynamicWindowSize:Ljava/lang/String;

    .line 66
    iput-wide v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCurrentItemNum:J

    .line 67
    iput-wide v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mTotalItemCount:J

    .line 68
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOnlyDelete:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mIsSending:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    .line 72
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    .line 73
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mDefaultInboxColID:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->init()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->loadDataFromFile()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->loadData()V

    .line 83
    return-void
.end method

.method private checkingSvrCollection()V
    .locals 6

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 440
    :cond_0
    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "! checkingSvrCollection, collection is empty"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->retrieveCollectionFromDB(Ljava/util/ArrayList;)V

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 452
    :cond_2
    const-string v0, "MailSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v4, "! checkingSvrCollection, reload collection failed"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 456
    :goto_1
    monitor-exit v1

    .line 458
    :cond_3
    return-void

    .line 448
    :cond_4
    const-string v0, "MailSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v4, "! checkingSvrCollection, mm is null"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 454
    :cond_5
    :try_start_1
    const-string v0, "MailSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "! checkingSvrCollection, reload collection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static decodeMailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "addrMail"

    .prologue
    .line 671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 672
    const-string v5, ""

    .line 699
    :goto_0
    return-object v5

    .line 675
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v4, newAddr:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 678
    .local v1, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    const/4 v5, 0x1

    :try_start_0
    const-string v6, "utf-8"

    const-string v7, "utf-8"

    invoke-static {p0, v5, v6, v7}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 680
    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 682
    :cond_3
    :try_start_1
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MailSyncSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mail address size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 684
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailaddress;

    .line 685
    .local v0, addr:Lcom/htc/android/mail/Mailaddress;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 686
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 689
    :cond_5
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 694
    .end local v0           #addr:Lcom/htc/android/mail/Mailaddress;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 695
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #newAddr:Ljava/lang/StringBuilder;
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v4       #newAddr:Ljava/lang/StringBuilder;
    goto/16 :goto_1
.end method

.method private declared-synchronized fillHierarchyName(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, collectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v5, "> Fill hierarchy name"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 714
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 715
    .local v0, folder:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->recurrsiveFindName(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 716
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hierarchyName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 712
    .end local v0           #folder:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 719
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v5, "< Fill hierarchy name"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private generateXMLData(Ljava/io/OutputStream;Z)V
    .locals 4
    .parameter "os"
    .parameter "includeSyncKey"

    .prologue
    .line 480
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 482
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    const-string v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 484
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 485
    const/4 v2, 0x0

    const-string v3, "Sync"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const/4 v2, 0x0

    const-string v3, "LastSyncErrorCode"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const/4 v2, 0x0

    const-string v3, "LastSyncErrorCode"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const/4 v2, 0x0

    const-string v3, "LastSyncResult"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const/4 v2, 0x0

    const-string v3, "LastSyncResult"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const/4 v2, 0x0

    const-string v3, "LastSyncTime"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v2, 0x0

    const-string v3, "LastSyncTime"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const/4 v2, 0x0

    const-string v3, "Enabled"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const/4 v2, 0x0

    const-string v3, "Enabled"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    const/4 v2, 0x0

    const-string v3, "Sync"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSendMailLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->sendMailLock:Ljava/lang/Object;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 86
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v5, "init"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->reset()V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    .line 91
    new-instance v2, Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/htc/android/mail/eassvc/mail/MailManager;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/MailSyncSource;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    .line 93
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "eas_mail.prefs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->prefFile:Ljava/io/File;

    .line 96
    new-instance v1, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, listener:Lcom/htc/android/mail/eassvc/core/BasicSyncListener;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->setSyncSrcType(I)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V

    .line 99
    return-void
.end method

.method private recurrsiveFindName(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)Ljava/lang/String;
    .locals 3
    .parameter "mailbox"

    .prologue
    .line 723
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    const-string v1, ""

    .line 732
    :goto_0
    return-object v1

    .line 727
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 729
    :cond_2
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    goto :goto_0

    .line 731
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getMailboxBySvrId(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    move-result-object v0

    .line 732
    .local v0, parentFolder:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->recurrsiveFindName(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 115
    iput-wide v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCurrentItemNum:J

    .line 116
    iput-wide v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mTotalItemCount:J

    .line 117
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOnlyDelete:Z

    .line 118
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mIsSending:Z

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 120
    return-void
.end method


# virtual methods
.method public addSendMeetingMailRecord(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "calendarEventId"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/mail/MailManager;->addSendMeetingMailRecord(JJ)V

    .line 808
    return-void
.end method

.method public cleanSyncFailRecord(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)V
    .locals 3
    .parameter "col"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->cleanExisted(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public cleanTrackStatus(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, addMailSvrIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->cleanTrackStatus(Ljava/util/ArrayList;)V

    .line 664
    return-void
.end method

.method public combineMoveCommand(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    .locals 1
    .parameter "moveItems"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->combineMoveCommand(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V

    .line 760
    return-void
.end method

.method public deleteCancelledAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V
    .locals 1
    .parameter "attachItem"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteCancelledAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V

    .line 804
    return-void
.end method

.method public deleteDelCommand(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteDelCommand(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public deleteEmptyFolderCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "collId"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteEmptyFolderCommand(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public deleteMail(JZZ)Z
    .locals 1
    .parameter "messageId"
    .parameter "addToTrack"
    .parameter "delAttachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteMail(JZZ)Z

    move-result v0

    return v0
.end method

.method public deleteMeetingMailRecord(J)V
    .locals 1
    .parameter "calendarEventId"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteMeetingMailRecord(J)V

    .line 231
    return-void
.end method

.method public deletePIMAppData(Z)V
    .locals 0
    .parameter "removeLocal"

    .prologue
    .line 605
    return-void
.end method

.method public deleteSurplusMail()I
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteSurplusMail()I

    move-result v0

    return v0
.end method

.method public deleteUpdCommand(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->deleteUpdCommand(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public endSync(I)V
    .locals 1
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 158
    return-void
.end method

.method public endSync(IZ)V
    .locals 5
    .parameter "syncResult"
    .parameter "updateInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 161
    if-eqz p2, :cond_1

    .line 162
    invoke-super {p0, p1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->endSync(I)V

    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateAccountLastUpdateTime()V

    .line 170
    :cond_0
    :goto_0
    iput-wide v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCurrentItemNum:J

    .line 171
    iput-wide v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mTotalItemCount:J

    .line 172
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsRunning:Z

    .line 166
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/android/mail/eassvc/core/SyncListener;->endSync(JI)V

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    return-wide v0
.end method

.method public getAttachmentMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "fileReference"
    .parameter "isGlobal"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getAttachmentMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentSize(Ljava/lang/String;)J
    .locals 2
    .parameter "fileReference"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getAttachmentSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentItemNum()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCurrentItemNum:J

    return-wide v0
.end method

.method public getDefaultInboxColID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mDefaultInboxColID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getDefaultInboxColID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mDefaultInboxColID:Ljava/lang/String;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mDefaultInboxColID:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSyncMailbox()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 791
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v1, defaultMailboxs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v4

    .line 793
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 794
    .local v0, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 795
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    .end local v0           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getDelList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getDelList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyFolderCommand(Ljava/lang/String;)Z
    .locals 1
    .parameter "collId"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getEmptyFolderCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMailboxBySvrId(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .locals 4
    .parameter "folderSvrId"

    .prologue
    const/4 v2, 0x0

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 747
    :goto_0
    return-object v0

    .line 740
    :cond_0
    monitor-enter p1

    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 742
    .local v0, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    monitor-exit p1

    goto :goto_0

    .line 746
    .end local v0           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 747
    goto :goto_0
.end method

.method public getManager()Lcom/htc/android/mail/eassvc/mail/MailManager;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    return-object v0
.end method

.method public getMeetingInvitation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getMeetingInvitation()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMeetingResp()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getMeetingResp()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMoveItemInfo()Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getMoveItemInfo()Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyDeleteIntentFlag()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOnlyDelete:Z

    return v0
.end method

.method public getOutHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method public getSyncCollection()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    if-nez v0, :cond_1

    .line 327
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "getSyncCollection: loading mail collection"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->loadData()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 462
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    :cond_0
    const-string v2, ""

    .line 476
    :cond_1
    :goto_0
    return-object v2

    .line 466
    :cond_2
    const-string v2, ""

    .line 467
    .local v2, syncKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 468
    .local v0, EASColl:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    .line 473
    .end local v0           #EASColl:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :cond_4
    if-nez v2, :cond_1

    .line 474
    const-string v2, ""

    goto :goto_0
.end method

.method public getTotalItemCount()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mTotalItemCount:J

    return-wide v0
.end method

.method public getUpdList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getUpdList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWindowSize(Lcom/htc/android/mail/eassvc/pim/EASOptions;)Ljava/lang/String;
    .locals 2
    .parameter "syncOptions"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 824
    const-string v0, "5"

    .line 826
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->dynamicWindowSize:Ljava/lang/String;

    goto :goto_0
.end method

.method public getXMLDataString(Z)Ljava/lang/String;
    .locals 2
    .parameter "includeSyncKey"

    .prologue
    .line 515
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 516
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->generateXMLData(Ljava/io/OutputStream;Z)V

    .line 517
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMeetingRecordExist(J)Z
    .locals 1
    .parameter "calendarEventId"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isMeetingRecordExist(J)Z

    move-result v0

    return v0
.end method

.method public isSDsave()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isSDsave()I

    move-result v0

    return v0
.end method

.method public isSendingMail()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mIsSending:Z

    return v0
.end method

.method public loadData()V
    .locals 4

    .prologue
    .line 419
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "> loadData(mail)"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->loadMailboxInfo(Ljava/util/ArrayList;)V

    .line 423
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->checkingSvrCollection()V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    .line 426
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "< loadData(mail)"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 428
    :cond_2
    return-void

    .line 426
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loadDataFromFile()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 335
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "> loadDataFromFile()"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 337
    :cond_0
    const/4 v5, 0x0

    .line 338
    .local v5, prefReader:Ljava/io/FileReader;
    const/4 v3, 0x1

    .line 341
    .local v3, mailSyncEnabled:Z
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->prefFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 342
    .end local v5           #prefReader:Ljava/io/FileReader;
    .local v6, prefReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 343
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 345
    const-string v7, "Sync"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, curTagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 352
    .local v1, curTagVal:Ljava/lang/String;
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_13

    .line 353
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v11, v7, :cond_5

    .line 354
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-eq v7, v11, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 355
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 395
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 396
    .end local v6           #prefReader:Ljava/io/FileReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :goto_2
    :try_start_2
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "! loadDataFromFile(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V

    .line 397
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->checkingSvrCollection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    if-eqz v5, :cond_4

    .line 406
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 415
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    return-void

    .line 357
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_5
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v12, v7, :cond_6

    .line 358
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v11, :cond_2

    goto :goto_1

    .line 361
    :cond_6
    const/4 v7, 0x4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 362
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 363
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v7, "LastSyncResult"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 365
    if-eqz v1, :cond_8

    .line 366
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 399
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    move-object v5, v6

    .line 400
    .end local v6           #prefReader:Ljava/io/FileReader;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :goto_4
    :try_start_5
    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "! loadDataFromFile(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 404
    if-eqz v5, :cond_7

    .line 406
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 413
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_7
    :goto_5
    iput-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    .line 414
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "< loadDataFromFile()"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    .line 368
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_8
    :try_start_7
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "! mLastSyncResult is null"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 369
    :cond_9
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 401
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    move-object v5, v6

    .line 402
    .end local v6           #prefReader:Ljava/io/FileReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :goto_6
    :try_start_8
    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "! loadDataFromFile(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 404
    if-eqz v5, :cond_7

    .line 406
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 407
    :catch_3
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 371
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_a
    :try_start_a
    const-string v7, "LastSyncErrorCode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 372
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 404
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v7

    move-object v5, v6

    .end local v6           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :goto_8
    if-eqz v5, :cond_b

    .line 406
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 404
    :cond_b
    :goto_9
    throw v7

    .line 373
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :cond_c
    :try_start_c
    const-string v7, "LastSyncTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 374
    if-eqz v1, :cond_d

    .line 375
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    goto/16 :goto_1

    .line 377
    :cond_d
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "! mLastSyncTime is null"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 378
    :cond_e
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    goto/16 :goto_1

    .line 380
    :cond_f
    const-string v7, "Enabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 381
    if-eqz v1, :cond_10

    .line 382
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_1

    .line 384
    :cond_10
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v7, :cond_11

    const-string v7, "MailSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "! mEnabled is null"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 385
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 387
    :cond_12
    const-string v7, "FolderSyncKey"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_1

    .line 404
    :cond_13
    if-eqz v6, :cond_14

    .line 406
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_14
    :goto_a
    move-object v5, v6

    .line 411
    .end local v6           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    goto/16 :goto_5

    .line 407
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    .line 408
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 407
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 407
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v2

    goto/16 :goto_7

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 404
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    goto/16 :goto_8

    .line 401
    :catch_8
    move-exception v2

    goto/16 :goto_6

    .line 399
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 395
    :catch_a
    move-exception v2

    goto/16 :goto_2
.end method

.method public processAddFolder(Ljava/util/ArrayList;Z)V
    .locals 7
    .parameter
    .parameter "firstSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, addFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-eqz p2, :cond_3

    .line 257
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v5, "First time folder sync"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v3

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->fillHierarchyName(Ljava/util/ArrayList;)V

    .line 262
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->firstFolderUpdate(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 265
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MailSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAddFolder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 266
    :cond_4
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v3

    .line 267
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 268
    .local v1, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setFolderEnableSyncDown()V

    .line 272
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setFolderEnableSyncUp()V

    .line 273
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->fillHierarchyName(Ljava/util/ArrayList;)V

    .line 274
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processAddFolder(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public processDelFolder(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, delFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processDelFolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processDelFolder(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public processMailAdd(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;
    .locals 7
    .parameter "mailboxId"
    .parameter "newSyncKey"
    .parameter "easEmail"
    .parameter "msgTable"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            "Landroid/net/Uri;",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMailAdd(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public processMailChangeList(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/core/SyncManager;)Z
    .locals 8
    .parameter "mailboxId"
    .parameter "newSyncKey"
    .parameter
    .parameter
    .parameter
    .parameter "msgTableUri"
    .parameter "syncMgr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/htc/android/mail/eassvc/core/SyncManager;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    .local p4, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    .local p5, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    .local p6, attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMailChangeList(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public processMoveMailSuccess(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 768
    .local p1, moveMailRespList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMoveMailSuccess(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public processUpdFolder(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, updFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-boolean v8, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MailSyncSource"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processUpdFolder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 291
    :cond_2
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v9

    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 293
    .local v7, updItem:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v6, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 294
    .local v6, type:Ljava/lang/String;
    iget-object v5, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    .line 295
    .local v5, svrId:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 296
    .local v4, serverItem:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 299
    iget-object v8, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    iput-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    .line 300
    iget-object v8, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    iput-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    .line 302
    iget-boolean v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    iput-boolean v8, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 303
    iget-boolean v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    iput-boolean v8, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    goto :goto_1

    .line 312
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #serverItem:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v5           #svrId:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #updItem:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 309
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_6

    .line 310
    const-string v8, "MailSyncSource"

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v12, "processUpdFolder, collection is empty"

    invoke-static {v8, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 312
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->fillHierarchyName(Ljava/util/ArrayList;)V

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 317
    .local v3, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v8, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getMailboxBySvrId(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    move-result-object v0

    .line 318
    .local v0, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v8, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    iput-object v8, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    goto :goto_2

    .line 322
    .end local v0           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v3           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :cond_7
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v8, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processUpdFolder(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "release"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->reset()V

    .line 105
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v4, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    .line 108
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->release()V

    .line 109
    iput-object v4, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    .line 111
    invoke-super {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->release()V

    .line 112
    return-void
.end method

.method public releaseOutHttpClient()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOutHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 142
    :cond_0
    return-void
.end method

.method public removeAllSyncMessages(Ljava/lang/String;)Z
    .locals 1
    .parameter "collectionSvrId"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->removeAllSyncMessages(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected removeSyncInfo()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public saveData()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v4, "- saveData()"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 527
    :cond_0
    sget-object v11, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mLockObj:Ljava/lang/Object;

    monitor-enter v11

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->prefFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 541
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

    .line 543
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .local v9, tempFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 546
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v8, v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->generateXMLData(Ljava/io/OutputStream;Z)V

    .line 549
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 550
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 552
    if-eqz v8, :cond_1

    .line 554
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 564
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 565
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 568
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 569
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->prefFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 570
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 575
    if-eqz v0, :cond_2

    .line 577
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 578
    const/4 v0, 0x0

    .line 583
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 585
    :try_start_6
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 586
    const/4 v5, 0x0

    .line 593
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    .line 594
    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 600
    :cond_4
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 601
    return-void

    .line 552
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v7, :cond_5

    .line 554
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 552
    :cond_5
    :goto_4
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 596
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #tempFile:Ljava/io/File;
    .end local v10           #tempFilePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 597
    .local v6, e:Ljava/io/IOException;
    :try_start_b
    const-string v1, "MailSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v4, "saveData: "

    invoke-static {v1, v2, v3, v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 598
    throw v6

    .line 600
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    .line 571
    .restart local v0       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v5       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #tempFile:Ljava/io/File;
    .restart local v10       #tempFilePath:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 572
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 575
    .end local v6           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_6

    .line 577
    :try_start_d
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 578
    const/4 v0, 0x0

    .line 583
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 585
    :try_start_e
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 586
    const/4 v5, 0x0

    .line 575
    :cond_7
    :goto_6
    :try_start_f
    throw v1

    .line 555
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 556
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 555
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 556
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v5       #outChannel:Ljava/nio/channels/FileChannel;
    :catch_4
    move-exception v6

    .line 580
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 587
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 588
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 579
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 580
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 587
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 588
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_2

    .line 552
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public setCurrentItemNum(J)V
    .locals 0
    .parameter "itemNum"

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCurrentItemNum:J

    .line 211
    return-void
.end method

.method public setDefaultSyncMailbox([Ljava/lang/String;)V
    .locals 8
    .parameter "defaultSyncMailbox"

    .prologue
    .line 772
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v7

    .line 773
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 774
    .local v1, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    .line 775
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 776
    .local v2, defaultFolder:Ljava/lang/String;
    iget-object v6, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 777
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    goto :goto_0

    .line 787
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v2           #defaultFolder:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 775
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v2       #defaultFolder:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 787
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v2           #defaultFolder:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    return-void
.end method

.method public setFolderEnableSyncDown()V
    .locals 9

    .prologue
    .line 612
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v8, "> setFolderEnableSyncDown()"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 613
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 617
    :cond_2
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncDown_List;->mailType:[I

    .line 618
    .local v2, mailDownType:[I
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v6

    .line 619
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 620
    .local v3, nSvrCollSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 621
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v4, v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 622
    .local v4, type:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 623
    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 624
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 622
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 620
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    .end local v1           #j:I
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v8, "< setFolderEnableSyncDown()"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v0           #i:I
    .end local v3           #nSvrCollSize:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setFolderEnableSyncUp()V
    .locals 9

    .prologue
    .line 634
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v8, "> setFolderEnableSyncUp()"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 635
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncUp_List;->mailType:[I

    .line 640
    .local v2, mailUpType:[I
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v6

    .line 641
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 642
    .local v3, nSvrCollSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 643
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v4, v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 644
    .local v4, type:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 645
    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 646
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    .line 644
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 642
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    .end local v1           #j:I
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v8, "< setFolderEnableSyncUp()"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v0           #i:I
    .end local v3           #nSvrCollSize:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z
    .locals 1
    .parameter "moveItems"
    .parameter "flag"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z

    move-result v0

    return v0
.end method

.method public setOnlyDeleteIntentFlag(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 703
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set only delete intent flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 704
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mOnlyDelete:Z

    .line 705
    return-void
.end method

.method public setSendMail(Z)V
    .locals 0
    .parameter "bSending"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mIsSending:Z

    .line 154
    return-void
.end method

.method public setSyncOptions(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 1
    .parameter "syncOption"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->setSyncOptions(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 128
    return-void
.end method

.method public setTotalItemCount(J)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mTotalItemCount:J

    .line 219
    return-void
.end method

.method public showNotification(Ljava/lang/String;)Z
    .locals 7
    .parameter "collId"

    .prologue
    const/4 v5, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultSyncMailbox()[Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, mailboxs:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-gtz v6, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v5

    .line 867
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 868
    .local v2, item:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 869
    const/4 v5, 0x1

    goto :goto_0

    .line 867
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public updateAttachment(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "strFileRef"
    .parameter "strSavePath"
    .parameter "globalAttach"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateAttachment(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateCollections()V
    .locals 4

    .prologue
    .line 431
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "- updateCollections(mail)"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->loadMailboxInfo(Ljava/util/ArrayList;)V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mCollectionInited:Z

    .line 435
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDownloadedSize(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "strFileReference"
    .parameter "globalAttach"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateDownloadedSize(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateMailAction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "collId"
    .parameter "uid"
    .parameter "action"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateMailAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 860
    return-void
.end method

.method public updateMailBody(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Z)Z
    .locals 1
    .parameter "uid"
    .parameter "email"
    .parameter "globalMail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateMailBody(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Z)Z

    move-result v0

    return v0
.end method

.method public updateMailboxInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v3, "- updateMailboxInfo()"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->svrCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->saveMailboxInfo(JLjava/util/ArrayList;)Z

    .line 523
    return-void
.end method
