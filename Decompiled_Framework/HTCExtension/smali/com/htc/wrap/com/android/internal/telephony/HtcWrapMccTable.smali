.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapMccTable;
.super Ljava/lang/Object;
.source "HtcWrapMccTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
