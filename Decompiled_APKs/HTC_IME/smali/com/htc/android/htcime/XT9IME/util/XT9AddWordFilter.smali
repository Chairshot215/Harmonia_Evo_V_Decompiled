.class public Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;
.super Ljava/lang/Object;
.source "XT9AddWordFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, modification:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 20
    .local v3, modoff:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 21
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 22
    .local v0, c:C
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;->isAllowed(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 20
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    if-nez v2, :cond_1

    .line 26
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .end local v2           #modification:Landroid/text/SpannableStringBuilder;
    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 27
    .restart local v2       #modification:Landroid/text/SpannableStringBuilder;
    sub-int v3, v1, p2

    .line 30
    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 38
    .end local v0           #c:C
    :cond_2
    return-object v2
.end method

.method public isAllowed(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
