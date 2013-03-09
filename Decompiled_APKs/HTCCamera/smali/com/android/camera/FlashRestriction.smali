.class public Lcom/android/camera/FlashRestriction;
.super Ljava/lang/Object;
.source "FlashRestriction.java"


# static fields
.field private static final BATTERY_CAPACITY_FLAG:B = 0x1t

.field private static BATTERY_CAPACITY_LIMIT:I = 0x0

.field private static final BATTERY_CAPACITY_LIMIT_PATH:Ljava/lang/String; = "/sys/camera_led_status/low_cap_limit"

.field private static final BATTERY_CAPACITY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final BATTERY_TEMPERATURE_FLAG:B = 0x2t

.field private static BATTERY_TEMPERATURE_LIMIT:I = 0x0

.field private static final BATTERY_TEMPERATURE_LIMIT_PATH:Ljava/lang/String; = "/sys/camera_led_status/low_temp_limit"

.field private static final BATTERY_TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_temp"

.field private static final HOTSPOT_STATUS_FLAG:B = 0x10t

.field private static final HOTSPOT_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field private static final NO_LIMIT_FLAG:B = 0x0t

.field private static final RIL_STATUS_FLAG:B = 0x8t

.field private static final RIL_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_ril_status"

.field private static final TAG:Ljava/lang/String; = "FlashRestriction"

.field private static final WIMAX_STATUS_FLAG:B = 0x4t

.field private static final WIMAX_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_wimax_status"


# instance fields
.field private mDisableFlash:B

.field private mFileObserver_BatCap:Landroid/os/FileObserver;

.field private mFileObserver_BatTemp:Landroid/os/FileObserver;

.field private mFileObserver_HotSpot:Landroid/os/FileObserver;

.field private mFileObserver_RIL:Landroid/os/FileObserver;

.field private mFileObserver_Wimax:Landroid/os/FileObserver;

.field private mIsLimitBatCap:B

.field private mIsLimitBatTemp:B

.field private mIsLimitHotSpot:B

.field private mIsLimitRIL:B

.field private mIsLimitWimax:B

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    const/16 v0, 0xf

    sput v0, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-static {}, Lcom/android/camera/FlashRestriction;->initBatteryLimit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FlashRestriction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkHotSpotStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FlashRestriction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkRILStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/FlashRestriction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkWimaxStatus()V

    return-void
.end method

.method private checkHotSpotStatus()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    xor-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    const-string v3, "FlashRestriction"

    const-string v4, "enable hot spot, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "disable hot spot, restore flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private checkRILStatus()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    xor-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    const-string v3, "FlashRestriction"

    const-string v4, "phone incoming, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "no phone incoming, restore flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private checkWimaxStatus()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    xor-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    const-string v3, "FlashRestriction"

    const-string v4, "use wimax, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "no use wimax, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static initBatteryLimit()V
    .locals 4

    const-string v1, "/sys/camera_led_status/low_temp_limit"

    invoke-static {v1}, Lcom/android/camera/Util;->getIntegerFromFile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    sput v1, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new Battery Temp limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "/sys/camera_led_status/low_cap_limit"

    invoke-static {v1}, Lcom/android/camera/Util;->getIntegerFromFile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new Battery Capacity limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default Battery Temp limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default Battery Capacity limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initDisableFlash()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    const-string v0, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    const-string v0, "FlashRestriction"

    const-string v1, "enable hot spot, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    const-string v0, "FlashRestriction"

    const-string v1, "phone incoming, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    const-string v0, "FlashRestriction"

    const-string v1, "use wimax, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "/sys/class/power_supply/battery/batt_temp"

    sget v1, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    const-string v0, "FlashRestriction"

    const-string v1, "battery temperature lower, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "/sys/class/power_supply/battery/capacity"

    sget v1, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v2, :cond_4

    iput-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    const-string v0, "FlashRestriction"

    const-string v1, "battery capacity lower, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    invoke-virtual {p0}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    :cond_5
    return-void
.end method

.method private isChecked(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecked() - File does not exist!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v2, 0x0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    if-nez v2, :cond_3

    const-string v6, "FlashRestriction"

    const-string v7, "isChecked() - BufferedReader input = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x31

    if-eq v6, v7, :cond_1

    :cond_4
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecked() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0
.end method

.method private isLower(Ljava/lang/String;I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - File does not exist!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v2, 0x0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    if-nez v2, :cond_3

    const-string v6, "FlashRestriction"

    const-string v7, "isLower() - BufferedReader input = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-lt v6, p2, :cond_1

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - parse integer failed!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_4
    const-string v4, "FlashRestriction"

    const-string v6, "isLower() - line == null"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0
.end method

.method private startFileObserver()V
    .locals 4

    const-string v1, "FlashRestriction"

    const-string v2, "startFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/FlashRestriction$1;

    const-string v2, "/sys/camera_led_status/led_hotspot_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$1;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/camera/FlashRestriction$2;

    const-string v2, "/sys/camera_led_status/led_ril_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$2;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/FlashRestriction$3;

    const-string v2, "/sys/camera_led_status/led_wimax_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$3;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/FlashRestriction$4;

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$4;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    :cond_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/camera/FlashRestriction$5;

    const-string v2, "/sys/class/power_supply/battery/capacity"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$5;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    :cond_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    const-string v1, "FlashRestriction"

    const-string v2, "startFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_HotSpot.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_RIL.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_Wimax.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatTemp.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatCap.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private stopFileObserver()V
    .locals 3

    const-string v1, "FlashRestriction"

    const-string v2, "stopFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    if-eqz v1, :cond_4

    :try_start_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    const-string v1, "FlashRestriction"

    const-string v2, "stopFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_HotSpot.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_RIL.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_Wimax.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatTemp.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatCap.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private updateFlashState()V
    .locals 2

    const/16 v1, 0x2c

    iget-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public checkBatteryCapacity()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    if-ne v5, v3, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "/sys/class/power_supply/battery/capacity"

    sget v6, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v5, v6}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    xor-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    const-string v3, "FlashRestriction"

    const-string v4, "battery capacity lower, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "battery capacity not lower, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public checkBatteryTemperature()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "/sys/class/power_supply/battery/batt_temp"

    sget v6, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-direct {p0, v5, v6}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    xor-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    const-string v3, "FlashRestriction"

    const-string v4, "battery temperature lower, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "battery temperature not lower, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public checkLowPower()Z
    .locals 4

    const-string v1, "/sys/class/power_supply/battery/capacity"

    sget v2, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLowPower - isLowPower is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getRestrictionHint()I
    .locals 3

    const v0, 0x7f0a003a

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    const v0, 0x7f0a003c

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    and-int/2addr v1, v2

    if-lez v1, :cond_2

    const v0, 0x7f0a003b

    goto :goto_0

    :cond_2
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    and-int/2addr v1, v2

    if-lez v1, :cond_3

    const v0, 0x7f0a003e

    goto :goto_0

    :cond_3
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isShowFlashLightHint()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0a003d

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFlashRestriction(Lcom/android/camera/HTCCamera;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->initDisableFlash()V

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->startFileObserver()V

    return-void
.end method

.method public isDisableFlash()Z
    .locals 1

    iget-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseFlashRestriction()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->stopFileObserver()V

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    return-void
.end method
