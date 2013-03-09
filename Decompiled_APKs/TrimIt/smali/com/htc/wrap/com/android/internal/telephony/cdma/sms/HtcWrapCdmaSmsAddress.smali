.class public Lcom/htc/wrap/com/android/internal/telephony/cdma/sms/HtcWrapCdmaSmsAddress;
.super Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.source "HtcWrapCdmaSmsAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1
    .parameter "address"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1
    .parameter "address"
    .parameter "bRemovePlus"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    return-object v0
.end method
