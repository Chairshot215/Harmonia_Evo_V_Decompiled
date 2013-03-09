.class public Lcom/htc/wrap/android/media/HtcWrapToneGenerator;
.super Landroid/media/ToneGenerator;
.source "HtcWrapToneGenerator.java"


# static fields
.field public static final TONE_ANSI_DIAL:I = 0x63

.field public static final TONE_HTC_CDMA_EMERGENCY_ALERT:I = 0x6b

.field public static final TONE_HTC_CDMA_OTA:I = 0x6d

.field public static final TONE_SUP_CALL_WAITING_ATT:I = 0x6c


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 13
    return-void
.end method
