.class public Lcom/htc/android/epst/wimax/WiMaxProperty;
.super Ljava/lang/Object;
.source "WiMaxProperty.java"


# static fields
.field public static WIMAX_BAND_WIDTH:I

.field public static WIMAX_CFREQUENCY:I

.field public static WIMAX_COLD_BOOT_FLAG:I

.field public static WIMAX_ENTRY_CINR:I

.field public static WIMAX_ENTRY_DELAY:I

.field public static WIMAX_ENTRY_RX:I

.field public static WIMAX_EXIT_CINR:I

.field public static WIMAX_EXIT_DELAY:I

.field public static WIMAX_IDLE_SLEEP:I

.field public static WIMAX_MAC_ADDRESS:I

.field public static WIMAX_METHOD_TYPE:I

.field public static WIMAX_NAPIDS:I

.field public static WIMAX_NSPIDS:I

.field public static WIMAX_PROPERTY:[Ljava/lang/String;

.field public static WIMAX_PROPERTY_COUNT:I

.field public static WIMAX_REALM:I

.field public static WIMAX_SCAN_RATE:I

.field public static WIMAX_SCAN_RETRY:I

.field public static WIMAX_SCAN_TIMEOUT:I

.field public static WIMAX_SEQUANSD_PID:I

.field public static WIMAX_STANDBY_TIME:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    sput v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_STANDBY_TIME:I

    .line 64
    sput v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SCAN_RATE:I

    .line 65
    sput v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_MAC_ADDRESS:I

    .line 66
    sput v5, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_REALM:I

    .line 67
    sput v6, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_CFREQUENCY:I

    .line 68
    const/4 v0, 0x5

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_BAND_WIDTH:I

    .line 69
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_NAPIDS:I

    .line 70
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_NSPIDS:I

    .line 71
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SCAN_TIMEOUT:I

    .line 72
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SCAN_RETRY:I

    .line 73
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_IDLE_SLEEP:I

    .line 74
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_ENTRY_RX:I

    .line 75
    const/16 v0, 0xc

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_ENTRY_CINR:I

    .line 76
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_ENTRY_DELAY:I

    .line 77
    const/16 v0, 0xe

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_EXIT_CINR:I

    .line 78
    const/16 v0, 0xf

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_EXIT_DELAY:I

    .line 79
    const/16 v0, 0x10

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_COLD_BOOT_FLAG:I

    .line 80
    const/16 v0, 0x11

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_METHOD_TYPE:I

    .line 81
    const/16 v0, 0x12

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SEQUANSD_PID:I

    .line 82
    const/16 v0, 0x13

    sput v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY_COUNT:I

    .line 84
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "persist.wimax.STANDBY_TIME"

    aput-object v1, v0, v2

    const-string v1, "persist.wimax.SCAN_RATE"

    aput-object v1, v0, v3

    const-string v1, "persist.wimax.0.MAC"

    aput-object v1, v0, v4

    const-string v1, "persist.wimax.0.REALM"

    aput-object v1, v0, v5

    const-string v1, "persist.wimax.CenterFrequency"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "persist.wimax.Bandwidth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "persist.wimax.CAPL.0.NAP-ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "persist.wimax.0.H-NSP-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "persist.wimax.Scan_Timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "persist.wimax.Scan_Retry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "persist.wimax.Idle_Sleep"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "persist.wimax.Entry_RX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "persist.wimax.Entry_CINR"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "persist.wimax.Entry_Delay"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "persist.wimax.Exit_CINR"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "persist.wimax.Exit_Delay"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "persist.wimax.Cold_Boot_Flag"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "persist.wimax.0.METHOD-TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "wimax.sequansd.pid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
