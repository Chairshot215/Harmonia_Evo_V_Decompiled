.class public Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;
.super Landroid/widget/TextView;
.source "MailListItemGreenBubbleStamp.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 20
    iput-object p1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mRightMargin:I

    .line 23
    const-string v0, "common_notification_on"

    const v1, 0x208006a

    invoke-static {p1, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setBackgroundResource(I)V

    .line 25
    const v0, 0x7f070007

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setShadowLayer(FFFI)V

    .line 26
    const v0, 0x20300d6

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setTextAppearance(Landroid/content/Context;I)V

    .line 28
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setGravity(I)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setVisibility(I)V

    .line 31
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setFocusable(Z)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setClickable(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 52
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 58
    const-string v0, ""

    .line 59
    .local v0, txt:Ljava/lang/String;
    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    .line 60
    const-string v0, "99+"

    .line 61
    iget-object v1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mContext:Landroid/content/Context;

    const v2, 0x20300d6

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mContext:Landroid/content/Context;

    const v2, 0x20300d7

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 36
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 40
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method
