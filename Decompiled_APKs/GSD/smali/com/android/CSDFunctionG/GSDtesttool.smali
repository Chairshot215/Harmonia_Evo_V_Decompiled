.class public Lcom/android/CSDFunctionG/GSDtesttool;
.super Ljava/lang/Object;
.source "GSDtesttool.java"


# static fields
.field static BATlogSD:Ljava/lang/String; = null

.field static BATlogSQLITE:Ljava/lang/String; = null

.field public static final LCD_INDEX_MAIN:I = 0x0

.field public static final LCD_INDEX_SECOND:I = 0x1

.field private static LCD_TIMEOUT:I = 0x0

.field public static final LIB_DIR:Ljava/lang/String; = "/dev/mtd/"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field static final TAG:Ljava/lang/String; = "CSD_GSDtesttool"

.field static funlogSD:Ljava/lang/String;

.field static funlogSQLITE:Ljava/lang/String;

.field private static mOldAutomatic:I

.field private static mOldBrightness:I

.field private static mService:Landroid/os/IHardwareService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "/sdcard/functiontestlog.txt"

    sput-object v0, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSD:Ljava/lang/String;

    .line 23
    const-string v0, "/data/functiontestlog.txt"

    sput-object v0, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSQLITE:Ljava/lang/String;

    .line 24
    const-string v0, "/sdcard/gsdbatterylog.txt"

    sput-object v0, Lcom/android/CSDFunctionG/GSDtesttool;->BATlogSD:Ljava/lang/String;

    .line 25
    const-string v0, "/data/gsdbatterylog.txt"

    sput-object v0, Lcom/android/CSDFunctionG/GSDtesttool;->BATlogSQLITE:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/CSDFunctionG/GSDtesttool;->LCD_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BLSet(II)Z
    .locals 7
    .parameter "lcdbl_index"
    .parameter "lcdbl_brightness"

    .prologue
    const/4 v3, 0x0

    .line 94
    packed-switch p0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    return v3

    .line 104
    :pswitch_1
    const/4 v1, 0x0

    .line 105
    .local v1, mBrightness:I
    const/16 v0, 0xeb

    .line 108
    .local v0, brightnessrange:I
    int-to-double v3, p1

    const-wide v5, 0x3f847ae147ae147bL

    mul-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 111
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 113
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v2, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    const-string v3, "CSD_GSDtesttool"

    const-string v4, "BL set ok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v3, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static BLTestDeinit(Landroid/app/Activity;)Z
    .locals 5
    .parameter "mAct"

    .prologue
    .line 73
    sget-object v2, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 89
    :goto_0
    return v2

    .line 74
    :cond_0
    const-string v2, "CSD_GSDtesttool"

    const-string v3, "BLTestDeinit OldBrightness "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 78
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_1

    .line 79
    sget v2, Lcom/android/CSDFunctionG/GSDtesttool;->mOldBrightness:I

    add-int/lit8 v2, v2, 0xa

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 80
    sget v2, Lcom/android/CSDFunctionG/GSDtesttool;->mOldBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    sget v4, Lcom/android/CSDFunctionG/GSDtesttool;->mOldAutomatic:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "CSD_GSDtesttool"

    const-string v3, "BL set OldBrightness fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static BLTestInit(Landroid/app/Activity;)Z
    .locals 4
    .parameter "mAct"

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v1, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    if-nez v1, :cond_0

    .line 45
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/CSDFunctionG/GSDtesttool;->mOldBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/CSDFunctionG/GSDtesttool;->mOldAutomatic:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    const-string v1, "CSD_GSDtesttool"

    const-string v2, "BL set SCREEN_BRIGHTNESS_MODE_MANUAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x1

    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    sput v1, Lcom/android/CSDFunctionG/GSDtesttool;->mOldBrightness:I

    goto :goto_0

    .line 60
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 62
    .restart local v0       #snfe:Landroid/provider/Settings$SettingNotFoundException;
    sput v3, Lcom/android/CSDFunctionG/GSDtesttool;->mOldAutomatic:I

    goto :goto_1
.end method

.method public static ScreenOutDeinit(Landroid/app/Activity;)Z
    .locals 5
    .parameter "mAct"

    .prologue
    const/4 v1, 0x0

    .line 205
    sget-object v2, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/CSDFunctionG/GSDtesttool;->LCD_TIMEOUT:I

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    sget v4, Lcom/android/CSDFunctionG/GSDtesttool;->LCD_TIMEOUT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static ScreenOutInit(Landroid/app/Activity;)Z
    .locals 6
    .parameter "mAct"

    .prologue
    const/4 v2, 0x0

    .line 181
    sget-object v3, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    if-nez v3, :cond_0

    .line 182
    const-string v3, "hardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v3

    sput-object v3, Lcom/android/CSDFunctionG/GSDtesttool;->mService:Landroid/os/IHardwareService;

    .line 184
    :cond_0
    sget v3, Lcom/android/CSDFunctionG/GSDtesttool;->LCD_TIMEOUT:I

    if-nez v3, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/CSDFunctionG/GSDtesttool;->LCD_TIMEOUT:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    const-string v2, "CSD_GSDtesttool"

    const-string v3, "Screen time out Init ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e1:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .line 196
    .end local v1           #e1:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static deletelogfile()V
    .locals 6

    .prologue
    .line 164
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSD:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSQLITE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/android/CSDFunctionG/GSDtesttool;->BATlogSQLITE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/android/CSDFunctionG/GSDtesttool;->BATlogSD:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 167
    .local v2, needDeleteFiles:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 168
    new-instance v1, Ljava/io/File;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, needDeleteFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 172
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-string v3, "CSD_GSDtesttool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t delete file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const-string v3, "CSD_GSDtesttool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ok"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v1           #needDeleteFile:Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 6
    .parameter "strCmd"

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string v1, "CSD_GSDtesttool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/mtd/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 228
    goto :goto_0
.end method

.method public static setlogtitle(Ljava/lang/String;)V
    .locals 4
    .parameter "sAppLabel"

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 154
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 156
    .local v1, month:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static writeDataToFile(Ljava/lang/String;)V
    .locals 4
    .parameter "srcBuffer"

    .prologue
    .line 128
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 129
    .local v1, buf:[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 132
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSD:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, LogFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 134
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v0           #LogFile:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/CSDFunctionG/GSDtesttool;->funlogSQLITE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v0       #LogFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 142
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .end local v0           #LogFile:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v3

    goto :goto_1

    .line 137
    :catch_1
    move-exception v3

    goto :goto_0
.end method
