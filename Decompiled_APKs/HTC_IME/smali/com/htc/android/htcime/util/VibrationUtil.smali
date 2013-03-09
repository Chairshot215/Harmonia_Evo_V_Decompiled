.class public Lcom/htc/android/htcime/util/VibrationUtil;
.super Ljava/lang/Object;
.source "VibrationUtil.java"


# static fields
.field private static mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/VibrationUtil;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VibrateExceptionOccured()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/VibrationUtil;->mVibrator:Landroid/os/Vibrator;

    .line 88
    return-void
.end method

.method public static getDeviceVibrationMS(I)I
    .locals 2
    .parameter "defaultMS"

    .prologue
    const/16 v0, 0x23

    .line 99
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 109
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :sswitch_0
    move p0, v0

    .line 100
    goto :goto_0

    .line 101
    :sswitch_1
    const/16 p0, 0x18

    goto :goto_0

    .line 102
    :sswitch_2
    const/16 p0, 0x20

    goto :goto_0

    :sswitch_3
    move p0, v0

    .line 103
    goto :goto_0

    .line 104
    :sswitch_4
    const/16 p0, 0x25

    goto :goto_0

    .line 105
    :sswitch_5
    const/16 p0, 0x19

    goto :goto_0

    .line 106
    :sswitch_6
    const/16 p0, 0x28

    goto :goto_0

    .line 107
    :sswitch_7
    const/16 p0, 0x1c

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x3e -> :sswitch_1
        0x50 -> :sswitch_2
        0x7b -> :sswitch_4
        0x7e -> :sswitch_3
        0x89 -> :sswitch_5
        0x8a -> :sswitch_7
        0xad -> :sswitch_6
    .end sparse-switch
.end method

.method public static getVibrator()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/android/htcime/util/VibrationUtil;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/VibrationUtil;->mVibrator:Landroid/os/Vibrator;

    .line 95
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/util/VibrationUtil;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static playVibrationEffectMS(Landroid/os/Vibrator;)V
    .locals 4
    .parameter "vibrator"

    .prologue
    .line 33
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    new-instance p0, Landroid/os/Vibrator;

    .end local p0
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 39
    .restart local p0
    :cond_2
    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->sVibratePeriodMilliSec:I

    invoke-static {v1}, Lcom/htc/android/htcime/util/VibrationUtil;->getDeviceVibrationMS(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTC_IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibratorUtil.playVibrationEffectMS exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/htc/android/htcime/util/VibrationUtil;->VibrateExceptionOccured()V

    goto :goto_0
.end method

.method public static playVibrationEffectMS(Landroid/os/Vibrator;I)V
    .locals 4
    .parameter "vibrator"
    .parameter "defaultMS"

    .prologue
    .line 52
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-nez p0, :cond_2

    .line 56
    new-instance p0, Landroid/os/Vibrator;

    .end local p0
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 58
    .restart local p0
    :cond_2
    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/util/VibrationUtil;->getDeviceVibrationMS(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTC_IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibratorUtil.playVibrationEffectMS exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/htc/android/htcime/util/VibrationUtil;->VibrateExceptionOccured()V

    goto :goto_0
.end method

.method public static playVibrationEffectPattern(Landroid/os/Vibrator;[J)V
    .locals 4
    .parameter "vibrator"
    .parameter "pattern"

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance p0, Landroid/os/Vibrator;

    .end local p0
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 74
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 76
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTC_IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibratorUtil.playVibrationEffectPattern exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/htc/android/htcime/util/VibrationUtil;->VibrateExceptionOccured()V

    goto :goto_0
.end method
