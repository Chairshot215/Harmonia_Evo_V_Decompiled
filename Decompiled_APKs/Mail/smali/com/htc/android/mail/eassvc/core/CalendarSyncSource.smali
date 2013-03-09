.class public Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;
.super Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
.source "CalendarSyncSource.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EAS_CAL_CFG_FILE_NAME:Ljava/lang/String; = "eas_cal.prefs"

.field private static final TAG:Ljava/lang/String; = "CalendarSyncSource"


# instance fields
.field private calendarId:J

.field private cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

.field private mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x2

    .line 34
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;I)V

    .line 35
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 36
    iget-wide v2, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {p1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "eas_cal.prefs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    .line 38
    sget-object v2, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    .line 40
    new-instance v1, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;

    invoke-direct {v1, p1}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, listener:Lcom/htc/android/mail/eassvc/core/BasicSyncListener;
    invoke-virtual {v1, v4}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->setSyncSrcType(I)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V

    .line 44
    new-instance v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-direct {v2, p1, p2, p0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    .line 46
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->loadData()V

    .line 47
    return-void
.end method


# virtual methods
.method public cleanSyncFailRecord()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cleanSyncFailRecord()V

    .line 102
    return-void
.end method

.method public deletePIMAppData(Z)V
    .locals 1
    .parameter "removeLocal"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->init()V

    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeAllEvents(Z)V

    .line 108
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->reset()V

    .line 109
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->release()V

    .line 110
    return-void
.end method

.method public getCalendarChildList(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "parentList"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarChildList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->calendarId:J

    return-wide v0
.end method

.method public getCollIdFromDB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCollIdFromDB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public getEventsCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getEventsCount()I

    move-result v0

    return v0
.end method

.method public loadData()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->loadData()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->calendarId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public processClientAddRespList(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->processClientAddRespList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p2, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p3, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removeAllEvents()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeAllEvents(Z)V

    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->reset()V

    .line 134
    return-void
.end method

.method protected removeSyncInfo()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeSyncinfo()V

    .line 138
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 52
    return-void
.end method

.method public setProtocolVer(D)V
    .locals 1
    .parameter "ver"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->setProtocolVer(D)V

    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->setProtocolVer(D)V

    .line 129
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 2
    .parameter "isScreenOn"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateInterval:I

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateInterval:I

    goto :goto_0
.end method

.method public updateClientServerId(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateClientServerId(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method public updateClientServerId_withoutSetSyncingFlag(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateClientServerId_withoutSetSyncingFlag(Ljava/util/ArrayList;)V

    .line 81
    return-void
.end method

.method public updateSynckeyAndTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "synckey"
    .parameter "changeList"
    .parameter "delList"

    .prologue
    .line 68
    const-string v1, "CalendarSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- updateSynckeyAndTracker() : from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 69
    const-string v1, "CalendarSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delete id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->cm:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateSynckeyAndTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->saveDataToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSynckeyAndTracker("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0
.end method
