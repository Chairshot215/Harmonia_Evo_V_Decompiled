.class public Lcom/htc/android/fieldtrial/translator/CandidateTranslator_3;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CandidateTranslator_3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 7
    .parameter "itemId"

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 16
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;

    .line 17
    .local v2, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;
    const/4 v3, 0x0

    .line 18
    .local v3, value:I
    const-string v4, "NULL"

    .line 20
    .local v4, valueS:Ljava/lang/String;
    const/16 v5, 0x9

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->getPilotPN(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 25
    :goto_0
    return-object v4

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NULL"

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 32
    return-void
.end method
