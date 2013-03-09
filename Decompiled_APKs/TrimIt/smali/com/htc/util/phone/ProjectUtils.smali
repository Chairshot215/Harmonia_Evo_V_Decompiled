.class public Lcom/htc/util/phone/ProjectUtils;
.super Ljava/lang/Object;
.source "ProjectUtils.java"


# static fields
.field public static final CID:Ljava/lang/String; = null

.field public static final EDIT_NUMBERR_B4_CALL:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final IS_CMCC:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_PROJECT_A0003:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_DIAL_WITH_DIALPAD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_KIDZONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_VT:Z = false

.field public static final VERSION_2_5:F = 2.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_3_0:F = 2.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_4_0:F = 2.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final mCurrentVersion:F

.field private static final mSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/util/phone/ProjectUtils;->IS_PROJECT_A0003:Z

    .line 62
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->computeSenseVersion()F

    move-result v0

    sput v0, Lcom/htc/util/phone/ProjectUtils;->mSenseVersion:F

    .line 65
    sget v0, Lcom/htc/util/phone/ProjectUtils;->mSenseVersion:F

    sput v0, Lcom/htc/util/phone/ProjectUtils;->mCurrentVersion:F

    .line 70
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->calculateCID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/phone/ProjectUtils;->CID:Ljava/lang/String;

    .line 75
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_0

    sget v0, Lcom/htc/util/phone/ProjectUtils;->mCurrentVersion:F

    const/high16 v3, 0x4000

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    .line 83
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    sput-boolean v0, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    .line 155
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    sput-boolean v0, Lcom/htc/util/phone/ProjectUtils;->IS_CMCC:Z

    .line 160
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_VT:Z

    sput-boolean v0, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    return-void

    :cond_2
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final calculatePropKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "cid"

    .prologue
    .line 134
    move-object v0, p0

    .line 135
    .local v0, resultKey:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    :cond_1
    return-object v2
.end method

.method private static computeSenseVersion()F
    .locals 4

    .prologue
    .line 106
    const/high16 v1, 0x3fc0

    .line 108
    .local v1, version:F
    const-string v2, "none"

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3fc0

    goto :goto_0
.end method

.method public static getSenseVersion()F
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/htc/util/phone/ProjectUtils;->mSenseVersion:F

    return v0
.end method

.method public static getVersion()F
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/htc/util/phone/ProjectUtils;->mCurrentVersion:F

    return v0
.end method
