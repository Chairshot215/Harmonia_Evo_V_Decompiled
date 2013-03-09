.class public Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final g:[Landroid/text/InputFilter;


# instance fields
.field protected a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:[Landroid/text/InputFilter;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->g:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    new-instance v0, Ljp/co/canonits/android/emojidisplayview/c;

    invoke-direct {v0, p0}, Ljp/co/canonits/android/emojidisplayview/c;-><init>(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    invoke-static {p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->canUseEmoji(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    :cond_0
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    new-instance v0, Ljp/co/canonits/android/emojidisplayview/c;

    invoke-direct {v0, p0}, Ljp/co/canonits/android/emojidisplayview/c;-><init>(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    invoke-static {p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->canUseEmoji(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    :cond_0
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    new-instance v0, Ljp/co/canonits/android/emojidisplayview/c;

    invoke-direct {v0, p0}, Ljp/co/canonits/android/emojidisplayview/c;-><init>(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    invoke-static {p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->canUseEmoji(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    :cond_0
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    if-nez v0, :cond_0

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->g:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 5

    if-ne p1, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const-class v1, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    invoke-virtual {v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;II[CI)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    :cond_1
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_2

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroid/text/GetChars;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/text/GetChars;

    invoke-interface {p0, p1, p2, p3, v2}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p4, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, v0

    :cond_4
    if-lt p1, p2, :cond_3

    goto :goto_0
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    return v0
.end method

.method private b(I)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    invoke-virtual {v3, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    array-length v4, v0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->setEmojiSize(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic b(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    return v0
.end method

.method static synthetic c(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    return v0
.end method

.method static synthetic d(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->onCheckIsTextEditor()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ne v1, v0, :cond_5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v2, v3

    :goto_1
    if-lez v1, :cond_2

    add-int v6, v1, p1

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_2

    new-array v6, v4, [C

    add-int/lit8 v7, v1, -0x1

    invoke-static {v5, v7, v1, v6, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(Ljava/lang/CharSequence;II[CI)V

    aget-char v6, v6, v3

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/2addr v1, p1

    :cond_2
    if-eqz v2, :cond_3

    if-lez v0, :cond_3

    add-int v6, v0, p1

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_3

    new-array v4, v4, [C

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6, v0, v4, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(Ljava/lang/CharSequence;II[CI)V

    aget-char v3, v4, v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/2addr v0, p1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v5, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_4
    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method public deleteMoji()V
    .locals 3

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->requestFocus()Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    goto :goto_0
.end method

.method public insertEmoji(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->requestFocus()Z

    invoke-super {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ltz v1, :cond_1

    if-gez v3, :cond_2

    :cond_1
    move v1, v2

    move v3, v2

    :cond_2
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getTextSize()F

    move-result v6

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getTextScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    new-instance v7, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v7, v8, v9, v6}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v4, v7, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-direct {p0, v1, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(II)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    goto :goto_0
.end method

.method public isEmojiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->startEmojiAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->stopEmojiAnimation()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    iget-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    add-int v1, p2, p4

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    const-class v3, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    const v0, 0x1020022

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->length()I

    move-result v1

    :cond_1
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->e:[Landroid/text/InputFilter;

    array-length v1, v1

    new-instance v2, Ljp/co/canonits/android/emojidisplayview/f;

    invoke-direct {v2}, Ljp/co/canonits/android/emojidisplayview/f;-><init>()V

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v3, v0

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_4

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v6, v1, [C

    invoke-static {p1, v2, v1, v6, v2}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(Ljava/lang/CharSequence;II[CI)V

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getTextScaleX()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v7, v1

    move v1, v2

    move v3, v2

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_6

    iput-boolean v3, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c:Z

    if-eqz v0, :cond_3

    array-length v1, v0

    :goto_3
    if-lt v2, v1, :cond_8

    :cond_3
    invoke-super {p0, v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iput-boolean v4, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b:Z

    goto :goto_0

    :cond_4
    aget-object v6, v0, v1

    instance-of v7, v6, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_6
    aget-char v8, v6, v1

    const v9, 0xd800

    if-lt v8, v9, :cond_7

    aget-char v8, v6, v1

    const v9, 0xdfff

    if-gt v8, v9, :cond_7

    add-int/lit8 v8, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    add-int/lit8 v8, v1, 0x1

    aget-char v8, v6, v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_7

    aget-char v8, v6, v1

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v6, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    new-instance v8, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v10, v7}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v3, v1, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v1, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    aget-object v3, v0, v2

    instance-of v6, v3, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;

    if-nez v6, :cond_9

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method public setTextSize(F)V
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b(I)V

    goto :goto_0
.end method

.method public setTextSize(IF)V
    .locals 1

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b(I)V

    goto :goto_0
.end method

.method public startEmojiAnimation()V
    .locals 4

    const/16 v2, 0x64

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopEmojiAnimation()V
    .locals 2

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->f:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d:Z

    goto :goto_0
.end method
