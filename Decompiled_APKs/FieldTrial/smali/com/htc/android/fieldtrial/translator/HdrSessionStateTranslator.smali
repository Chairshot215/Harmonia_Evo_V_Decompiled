.class public Lcom/htc/android/fieldtrial/translator/HdrSessionStateTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "HdrSessionStateTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 8
    .parameter "itemId"

    .prologue
    const/4 v5, 0x4

    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v2

    .line 15
    .local v2, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v4, 0xdf

    invoke-virtual {v2, v4}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;

    .line 19
    .local v3, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;
    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->getHdrSessionState()I

    move-result v1

    .line 20
    .local v1, HDRSectionNum:I
    if-ltz v1, :cond_0

    if-le v1, v5, :cond_1

    .line 21
    :cond_0
    const-string v4, "%d=%d=%d=%d="

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, HDRSection:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 23
    .end local v0           #HDRSection:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    const v5, 0x7f040003

    invoke-virtual {v4, v5}, Lcom/htc/android/fieldtrial/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->getHdrSessionState()I

    move-result v5

    aget-object v0, v4, v5

    .restart local v0       #HDRSection:Ljava/lang/String;
    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 32
    return-void
.end method
