.class public Lcom/htc/android/epst/translator/HexKeyFilter;
.super Ljava/lang/Object;
.source "HexKeyFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Lcom/htc/android/epst/translator/HexKeyFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->CHARACTERS:[C

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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/android/epst/translator/HexKeyFilter;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->sInstance:Lcom/htc/android/epst/translator/HexKeyFilter;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->sInstance:Lcom/htc/android/epst/translator/HexKeyFilter;

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/htc/android/epst/translator/HexKeyFilter;

    invoke-direct {v0}, Lcom/htc/android/epst/translator/HexKeyFilter;-><init>()V

    sput-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->sInstance:Lcom/htc/android/epst/translator/HexKeyFilter;

    .line 28
    sget-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->sInstance:Lcom/htc/android/epst/translator/HexKeyFilter;

    goto :goto_0
.end method

.method protected static ok([CC)Z
    .locals 2
    .parameter "accept"
    .parameter "c"

    .prologue
    .line 37
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 39
    const/4 v1, 0x1

    .line 43
    :goto_1
    return v1

    .line 37
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/HexKeyFilter;->getAcceptedChars()[C

    move-result-object v0

    .line 52
    .local v0, accept:[C
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 53
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v0, v4}, Lcom/htc/android/epst/translator/HexKeyFilter;->ok([CC)Z

    move-result v4

    if-nez v4, :cond_2

    .line 58
    :cond_0
    if-ne v2, p3, :cond_3

    .line 60
    const/4 v1, 0x0

    .line 81
    :cond_1
    :goto_1
    return-object v1

    .line 52
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_3
    sub-int v4, p3, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 65
    const-string v1, ""

    goto :goto_1

    .line 68
    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 70
    .local v1, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v2, p2

    .line 71
    sub-int/2addr p3, p2

    .line 75
    add-int/lit8 v3, p3, -0x1

    .local v3, j:I
    :goto_2
    if-lt v3, v2, :cond_1

    .line 76
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v0, v4}, Lcom/htc/android/epst/translator/HexKeyFilter;->ok([CC)Z

    move-result v4

    if-nez v4, :cond_5

    .line 77
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 75
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/android/epst/translator/HexKeyFilter;->CHARACTERS:[C

    return-object v0
.end method
