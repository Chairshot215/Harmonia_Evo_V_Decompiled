.class public Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;
.super Ljava/lang/Object;
.source "HtcSoundFeatureFlags.java"


# static fields
.field public static final supportPhoneRingtone:Z

.field public static final supportPulseNotificationLight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0002:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportPhoneRingtone:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
