.class public Lcom/htc/android/fieldtrial/Port;
.super Ljava/lang/Object;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/fieldtrial/Port$SendRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Port"

.field public static final NULL_DMCMD_ID:I = -0x1

.field public static final NULL_NVITEM_ID:I = -0x1

.field private static mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

.field private static mNewInstance:Lcom/htc/android/fieldtrial/Port;


# instance fields
.field private mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/android/fieldtrial/Port$SendRecord;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/Port$SendRecord;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/fieldtrial/Port;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mNewInstance:Lcom/htc/android/fieldtrial/Port;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/android/fieldtrial/Port;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/Port;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/Port;->mNewInstance:Lcom/htc/android/fieldtrial/Port;

    .line 25
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mNewInstance:Lcom/htc/android/fieldtrial/Port;

    return-object v0
.end method

.method private requestRead(IIILcom/htc/android/fieldtrial/translator/Translator;)V
    .locals 6
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 90
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/fieldtrial/Port;->requestRead(IILjava/lang/String;ILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 91
    return-void
.end method

.method private requestRead(IILjava/lang/String;ILcom/htc/android/fieldtrial/translator/Translator;)V
    .locals 8
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v0

    .line 62
    .local v0, dataObject:Lcom/htc/android/fieldtrial/internal/DataObject;
    const/4 v4, 0x0

    .line 63
    .local v4, status:I
    const/4 v2, 0x0

    .line 64
    .local v2, intIndex:I
    if-eqz p3, :cond_0

    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    :cond_0
    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/android/fieldtrial/internal/DataObject;->checkSendState(III)I

    move-result v3

    .line 69
    .local v3, result:I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 72
    :cond_1
    move v4, v3

    .line 73
    if-eqz p4, :cond_2

    .line 74
    invoke-virtual {p5, p4, v4}, Lcom/htc/android/fieldtrial/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 86
    .end local v0           #dataObject:Lcom/htc/android/fieldtrial/internal/DataObject;
    .end local v2           #intIndex:I
    .end local v3           #result:I
    .end local v4           #status:I
    :cond_2
    :goto_0
    return-void

    .line 78
    .restart local v0       #dataObject:Lcom/htc/android/fieldtrial/internal/DataObject;
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

    const-string v7, "in current send record"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v5, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iput-object p5, v5, Lcom/htc/android/fieldtrial/Port$SendRecord;->translator:Lcom/htc/android/fieldtrial/translator/Translator;

    .line 80
    sget-object v5, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iput p4, v5, Lcom/htc/android/fieldtrial/Port$SendRecord;->itemId:I

    .line 81
    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/android/fieldtrial/internal/DataObject;->generateReadCmdandSend(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0           #dataObject:Lcom/htc/android/fieldtrial/internal/DataObject;
    .end local v2           #intIndex:I
    .end local v3           #result:I
    .end local v4           #status:I
    :catch_0
    move-exception v1

    .line 84
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Port"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public Response(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 95
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget-object v0, v0, Lcom/htc/android/fieldtrial/Port$SendRecord;->translator:Lcom/htc/android/fieldtrial/translator/Translator;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "Port"

    const-string v1, "mCurrentSendRecord.translator == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "Port"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response current translator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget-object v2, v2, Lcom/htc/android/fieldtrial/Port$SendRecord;->translator:Lcom/htc/android/fieldtrial/translator/Translator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and item id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget v2, v2, Lcom/htc/android/fieldtrial/Port$SendRecord;->itemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget v0, v0, Lcom/htc/android/fieldtrial/Port$SendRecord;->itemId:I

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget-object v0, v0, Lcom/htc/android/fieldtrial/Port$SendRecord;->translator:Lcom/htc/android/fieldtrial/translator/Translator;

    sget-object v1, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    iget v1, v1, Lcom/htc/android/fieldtrial/Port$SendRecord;->itemId:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/android/fieldtrial/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 105
    :cond_1
    sget-object v0, Lcom/htc/android/fieldtrial/Port;->mCurrentSendRecord:Lcom/htc/android/fieldtrial/Port$SendRecord;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/Port$SendRecord;->recycle()V

    goto :goto_0
.end method

.method public clearStorage()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObject;->clear()V

    .line 113
    return-void
.end method

.method public enterPassWord(Lcom/htc/android/fieldtrial/SettingValueUpdater;Ljava/lang/String;)V
    .locals 3
    .parameter "updater"
    .parameter "pw"

    .prologue
    .line 34
    :try_start_0
    iput-object p1, p0, Lcom/htc/android/fieldtrial/Port;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    .line 35
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/android/fieldtrial/internal/DataObject;->sendMSL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Port"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPhoneInService()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObject;->isPhoneInService()Z

    move-result v0

    return v0
.end method

.method public passWordResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/fieldtrial/Port;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    invoke-interface {v0, p1}, Lcom/htc/android/fieldtrial/SettingValueUpdater;->updateAuthResult(Z)V

    .line 43
    return-void
.end method

.method public requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V
    .locals 1
    .parameter "cmdId"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/android/fieldtrial/Port;->requestRead(IIILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 55
    return-void
.end method

.method public requestNvCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V
    .locals 1
    .parameter "nvitemId"
    .parameter "itemId"
    .parameter "translator"

    .prologue
    .line 50
    const/16 v0, 0x26

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/android/fieldtrial/Port;->requestRead(IIILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 51
    return-void
.end method

.method public resetAllRecordState()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/DataObject;->resetAllRecordState()V

    .line 30
    return-void
.end method
