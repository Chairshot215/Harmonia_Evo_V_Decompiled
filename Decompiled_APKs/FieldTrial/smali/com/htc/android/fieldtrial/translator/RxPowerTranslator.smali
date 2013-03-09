.class public Lcom/htc/android/fieldtrial/translator/RxPowerTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "RxPowerTranslator.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 9
    const-string v0, "RxPowerTranslator"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/RxPowerTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 8
    .parameter "itemId"

    .prologue
    .line 12
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 13
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v4, 0xcd

    invoke-virtual {v0, v4}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;

    .line 14
    .local v2, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;
    const/4 v3, 0x0

    .line 16
    .local v3, value:S
    :try_start_0
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->getRxPower()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-short v3, v4

    .line 24
    :goto_0
    const-string v4, "%d dbm"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/android/fieldtrial/translator/RxPowerTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v5, "(short)Integer.parseInt(structure.getRxPower(), 16).ERROR!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 30
    return-void
.end method
