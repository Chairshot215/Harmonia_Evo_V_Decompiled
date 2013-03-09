.class public Lcom/android/phone/HtcDialerKeyListener;
.super Landroid/text/method/TextKeyListener;
.source "HtcDialerKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/TextKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/HtcDialerKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x70t 0x0t
        0x77t 0x0t
        0x50t 0x0t
        0x57t 0x0t
        0x3ft 0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 39
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/android/phone/HtcDialerKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/phone/HtcDialerKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/android/phone/HtcDialerKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/HtcDialerKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    sput-object v0, Lcom/android/phone/HtcDialerKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    .line 58
    sget-object v0, Lcom/android/phone/HtcDialerKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    goto :goto_0
.end method

.method protected static ok([CC)Z
    .locals 2
    .parameter "accept"
    .parameter "c"

    .prologue
    .line 100
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 101
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 106
    :goto_1
    return v1

    .line 100
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/phone/HtcDialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 64
    .local v0, accept:[C
    const/4 v1, 0x0

    .line 67
    .local v1, filter:Z
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 68
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/android/phone/HtcDialerKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_2

    .line 73
    :cond_0
    if-ne v3, p3, :cond_3

    .line 75
    const/4 v2, 0x0

    .line 96
    :cond_1
    :goto_1
    return-object v2

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_3
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 80
    const-string v2, ""

    goto :goto_1

    .line 83
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 85
    .local v2, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 86
    sub-int/2addr p3, p2

    .line 88
    sub-int v5, p3, p2

    .line 90
    .local v5, len:I
    add-int/lit8 v4, p3, -0x1

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_1

    .line 91
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/android/phone/HtcDialerKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_5

    .line 92
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 90
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/HtcDialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x21

    return v0
.end method
