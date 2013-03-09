.class Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;
.super Ljava/lang/Object;
.source "GiftCardVerifier.java"


# static fields
.field private static final RADIX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "0123456789ABCDEFGHJKLMNPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->RADIX:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateLuhnChecksum(Ljava/lang/String;)Z
    .locals 12
    .parameter "giftCardCode"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    .local v3, factor:I
    const/4 v6, 0x0

    .line 42
    .local v6, sum:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 43
    .local v5, pinCharArray:[C
    array-length v10, v5

    add-int/lit8 v4, v10, -0x1

    .local v4, index:I
    :goto_0
    if-ltz v4, :cond_2

    .line 44
    aget-char v1, v5, v4

    .line 45
    .local v1, c:C
    const-string v10, "0123456789ABCDEFGHJKLMNPQRSTUVWXYZ"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 46
    .local v2, codePoint:I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_0

    .line 60
    .end local v1           #c:C
    .end local v2           #codePoint:I
    :goto_1
    return v9

    .line 49
    .restart local v1       #c:C
    .restart local v2       #codePoint:I
    :cond_0
    mul-int v0, v2, v3

    .line 53
    .local v0, addend:I
    sget v10, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->RADIX:I

    div-int v10, v0, v10

    sget v11, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->RADIX:I

    rem-int v11, v0, v11

    add-int v0, v10, v11

    .line 54
    add-int/2addr v6, v0

    .line 57
    if-ne v3, v8, :cond_1

    move v3, v7

    .line 43
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    move v3, v8

    .line 57
    goto :goto_2

    .line 60
    .end local v0           #addend:I
    .end local v1           #c:C
    .end local v2           #codePoint:I
    :cond_2
    sget v8, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->RADIX:I

    rem-int v8, v6, v8

    if-nez v8, :cond_3

    :goto_3
    move v9, v7

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_3
.end method

.method public static verifyGiftCardCode(Ljava/lang/String;)Z
    .locals 2
    .parameter "giftCardCode"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->validateLuhnChecksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
