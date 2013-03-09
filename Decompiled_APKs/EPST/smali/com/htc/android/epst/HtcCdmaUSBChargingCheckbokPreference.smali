.class public Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;
.super Landroid/preference/CheckBoxPreference;
.source "HtcCdmaUSBChargingCheckbokPreference.java"


# static fields
.field private static final EXEC_COMMAND:Ljava/lang/String; = "/system/xbin/su 0 /system/bin/chmod 666 "

.field private static final FILENAME:Ljava/lang/String; = "/sys/class/power_supply/battery/charger_control"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaUSBChargingCheckbokPreference"

.field private static final OFF_MODE:Ljava/lang/String; = "0\n"

.field private static final ON_MODE:Ljava/lang/String; = "1\n"

.field private static final OUTPUTFILENAME:Ljava/lang/String; = "/sys/class/power_supply/battery/charger_enabled"

.field public static final PREF_CDMA_USB_CHARGER_CTRL:Ljava/lang/String; = "HTC_CDMA_FEATURE"

.field public static final PREF_ENABLE_KEY:Ljava/lang/String; = "CHARGE_ON"

.field private static final USBCharging_Mode_OFF:I = 0x0

.field private static final USBCharging_Mode_ON:I = 0x1


# instance fields
.field private final DBG:Z

.field private mCurrentUSBChargeMode:I

.field private mFile:Ljava/io/File;

.field private mOutputFile:Ljava/io/File;

.field private mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v3, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->DBG:Z

    .line 29
    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mSettings:Landroid/content/SharedPreferences;

    .line 30
    iput v3, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mCurrentUSBChargeMode:I

    .line 93
    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    .line 94
    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mOutputFile:Ljava/io/File;

    .line 36
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/xbin/su 0 /system/bin/chmod 666 /sys/class/power_supply/battery/charger_control"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 37
    const-string v1, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v2, "modify file completely"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/charger_enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mOutputFile:Ljava/io/File;

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/charger_control"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    .line 50
    const-string v1, "HTC_CDMA_FEATURE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mSettings:Landroid/content/SharedPreferences;

    .line 51
    iget-object v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "CHARGE_ON"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mCurrentUSBChargeMode:I

    .line 53
    sget-boolean v1, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_USB_CHARGE_MODE_CHANGER:Z

    if-ne v1, v3, :cond_0

    .line 54
    iget v1, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mCurrentUSBChargeMode:I

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->toggle(I)V

    .line 56
    :cond_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 41
    const-string v1, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v2, "modify file fail (1)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    const-string v1, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v2, "modify file fail (2)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAccessible()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->isAccessible()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAccessible()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, mAccessible:Z
    iget-object v7, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "isAccessble() { %s file not exist.}"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 122
    .end local v5           #mAccessible:Z
    .local v6, mAccessible:I
    :goto_0
    return v6

    .line 105
    .end local v6           #mAccessible:I
    .restart local v5       #mAccessible:Z
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, fileReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 109
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v1           #fileReader:Ljava/io/FileReader;
    .local v2, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 111
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .local v4, fileWriter:Ljava/io/FileWriter;
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    :goto_1
    move v6, v5

    .line 122
    .restart local v6       #mAccessible:I
    goto :goto_0

    .line 113
    .end local v6           #mAccessible:I
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "isAccessible() { No access right to read : %s }"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "isAccessible() { No access right to write : %s }\n"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 113
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 70
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->isChecked()Z

    move-result v0

    .line 71
    .local v0, enabled:Z
    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->toggle(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->toggle(I)V

    goto :goto_0
.end method

.method public toggle(I)V
    .locals 14
    .parameter "USBCharging_Mode"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 132
    invoke-direct {p0}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->checkAccessible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 134
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "OoO Can not configure battery/charger_control"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v5, 0x0

    .line 139
    .local v5, fileWriter:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 140
    .local v1, bufferWriter:Ljava/io/BufferedWriter;
    const/4 v0, 0x0

    .line 143
    .local v0, bResult:Z
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 144
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .local v6, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 145
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .local v2, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 146
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 168
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO incorrect USBCharging_Mode - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :goto_1
    if-eqz v2, :cond_3

    .line 186
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 190
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 149
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :pswitch_0
    :try_start_4
    const-string v7, "0\n"

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 150
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO OFF_MODE - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->setChecked(Z)V

    .line 152
    const-string v7, "CHARGE_ON"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 154
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO OFF bresult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 172
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 174
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    :goto_2
    :try_start_5
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "toggle() {FileNotFoundException : %s }"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    if-eqz v1, :cond_0

    .line 186
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v3

    .line 189
    .local v3, e:Ljava/io/IOException;
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "OoO toggle() {close file to cause IOException : %s }"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :pswitch_1
    :try_start_7
    const-string v7, "1\n"

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 159
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO ON_MODE - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/HtcCdmaUSBChargingCheckbokPreference;->setChecked(Z)V

    .line 162
    const-string v7, "CHARGE_ON"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 164
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO ON bresult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 176
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 178
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    :goto_3
    :try_start_8
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "toggle() {IOException: %s }"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 182
    if-eqz v1, :cond_0

    .line 186
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 187
    :catch_3
    move-exception v3

    .line 189
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "OoO toggle() {close file to cause IOException : %s }"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    .line 189
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v8, "OoO toggle() {close file to cause IOException : %s }"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 190
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 182
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_2

    .line 186
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 190
    :cond_2
    :goto_5
    throw v7

    .line 187
    :catch_5
    move-exception v3

    .line 189
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "HtcCdmaUSBChargingCheckbokPreference"

    const-string v9, "OoO toggle() {close file to cause IOException : %s }"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 182
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .line 176
    :catch_6
    move-exception v3

    goto :goto_3

    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 172
    :catch_8
    move-exception v3

    goto/16 :goto_2

    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v5           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
