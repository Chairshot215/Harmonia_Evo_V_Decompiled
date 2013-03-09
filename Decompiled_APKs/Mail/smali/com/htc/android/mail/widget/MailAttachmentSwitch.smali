.class public Lcom/htc/android/mail/widget/MailAttachmentSwitch;
.super Lcom/htc/widget/HtcListItem;
.source "MailAttachmentSwitch.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field private mRes:Landroid/content/res/Resources;

.field private mText:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 36
    iput-object p1, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mRes:Landroid/content/res/Resources;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 40
    .local v1, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030021

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    if-eqz p2, :cond_2

    .line 43
    sget-object v2, Lcom/htc/android/mail/R$styleable;->MailAttachment:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setRoundCorner(I)V

    .line 47
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setRoundCorner(I)V

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_2
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 54
    iget-object v2, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 56
    const v2, 0x7f0900dd

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 57
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public update(ZI)V
    .locals 7
    .parameter "expand"
    .parameter "count"

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    .local v0, action:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 78
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0131

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mRes:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const-string v5, "attachment_collapse_selector"

    const/high16 v6, 0x208

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_0
    const-string v1, ""

    .line 91
    .local v1, attach:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 98
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko_KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setText(Ljava/lang/String;)V

    .line 106
    :goto_2
    return-void

    .line 84
    .end local v1           #attach:Ljava/lang/String;
    .end local v2           #locale:Ljava/util/Locale;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mRes:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const-string v5, "common_expand"

    const v6, 0x20801ae

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 94
    .restart local v1       #attach:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0107

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 103
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method
