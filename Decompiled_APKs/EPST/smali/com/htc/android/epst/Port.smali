.class public Lcom/htc/android/epst/Port;
.super Ljava/lang/Object;
.source "Port.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Port"

.field public static final NULL_DMCMD_ID:I = -0x1

.field public static final NULL_NVITEM_ID:I = -0x1

.field private static mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

.field private static mNewInstance:Lcom/htc/android/epst/Port;

.field private static mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# instance fields
.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/android/epst/internal/SendRecord;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/SendRecord;-><init>()V

    sput-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/Port;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/android/epst/Port;->mNewInstance:Lcom/htc/android/epst/Port;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/htc/android/epst/Port;

    invoke-direct {v0}, Lcom/htc/android/epst/Port;-><init>()V

    sput-object v0, Lcom/htc/android/epst/Port;->mNewInstance:Lcom/htc/android/epst/Port;

    .line 27
    :cond_0
    sget-object v0, Lcom/htc/android/epst/Port;->mNewInstance:Lcom/htc/android/epst/Port;

    return-object v0
.end method


# virtual methods
.method public Commit(Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 4
    .parameter "updater"

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    .line 120
    .local v0, doObj:Lcom/htc/android/epst/internal/DataObject;
    iput-object p1, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 121
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #doObj:Lcom/htc/android/epst/internal/DataObject;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Port"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NullRequest(ILcom/htc/android/epst/translator/Translator;)V
    .locals 0
    .parameter "itemId"
    .parameter "trans"

    .prologue
    .line 55
    invoke-interface {p2}, Lcom/htc/android/epst/translator/Translator;->refreshGroupSettings()V

    .line 56
    return-void
.end method

.method public PortRebootDevice()V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->objRebootDevice()V

    .line 192
    return-void
.end method

.method public RequestRead(IIILcom/htc/android/epst/translator/Translator;)V
    .locals 6
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 94
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 95
    return-void
.end method

.method public RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V
    .locals 8
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 61
    const-string v5, "Port"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RequestRead IN.nvitemid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmdid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "itemId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " translator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    .line 64
    .local v0, dataObject:Lcom/htc/android/epst/internal/DataObject;
    const/4 v4, 0x0

    .line 65
    .local v4, status:I
    const/4 v2, 0x0

    .line 66
    .local v2, intIndex:I
    if-eqz p3, :cond_0

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    :cond_0
    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/android/epst/internal/DataObject;->checkSendStatusGeneric(III)I

    move-result v3

    .line 71
    .local v3, result:I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 74
    :cond_1
    move v4, v3

    .line 75
    if-eqz p4, :cond_2

    .line 76
    invoke-interface {p5, p4, v4}, Lcom/htc/android/epst/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 90
    .end local v0           #dataObject:Lcom/htc/android/epst/internal/DataObject;
    .end local v2           #intIndex:I
    .end local v3           #result:I
    .end local v4           #status:I
    :cond_2
    :goto_0
    return-void

    .line 81
    .restart local v0       #dataObject:Lcom/htc/android/epst/internal/DataObject;
    .restart local v2       #intIndex:I
    .restart local v3       #result:I
    .restart local v4       #status:I
    :cond_3
    const-string v5, "Port"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "register translator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and item id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in current send record"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v5, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iput-object p5, v5, Lcom/htc/android/epst/internal/SendRecord;->translator:Lcom/htc/android/epst/translator/Translator;

    .line 83
    sget-object v5, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iput p4, v5, Lcom/htc/android/epst/internal/SendRecord;->itemId:I

    .line 84
    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/android/epst/internal/DataObject;->generateReadCommandGeneric(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0           #dataObject:Lcom/htc/android/epst/internal/DataObject;
    .end local v2           #intIndex:I
    .end local v3           #result:I
    .end local v4           #status:I
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Port"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V
    .locals 6
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 99
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 100
    return-void
.end method

.method public RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V
    .locals 5
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    .line 106
    .local v0, dataObject:Lcom/htc/android/epst/internal/DataObject;
    const/4 v2, 0x0

    .line 107
    .local v2, intIndex:I
    if-eqz p3, :cond_0

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    :cond_0
    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/android/epst/internal/DataObject;->storeSendItemGeneric(III)V

    .line 111
    invoke-virtual {p0, p4, p5}, Lcom/htc/android/epst/Port;->changeItemValue(ILcom/htc/android/epst/translator/Translator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #dataObject:Lcom/htc/android/epst/internal/DataObject;
    .end local v2           #intIndex:I
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Port"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Response(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 144
    const-string v1, "Port"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response current translator:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget-object v0, v0, Lcom/htc/android/epst/internal/SendRecord;->translator:Lcom/htc/android/epst/translator/Translator;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget-object v0, v0, Lcom/htc/android/epst/internal/SendRecord;->translator:Lcom/htc/android/epst/translator/Translator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and item id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget v2, v2, Lcom/htc/android/epst/internal/SendRecord;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget v0, v0, Lcom/htc/android/epst/internal/SendRecord;->itemId:I

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget-object v0, v0, Lcom/htc/android/epst/internal/SendRecord;->translator:Lcom/htc/android/epst/translator/Translator;

    sget-object v1, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    iget v1, v1, Lcom/htc/android/epst/internal/SendRecord;->itemId:I

    invoke-interface {v0, v1, p1}, Lcom/htc/android/epst/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 149
    :cond_0
    sget-object v0, Lcom/htc/android/epst/Port;->mCurrentSendRecord:Lcom/htc/android/epst/internal/SendRecord;

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/SendRecord;->recycle()V

    .line 150
    return-void

    .line 144
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method public changeItemValue(ILcom/htc/android/epst/translator/Translator;)V
    .locals 0
    .parameter "itemId"
    .parameter "trans"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p2}, Lcom/htc/android/epst/translator/Translator;->refreshGroupSettings()V

    .line 140
    :cond_0
    return-void
.end method

.method public clearGPS(Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 153
    sput-object p1, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 154
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->clearGPS()V

    .line 155
    return-void
.end method

.method public clearStorage()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->clear()V

    .line 184
    return-void
.end method

.method public enterOTKSLPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V
    .locals 1
    .parameter "updater"
    .parameter "password"

    .prologue
    .line 171
    sput-object p1, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 172
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/android/epst/internal/DataObject;->enterOTKSLPassWord(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public enterPassWord(Lcom/htc/android/epst/SettingValueUpdater;Ljava/lang/String;)V
    .locals 3
    .parameter "updater"
    .parameter "pw"

    .prologue
    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 33
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/android/epst/internal/DataObject;->sendMSL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Port"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeClearReburbishDate()V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->clearReburbishDateCmd()V

    .line 211
    return-void
.end method

.method public executeClearReburbishStatus()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->clearReburbishStatusCmd()V

    .line 216
    return-void
.end method

.method public executeRefurbish(Z)V
    .locals 1
    .parameter "ibResetArm11"

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/epst/internal/DataObject;->executeRefurbishPowerSave(Z)V

    .line 188
    return-void
.end method

.method public executeRestore()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->executeRestorePowerSave()V

    .line 196
    return-void
.end method

.method public executeSCRTN()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->executeSCRTNPowerSave()V

    .line 204
    return-void
.end method

.method public isPhoneInService()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->isPhoneInService()Z

    move-result v0

    return v0
.end method

.method public passWordResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0, p1}, Lcom/htc/android/epst/SettingValueUpdater;->updateAuthResult(Z)V

    .line 52
    return-void
.end method

.method public resetAllRecordState()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/DataObject;->resetAllRecordState()V

    .line 200
    return-void
.end method

.method public returnCommit(II)V
    .locals 1
    .parameter "successCount"
    .parameter "failedCount"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0, p1, p2}, Lcom/htc/android/epst/SettingValueUpdater;->updateCommitResult(II)V

    .line 129
    return-void
.end method

.method public returnDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "iMessage"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0, p1}, Lcom/htc/android/epst/SettingValueUpdater;->returnDialog(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setTempUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "updater"

    .prologue
    .line 162
    sput-object p1, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 163
    return-void
.end method

.method public setUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "updater"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/android/epst/Port;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 41
    return-void
.end method

.method public showRebootPrompt()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->showRebootPrompt()V

    .line 167
    return-void
.end method

.method public updateClearGPSResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 158
    sget-object v0, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0, p1}, Lcom/htc/android/epst/SettingValueUpdater;->updateClearGPSResult(Z)V

    .line 159
    return-void
.end method

.method public updateOTKSLAuthResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 176
    sget-object v0, Lcom/htc/android/epst/Port;->mTempUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0, p1}, Lcom/htc/android/epst/SettingValueUpdater;->updateOTKSLAuthResult(Z)V

    .line 177
    return-void
.end method
