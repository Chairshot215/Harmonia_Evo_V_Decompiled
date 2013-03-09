.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapConnection;
.super Ljava/lang/Object;
.source "HtcWrapConnection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVTCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isVTCall()Z

    move-result v0

    return v0
.end method

.method public static requestFallBack(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->requestFallBack()V

    return-void
.end method
