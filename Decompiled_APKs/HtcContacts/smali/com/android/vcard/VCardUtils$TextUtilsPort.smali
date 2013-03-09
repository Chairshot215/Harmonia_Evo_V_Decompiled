.class public Lcom/android/vcard/VCardUtils$TextUtilsPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUtilsPort"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 109
    const/16 v0, 0x20

    .line 110
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 111
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 115
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 116
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 117
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 121
    :goto_1
    return v2

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
