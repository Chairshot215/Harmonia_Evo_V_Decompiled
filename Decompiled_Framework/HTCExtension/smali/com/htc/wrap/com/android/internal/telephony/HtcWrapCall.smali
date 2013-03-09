.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCall;
.super Ljava/lang/Object;
.source "HtcWrapCall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVideoTelephony(Lcom/android/internal/telephony/Call;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v0

    return v0
.end method

.method public static requestFallBack(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->requestFallBack()V

    return-void
.end method
