.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCall;
.super Ljava/lang/Object;
.source "HtcWrapCall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVideoTelephony(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "instance"

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v0

    return v0
.end method

.method public static requestFallBack(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->requestFallBack()V

    .line 20
    return-void
.end method
