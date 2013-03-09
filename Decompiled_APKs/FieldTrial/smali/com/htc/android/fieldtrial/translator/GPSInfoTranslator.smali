.class public abstract Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "GPSInfoTranslator.java"


# instance fields
.field dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

.field mGpsInfo:Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 10
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;->dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    .line 11
    iget-object v0, p0, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;->dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;->mGpsInfo:Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;

    return-void
.end method


# virtual methods
.method protected abstract getSettingValue(I)Ljava/lang/String;
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 19
    return-void
.end method
