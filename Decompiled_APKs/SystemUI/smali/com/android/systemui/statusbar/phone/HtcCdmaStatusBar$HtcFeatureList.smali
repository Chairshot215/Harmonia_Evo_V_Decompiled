.class public Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcFeatureList"
.end annotation


# static fields
.field public static final FEATURE_911ONLY_HIDE_GPSONE_ICON:Z

.field public static final FEATURE_GPS_ONE_NOTIFICATION_ICON_TYPE1:Z

.field public static final FEATURE_SUPPORT_LOCATION_SERVICE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_GPS_ONE_NOTIFICATION_ICON_TYPE1:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-eq v0, v3, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-ne v0, v3, :cond_3

    :goto_2
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_911ONLY_HIDE_GPSONE_ICON:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
