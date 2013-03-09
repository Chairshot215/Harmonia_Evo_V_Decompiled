.class public Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;
.super Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;
.source "HtcBatteryStatusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;
    }
.end annotation


# instance fields
.field private mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryStatusChanged(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 86
    sget-object v2, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryStatus:[I

    iget-object v3, p1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->status:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 124
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0799

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, statusString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    return-void

    .line 88
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_0
    const v0, 0x7f0c079a

    .line 89
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .restart local v1       #statusString:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference$1;->$SwitchMap$com$android$settings$framework$receiver$HtcBatteryStatusReceiver$BatteryPlugged:[I

    iget-object v3, p1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->plugged:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 102
    const v0, 0x7f0c0136

    .line 105
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    goto :goto_0

    .line 93
    :pswitch_1
    const v0, 0x7f0c079b

    .line 94
    goto :goto_1

    .line 96
    :pswitch_2
    const v0, 0x7f0c079c

    .line 97
    goto :goto_1

    .line 99
    :pswitch_3
    const v0, 0x7f0c0135

    .line 100
    goto :goto_1

    .line 109
    .end local v0           #resId:I
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c079d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c079f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c079e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->unregisterBatteryStatusReceiver()V

    .line 140
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->registerBatteryStatusReceiver()V

    .line 136
    return-void
.end method

.method public registerBatteryStatusReceiver()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->setOnBatteryStatusChangedListener(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->registerReceiver()V

    .line 62
    :cond_0
    return-void
.end method

.method public unregisterBatteryStatusReceiver()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->unregisterReceiver()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    .line 69
    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
