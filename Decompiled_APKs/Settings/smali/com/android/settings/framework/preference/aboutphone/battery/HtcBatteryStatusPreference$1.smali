.class synthetic Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;
.super Ljava/lang/Object;
.source "HtcBatteryStatusPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

.field static final synthetic $SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->values()[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->DISCHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->FULL:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->NOT_CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 91
    :goto_3
    invoke-static {}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->values()[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

    :try_start_4
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->AC:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->USB:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->WIRELESS:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 86
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
