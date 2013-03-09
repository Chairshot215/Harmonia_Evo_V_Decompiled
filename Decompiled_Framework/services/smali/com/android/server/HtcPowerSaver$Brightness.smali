.class final Lcom/android/server/HtcPowerSaver$Brightness;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Brightness"
.end annotation


# instance fields
.field private final DEFAULT_BRIGHTNESS_AUTO:I

.field private final DEFAULT_BRIGHTNESS_VALUE:I

.field private final DEFAULT_N_BRIGHTNESS:I

.field private final DEFAULT_N_BRIGHTNESS_AUTO:I

.field private final KEY_N_BRIGHTNESS:Ljava/lang/String;

.field private final KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x66

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "Brightness"

    const-string v3, "powersaver_screen_brightness"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.bright"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "powersaver_screen_brightness_settings_auto"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

    const-string v0, "powersaver_screen_brightness_settings"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

    iput v6, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_AUTO:I

    iput v7, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_VALUE:I

    const-string v0, "psaver_normal_brightness"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS:Ljava/lang/String;

    const-string v0, "psaver_normal_autobrightness"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

    iput v7, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS_AUTO:I

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setSysSettings(II)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSysSettings: mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "screen_brightness"

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSysSettings: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p1, :cond_0

    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSysSettings: manual value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at setSysSettings mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at setSysSettings value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 9

    const/16 v7, 0x66

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v6, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v5, v6}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v5, "HtcPowerSaver"

    const-string v6, "applyPowerSaverSettings: Get SharedPreferences fail."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v8

    :cond_0
    const-string v5, "screen_brightness"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "powersaver_screen_brightness_settings"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "powersaver_screen_brightness_settings_auto"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "HtcPowerSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyPowerSaverSettings: pValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sysValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    if-le v2, v4, :cond_1

    const-string v5, "HtcPowerSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyPowerSaverSettings: Change pValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-le v2, v4, :cond_2

    move v2, v4

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/HtcPowerSaver$Brightness;->setSysSettings(II)V

    goto :goto_0
.end method

.method protected restoreSystemSettings()I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v3, v4}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "HtcPowerSaver"

    const-string v4, "restoreSystemSettings: Get SharedPreferences fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    const-string v3, "psaver_normal_brightness"

    const/16 v4, 0x66

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "psaver_normal_autobrightness"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/HtcPowerSaver$Brightness;->setSysSettings(II)V

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v4, v5}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "HtcPowerSaver"

    const-string v5, "saveSystemSettings: Get SharedPreferences fail."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    const-string v4, "screen_brightness"

    const/16 v5, 0x66

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "psaver_normal_brightness"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "screen_brightness_mode"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "psaver_normal_autobrightness"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveSystemSettings: sysValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sysMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
