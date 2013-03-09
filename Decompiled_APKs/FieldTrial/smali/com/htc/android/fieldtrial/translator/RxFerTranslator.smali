.class public Lcom/htc/android/fieldtrial/translator/RxFerTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "RxFerTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

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
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->getRxFER()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v3, v4

    .line 15
    .local v3, value:F
    const/high16 v4, 0x42c8

    div-float v1, v3, v4

    .line 16
    .local v1, fvalue:F
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 27
    return-void
.end method
