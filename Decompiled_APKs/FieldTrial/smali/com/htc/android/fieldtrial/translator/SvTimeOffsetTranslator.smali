.class public Lcom/htc/android/fieldtrial/translator/SvTimeOffsetTranslator;
.super Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;
.source "SvTimeOffsetTranslator.java"


# instance fields
.field private LOG_ATG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/GPSInfoTranslator;-><init>()V

    .line 4
    const-string v0, "SvTimeOffsetTranslator"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/SvTimeOffsetTranslator;->LOG_ATG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 8
    .parameter "itemId"

    .prologue
    .line 7
    iget-object v4, p0, Lcom/htc/android/fieldtrial/translator/SvTimeOffsetTranslator;->mGpsInfo:Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;

    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->sv_time_offset()Ljava/lang/String;

    move-result-object v3

    .line 8
    .local v3, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 10
    .local v1, sValue:S
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-short v1, v4

    .line 14
    :goto_0
    int-to-float v2, v1

    .line 15
    .local v2, tmpVal:F
    const/high16 v4, 0x4180

    div-float/2addr v2, v4

    .line 16
    const-string v4, "%.4f chips"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 11
    .end local v2           #tmpVal:F
    :catch_0
    move-exception v0

    .line 12
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/android/fieldtrial/translator/SvTimeOffsetTranslator;->LOG_ATG:Ljava/lang/String;

    const-string v5, "(short) Integer.parseInt(value, 16).ERROR!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
