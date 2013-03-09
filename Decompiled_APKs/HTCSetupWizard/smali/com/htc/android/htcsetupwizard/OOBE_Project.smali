.class public Lcom/htc/android/htcsetupwizard/OOBE_Project;
.super Ljava/lang/Object;
.source "OOBE_Project.java"


# static fields
.field public static final isAMX:Z

.field public static final isATT:Z

.field public static final isAsia:Z

.field public static final isBM:Z

.field public static final isBrightStar:Z

.field public static final isCT:Z

.field public static final isGeneric:Z

.field public static final isSprint:Z

.field public static final isTMO:Z

.field public static final isTelcel:Z

.field public static final isUSC:Z

.field public static final isVMUS:Z

.field public static final isVerizon:Z

.field public static final isVodaFone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isGeneric:Z

    .line 16
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isAsia:Z

    .line 20
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isATT:Z

    .line 24
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xe1

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isAMX:Z

    .line 28
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isBrightStar:Z

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isBM:Z

    .line 36
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isCT:Z

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isSprint:Z

    .line 44
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isTMO:Z

    .line 49
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd9

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isTelcel:Z

    .line 53
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isUSC:Z

    .line 57
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVerizon:Z

    .line 61
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVodaFone:Z

    .line 65
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_d

    :goto_d
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVMUS:Z

    return-void

    :cond_0
    move v0, v2

    .line 12
    goto :goto_0

    :cond_1
    move v0, v2

    .line 16
    goto :goto_1

    :cond_2
    move v0, v2

    .line 20
    goto :goto_2

    :cond_3
    move v0, v2

    .line 24
    goto :goto_3

    :cond_4
    move v0, v2

    .line 28
    goto :goto_4

    :cond_5
    move v0, v2

    .line 32
    goto :goto_5

    :cond_6
    move v0, v2

    .line 36
    goto :goto_6

    :cond_7
    move v0, v2

    .line 40
    goto :goto_7

    :cond_8
    move v0, v2

    .line 44
    goto :goto_8

    :cond_9
    move v0, v2

    .line 49
    goto :goto_9

    :cond_a
    move v0, v2

    .line 53
    goto :goto_a

    :cond_b
    move v0, v2

    .line 57
    goto :goto_b

    :cond_c
    move v0, v2

    .line 61
    goto :goto_c

    :cond_d
    move v1, v2

    .line 65
    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
