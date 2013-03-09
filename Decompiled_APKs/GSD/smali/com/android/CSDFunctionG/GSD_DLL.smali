.class public Lcom/android/CSDFunctionG/GSD_DLL;
.super Landroid/app/Activity;
.source "GSD_DLL.java"


# static fields
.field public static GsensorXmax:Ljava/lang/String; = null

.field public static GsensorXmin:Ljava/lang/String; = null

.field public static GsensorYmax:Ljava/lang/String; = null

.field public static GsensorYmin:Ljava/lang/String; = null

.field public static GsensorZmax:Ljava/lang/String; = null

.field public static GsensorZmin:Ljava/lang/String; = null

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field static final TAG:Ljava/lang/String; = "CSD_DLL"

.field public static battery_check_level:I

.field public static delete_fileFlag:Ljava/lang/Boolean;

.field public static f_TXTSize:F

.field public static flashlight_path:Ljava/lang/String;

.field static mLEDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLED_NextStep:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLED_TestStep:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLED_setresult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLED_setvalue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "/sys/class/leds/flashlight/brightness"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setvalue:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setresult:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_NextStep:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_TestStep:Ljava/util/HashMap;

    .line 31
    const/high16 v0, 0x41a0

    sput v0, Lcom/android/CSDFunctionG/GSD_DLL;->f_TXTSize:F

    .line 34
    const-string v0, "1.57"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorXmax:Ljava/lang/String;

    const-string v0, "-1.57"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorXmin:Ljava/lang/String;

    .line 35
    const-string v0, "1.57"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorYmax:Ljava/lang/String;

    const-string v0, "-1.57"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorYmin:Ljava/lang/String;

    .line 36
    const-string v0, "-7.85"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorZmax:Ljava/lang/String;

    const-string v0, "-11.75"

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorZmin:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->delete_fileFlag:Ljava/lang/Boolean;

    .line 40
    const/16 v0, 0x46

    sput v0, Lcom/android/CSDFunctionG/GSD_DLL;->battery_check_level:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static SetLED(Ljava/lang/String;)V
    .locals 4
    .parameter "LEDstr"

    .prologue
    .line 171
    sget-object v3, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setvalue:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, getLEDmap_value:Ljava/lang/String;
    sget-object v3, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, Led_Path:Ljava/lang/String;
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->TurnoffAllLEDs()V

    .line 175
    invoke-static {v0}, Lcom/android/CSDFunctionG/GSD_DLL;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, state:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetLEDNextStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "LEDstr"

    .prologue
    .line 160
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_NextStep:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static SetLEDResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "LEDstr"

    .prologue
    .line 164
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setresult:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static TurnoffAllLEDs()V
    .locals 4

    .prologue
    .line 149
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 150
    .local v0, LED_collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 151
    .local v1, LED_iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public static changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/xbin/su 0 /system/bin/chmod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSDaemon;->runCommand(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static changeFlashlight(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 89
    sget-object v1, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSD_DLL;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, state:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 91
    sget-object v1, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 93
    sget-object v1, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get_LEDTestString(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 134
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_TestStep:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getalltestitem()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, strListalltestitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Audio Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "Backlight Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "Bluetooth Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "Button Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "Charger Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "Flashlight Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "G-Sensor Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "Headset Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "LED Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "Light-Sensor Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "Line Drawing Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "P-Sensor Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "SD card +Camera Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "Vibrator Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "Wi-Fi Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public static getmoreitemtest()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, strListmoretestitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Battery Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "Device Information"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "Factory data reset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "AGPS Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "Hardware Information"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "Live call Test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "Safe mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "Software Version"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "Line\tDrawing\ttest (No time-limit)"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public static initFlashlight()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    const-string v1, "666"

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->flashlight_path:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSD_DLL;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static initLED()V
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    const-string v1, "Orange LED"

    const-string v2, "/sys/class/leds/amber/brightness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    const-string v1, "Green LED"

    const-string v2, "/sys/class/leds/green/brightness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    const-string v1, "AP Key LED"

    const-string v2, "/sys/class/leds/button-backlight/brightness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setvalue:Ljava/util/HashMap;

    const-string v1, "Orange LED"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setvalue:Ljava/util/HashMap;

    const-string v1, "Green LED"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setvalue:Ljava/util/HashMap;

    const-string v1, "AP Key LED"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setresult:Ljava/util/HashMap;

    const-string v1, "Orange LED"

    const-string v2, "It passed the test if the Orange LED turns \'ON\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setresult:Ljava/util/HashMap;

    const-string v1, "Green LED"

    const-string v2, "It passed the test if the Green LED turns \'ON\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_setresult:Ljava/util/HashMap;

    const-string v1, "AP Key LED"

    const-string v2, "It passed the test if the LED of AP key turns \'ON\' \n(HOME, MENU, BACK, SEARCH)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_TestStep:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Orange LED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_TestStep:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Green LED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_TestStep:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP Key LED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public static initLED_Instruction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_NextStep:Ljava/util/HashMap;

    const-string v1, "Orange LED"

    const-string v2, "Press back key to next test"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_NextStep:Ljava/util/HashMap;

    const-string v1, "Green LED"

    const-string v2, "Press \"Orange LED\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/CSDFunctionG/GSD_DLL;->mLED_NextStep:Ljava/util/HashMap;

    const-string v1, "AP Key LED"

    const-string v2, "Press \"Green LED\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "Press \"AP key LED\""

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 249
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {p0, v0, v1}, Lcom/android/CSDFunctionG/GSD_DLL;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "bReadAll"
    .parameter "max_buf_length"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 211
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    if-eqz p1, :cond_1

    .line 214
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 215
    .local v4, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 217
    if-nez v3, :cond_0

    .line 218
    move-object v3, v4

    goto :goto_0

    .line 220
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 225
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_2
    move-object v1, v2

    .line 237
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_3

    .line 238
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    :cond_3
    :goto_2
    const-string v5, "CSD_DLL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAttrFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v3

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "CSD_DLL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_1

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 228
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static set_LEDfilemode()V
    .locals 4

    .prologue
    .line 138
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->mLEDMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 139
    .local v0, LED_collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, LED_iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "666"

    invoke-static {v2, v3}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 187
    const-string v2, "CSD_DLL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeAttrFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 204
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 197
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CSD_DLL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
