.class public Lcom/htc/android/fieldtrial/translator/HdrEVDOStateTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "HdrEVDOStateTranslator.java"


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
    .locals 6
    .parameter "itemId"

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 15
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v4, 0xdf

    invoke-virtual {v0, v4}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;

    .line 16
    .local v3, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    const v5, 0x7f050014

    invoke-virtual {v4, v5}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, hdrState:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->getEVDOState()I

    move-result v2

    .line 18
    .local v2, index:I
    if-ltz v2, :cond_0

    const/4 v4, 0x3

    if-gt v2, v4, :cond_0

    .line 19
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    const v5, 0x7f040006

    invoke-virtual {v4, v5}, Lcom/htc/android/fieldtrial/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v2

    .line 21
    :cond_0
    return-object v1
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 27
    return-void
.end method
