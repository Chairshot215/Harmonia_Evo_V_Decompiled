.class public Lcom/android/systemui/statusbar/phone/StatusBarTelephony;
.super Ljava/lang/Object;
.source "StatusBarTelephony.java"


# static fields
.field public static final EXTRA_UNREGISTERED_CODE:Ljava/lang/String; = "unregistered_icc_code"

.field public static final FEATURE_CT_CUSTOMIZATION:Z

.field static PROPERTY_SIM_NUMERIC_TYPES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarTelephony;->FEATURE_CT_CUSTOMIZATION:Z

    const-string v0, "gsm.sim.numeric.types"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarTelephony;->PROPERTY_SIM_NUMERIC_TYPES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CT_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static enableRUIMCard()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    return v0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    return v0
.end method
