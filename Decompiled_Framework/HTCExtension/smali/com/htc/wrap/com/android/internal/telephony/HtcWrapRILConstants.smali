.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapRILConstants;
.super Ljava/lang/Object;
.source "HtcWrapRILConstants.java"


# static fields
.field public static NETWORK_MODE_CDMA_AND_LTE_EVDO:I

.field public static RIL_CW_REGISTER_FAIL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapRILConstants;->NETWORK_MODE_CDMA_AND_LTE_EVDO:I

    const/16 v0, 0x12e

    sput v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapRILConstants;->RIL_CW_REGISTER_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
