.class public Lcom/htc/android/mail/eassvc/core/ContactSyncSource;
.super Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
.source "ContactSyncSource.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EAS_CON_CFG_FILE_NAME:Ljava/lang/String; = "eas_con.prefs"

.field private static final TAG:Ljava/lang/String; = "ContactSyncSource"


# instance fields
.field private cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

.field private mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;I)V

    .line 38
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 39
    iget-wide v2, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {p1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "eas_con.prefs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    .line 41
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    .line 45
    new-instance v1, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;

    invoke-direct {v1, p1}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, listener:Lcom/htc/android/mail/eassvc/core/BasicSyncListener;
    invoke-virtual {v1, v4}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->setSyncSrcType(I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V

    .line 49
    new-instance v2, Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-direct {v2, p1, p2, p0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    .line 50
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->loadData()V

    .line 51
    return-void
.end method


# virtual methods
.method public cleanSyncFailRecord()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->cleanSyncFailRecord()V

    .line 107
    return-void
.end method

.method public deletePIMAppData(Z)V
    .locals 6
    .parameter "removeLocal"

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->init()V

    .line 113
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeAllSyncPeople(Z)V

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->reset()V

    .line 115
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ContactSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while deleting PIMAppData, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public getCollIdFromDB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->getCollIdFromDB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "conversationError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 63
    return-void
.end method

.method public processClientAddRespList(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->processClientAddRespList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p2, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p3, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, result:Z
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 77
    return v0

    .line 74
    :catchall_0
    move-exception v1

    throw v1
.end method

.method protected removeSyncInfo()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeSyncinfo(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 56
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 2
    .parameter "isScreenOn"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateInterval:I

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateInterval:I

    goto :goto_0
.end method

.method public skipIncorrectContact(Ljava/lang/String;)Z
    .locals 1
    .parameter "clientId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->skipIncorrectContact(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateClientServerId(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateClientServerId(Ljava/util/ArrayList;)V

    .line 103
    return-void
.end method

.method public updateSynckeyAndTracker(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "synckey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "ContactSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- updateSynckeyAndTracker() : from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->cm:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSynckeyAndTracker(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->saveDataToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ContactSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSynckeyAndTracker("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
