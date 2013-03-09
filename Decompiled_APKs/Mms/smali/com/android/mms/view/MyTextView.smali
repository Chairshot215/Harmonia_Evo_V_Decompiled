.class public Lcom/android/mms/view/MyTextView;
.super Landroid/widget/TextView;
.source "MyTextView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mIsTextSelectionMode:Z

.field private mLink:[Landroid/text/style/ClickableSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/view/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/view/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/view/MyTextView;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    .line 18
    iput-boolean v3, p0, Lcom/android/mms/view/MyTextView;->mIsTextSelectionMode:Z

    .line 19
    const-string v1, "MyTextView"

    iput-object v1, p0, Lcom/android/mms/view/MyTextView;->TAG:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mContext:Landroid/content/Context;

    const-string v2, "input_text_selection_highlight"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, nResID:I
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/view/MyTextView;->setHighlightColor(I)V

    .line 34
    :cond_0
    return-void
.end method

.method private setHighlightSpan(Landroid/text/Spannable;Landroid/text/style/ForegroundColorSpan;[Landroid/text/style/ClickableSpan;)V
    .locals 3
    .parameter "spanText"
    .parameter "fcs"
    .parameter "link"

    .prologue
    const/4 v1, 0x0

    .line 52
    array-length v0, p3

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    aget-object v0, p3, v1

    invoke-interface {p1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object v1, p3, v1

    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/mms/view/MyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 39
    .local v0, spanText:Landroid/text/Spannable;
    iget-boolean v1, p0, Lcom/android/mms/view/MyTextView;->mIsTextSelectionMode:Z

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/mms/view/MyTextView;->resetHightlightSpan(Landroid/text/Spannable;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/android/mms/view/MyTextView;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/view/MyTextView;->setHighlightSpan(Landroid/text/Spannable;Landroid/text/style/ForegroundColorSpan;[Landroid/text/style/ClickableSpan;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mms/view/MyTextView;->resetHightlightSpan(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public resetHightlightSpan(Landroid/text/Spannable;)V
    .locals 8
    .parameter "spanText"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 61
    .local v1, foregroundColorSpans:[Landroid/text/style/ForegroundColorSpan;
    move-object v0, v1

    .local v0, arr$:[Landroid/text/style/ForegroundColorSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 62
    .local v2, fs:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0           #arr$:[Landroid/text/style/ForegroundColorSpan;
    .end local v1           #foregroundColorSpans:[Landroid/text/style/ForegroundColorSpan;
    .end local v2           #fs:Landroid/text/style/ForegroundColorSpan;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public setClickableSpan([Landroid/text/style/ClickableSpan;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mms/view/MyTextView;->mLink:[Landroid/text/style/ClickableSpan;

    .line 67
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0
    .parameter "isSelectionMode"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/view/MyTextView;->mIsTextSelectionMode:Z

    .line 70
    return-void
.end method
