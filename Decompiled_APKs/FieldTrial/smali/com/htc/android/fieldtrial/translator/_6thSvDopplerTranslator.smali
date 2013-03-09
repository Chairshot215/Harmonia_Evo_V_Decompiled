.class public Lcom/htc/android/fieldtrial/translator/_6thSvDopplerTranslator;
.super Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;
.source "_6thSvDopplerTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 6
    .parameter "itemId"

    .prologue
    .line 7
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/_6thSvDopplerTranslator;->mGpsInfo:Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_6()Ljava/lang/String;

    move-result-object v1

    .line 10
    .local v1, value:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-short v0, v2

    .line 11
    .local v0, tmpVal:S
    div-int/lit8 v2, v0, 0x5

    int-to-short v0, v2

    .line 12
    const-string v2, "%d HZ"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
