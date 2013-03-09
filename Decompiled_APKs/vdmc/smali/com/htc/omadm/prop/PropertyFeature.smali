.class public Lcom/htc/omadm/prop/PropertyFeature;
.super Ljava/lang/Object;
.source "PropertyFeature.java"


# static fields
.field public static final ENABLE_BACKGROUND_UI:Z

.field public static final ENABLE_FUMO:Z

.field public static final ENABLE_LAWMO:Z

.field public static final ENABLE_WimaxDynamic:Z

.field public static final IS_BOOST_PROJECT:Z

.field public static final IS_EXPRESS_DEVICE:Z

.field public static final IS_JEWEL_DEVICE:Z

.field public static final IS_KINDOM_DEVICE:Z

.field public static final IS_SPRINT_PROJECT:Z

.field public static final IS_VM_PROJECT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x49

    const/16 v5, 0x50

    const/16 v4, 0x94

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    .line 9
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_BOOST_PROJECT:Z

    .line 12
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_VM_PROJECT:Z

    .line 15
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    .line 18
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_JEWEL_DEVICE:Z

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_EXPRESS_DEVICE:Z

    .line 27
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_8

    :cond_1
    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_LAWMO:Z

    .line 33
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_9

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_WimaxDynamic:Z

    .line 36
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_a

    :goto_8
    sput-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    return-void

    :cond_2
    move v0, v2

    .line 6
    goto :goto_0

    :cond_3
    move v0, v2

    .line 9
    goto :goto_1

    :cond_4
    move v0, v2

    .line 12
    goto :goto_2

    :cond_5
    move v0, v2

    .line 15
    goto :goto_3

    :cond_6
    move v0, v2

    .line 18
    goto :goto_4

    :cond_7
    move v0, v2

    .line 21
    goto :goto_5

    :cond_8
    move v0, v2

    .line 27
    goto :goto_6

    :cond_9
    move v0, v2

    .line 33
    goto :goto_7

    :cond_a
    move v1, v2

    .line 36
    goto :goto_8
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
