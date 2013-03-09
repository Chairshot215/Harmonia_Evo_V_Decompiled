.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSMSDispatcher;
.super Ljava/lang/Object;
.source "HtcWrapSMSDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCdmaMo()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v0

    return v0
.end method
