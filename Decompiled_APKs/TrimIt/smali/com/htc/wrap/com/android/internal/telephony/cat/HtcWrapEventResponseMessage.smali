.class public Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapEventResponseMessage;
.super Lcom/android/internal/telephony/cat/EventResponseMessage;
.source "HtcWrapEventResponseMessage.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapEventResponseMessage;->setEventType(I)V

    .line 79
    return-void
.end method
