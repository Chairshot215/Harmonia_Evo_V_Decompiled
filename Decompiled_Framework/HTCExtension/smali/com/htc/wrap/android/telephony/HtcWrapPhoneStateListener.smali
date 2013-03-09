.class public Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcWrapPhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_DISCONNECTED:I = 0x400

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_SEPARATE_SERVICE_STATE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    return-void
.end method

.method public onPreciseCallStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(I)V

    return-void
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    return-void
.end method
