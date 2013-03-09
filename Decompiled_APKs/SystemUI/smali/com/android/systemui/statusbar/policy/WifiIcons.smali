.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x4t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x1t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
