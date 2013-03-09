.class public Lcom/htc/android/fieldtrial/translator/SlotCycleIndexTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "SlotCycleIndexTranslator.java"


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
    .locals 5
    .parameter "itemId"

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 16
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;

    .line 17
    .local v1, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_VERSION_NUMBER;->getSlotCycleIndex()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 18
    .local v2, value:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected sendRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, v2, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 24
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 25
    return-void
.end method
