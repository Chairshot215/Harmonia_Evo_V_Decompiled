.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapPhoneFactory;
.super Ljava/lang/Object;
.source "HtcWrapPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "fullyIHtcTelephony"

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;Z)V

    .line 10
    return-void
.end method
