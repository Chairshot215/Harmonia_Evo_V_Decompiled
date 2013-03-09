.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccUtils;
.super Lcom/android/internal/telephony/IccUtils;
.source "HtcWrapIccUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccUtils;-><init>()V

    return-void
.end method

.method public static bcdPlmnToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->bcdPlmnToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 1
    .parameter "bytes"
    .parameter "capitalized"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToBcdByte(I)B
    .locals 1
    .parameter "n"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v0

    return v0
.end method
