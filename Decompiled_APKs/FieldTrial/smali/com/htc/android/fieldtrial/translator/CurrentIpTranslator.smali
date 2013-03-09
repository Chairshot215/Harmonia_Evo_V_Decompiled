.class public Lcom/htc/android/fieldtrial/translator/CurrentIpTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CurrentIpTranslator.java"


# static fields
.field public static final IP_SEPARATOR:Ljava/lang/String; = "."


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
    .locals 4
    .parameter "itemId"

    .prologue
    .line 13
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 14
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v3, 0xdf

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;

    .line 15
    .local v2, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/DM_HDR_RX_INFO;->getCurrentIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 22
    return-void
.end method
