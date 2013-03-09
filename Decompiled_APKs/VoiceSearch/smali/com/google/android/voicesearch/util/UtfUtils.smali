.class public Lcom/google/android/voicesearch/util/UtfUtils;
.super Ljava/lang/Object;
.source "UtfUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOffsetUtf16([BI)I
    .locals 5
    .parameter "bytesUtf8"
    .parameter "offsetUtf8"

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, offsetUtf16:I
    const/4 v2, 0x0

    .line 54
    .local v2, pos:I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_4

    .line 55
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 57
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_1

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    ushr-int/lit8 v3, v0, 0x5

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 65
    add-int/lit8 v2, v2, 0x2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    ushr-int/lit8 v3, v0, 0x4

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 71
    add-int/lit8 v2, v2, 0x3

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    ushr-int/lit8 v3, v0, 0x3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 78
    add-int/lit8 v2, v2, 0x4

    .line 79
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 82
    .end local v0           #b:I
    :cond_4
    return v1
.end method
