.class public Lcom/htc/android/fieldtrial/translator/TimeStampTranslator;
.super Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;
.source "TimeStampTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 2
    .parameter "itemId"

    .prologue
    .line 9
    iget-object v1, p0, Lcom/htc/android/fieldtrial/translator/TimeStampTranslator;->mGpsInfo:Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->time_stamp()Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->time_jul_from_secs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
