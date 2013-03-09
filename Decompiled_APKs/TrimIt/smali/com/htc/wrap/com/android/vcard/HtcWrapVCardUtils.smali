.class public Lcom/htc/wrap/com/android/vcard/HtcWrapVCardUtils;
.super Ljava/lang/Object;
.source "HtcWrapVCardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKDDI()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isKDDI()Z

    move-result v0

    return v0
.end method

.method public static isSBM()Z
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v0

    return v0
.end method

.method public static isSKT()Z
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSKT()Z

    move-result v0

    return v0
.end method
