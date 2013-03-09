.class public Lcom/android/htcdialer/util/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/util/BuildUtils$Customization;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final SENSE_LANDSCAPE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SENSE_TABLET:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SENSE_VISION:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BuildUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    .line 13
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    .line 15
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils;->getSenseVersion()F

    move-result v0

    sput v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_VISION:F

    return-void

    :cond_0
    move v0, v2

    .line 11
    goto :goto_0

    :cond_1
    move v1, v2

    .line 13
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static getSenseVersion()F
    .locals 5

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, vision:F
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "BuildUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSenseVersion(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
