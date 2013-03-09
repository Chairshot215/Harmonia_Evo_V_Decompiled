.class public Lcom/android/mms/ui/SlideAttachmentView;
.super Landroid/widget/RelativeLayout;
.source "SlideAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowAttachmentView"

.field static final TYPE_BLACK:I = 0x1

.field static final TYPE_GRAY:I


# instance fields
.field private mBtnAction:Landroid/widget/ImageView;

.field private mBtnInfoAction:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mEditTextView:Landroid/widget/EditText;

.field protected mEditor:Lcom/android/mms/ui/MessageBodyEditor;

.field private mImagePanel:Landroid/widget/FrameLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoImageView:Landroid/widget/ImageView;

.field protected mInfoLayout:Landroid/view/View;

.field protected mMainLayout:Landroid/view/View;

.field protected mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

.field protected mPosition:I

.field private mSizeView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideAttachmentView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isEditTextFocused()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 64
    const v1, 0x7f0e0040

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mMainLayout:Landroid/view/View;

    .line 65
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    .line 66
    const v1, 0x7f0e00ba

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f0e00bb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0e00b4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f0e00bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnPlay:Landroid/widget/ImageView;

    .line 70
    const v1, 0x7f0e00bf

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    .line 71
    const v1, 0x7f0e00b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0e00b6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0e00b7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0e00bd

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    .line 77
    const v1, 0x7f0e00b3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImagePanel:Landroid/widget/FrameLayout;

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImagePanel:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TextSizeManager;->getFontSize()I

    move-result v0

    .line 81
    .local v0, textSize:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 83
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public requestTextFocus()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 401
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 349
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 352
    return-void
.end method

.method public setAttachments(II)V
    .locals 6
    .parameter "mediaNum"
    .parameter "size"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, attachments:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, kb:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v5, p2, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v2

    .line 234
    .local v2, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 235
    const-string v3, "MULTIPLE"

    iput-object v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .end local v2           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_0
    return-void

    .line 226
    .end local v1           #kb:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .parameter "audio"
    .parameter "name"
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v4, 0x1

    .line 103
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02014b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v5, p3, 0x400

    if-nez v5, :cond_1

    move v3, v4

    .line 108
    .local v3, mSize:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v2

    .line 112
    .local v2, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v5, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 113
    const-string v5, "AUDIO"

    iput-object v5, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 114
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_2

    .line 117
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .end local v2           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_0
    :goto_1
    return-void

    .line 107
    .end local v3           #mSize:I
    :cond_1
    div-int/lit16 v3, p3, 0x400

    goto :goto_0

    .line 119
    .restart local v2       #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    .restart local v3       #mSize:I
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    iget v6, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    invoke-virtual {v5, v6, v4}, Lcom/android/mms/ui/MessageBodyEditor;->getOnViewClickListener(IZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 120
    .local v0, cl:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setEditTextListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 127
    if-nez p2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v1

    .line 138
    .local v1, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v2, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 139
    const-string v2, "IMAGE"

    iput-object v2, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->getOnViewClickListener(IZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 146
    .local v0, cl:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"
    .parameter "isWithBorder"

    .prologue
    .line 406
    return-void
.end method

.method public setImageGone()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 154
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "country"
    .parameter "thumbnail"
    .parameter "text"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v0

    .line 314
    .local v0, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v1, v0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 315
    const-string v1, "LOCATION"

    iput-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .end local v0           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_0
    return-void
.end method

.method public setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 392
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 369
    return-void
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    return-void
.end method

.method public setOnPreviewClickListener(Landroid/view/View$OnClickListener;Z)V
    .locals 1
    .parameter "l"
    .parameter "bMixed"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    if-eqz p2, :cond_0

    .line 357
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setSizeText(II)V
    .locals 8
    .parameter "number"
    .parameter "size"

    .prologue
    .line 86
    move v1, p1

    .line 87
    .local v1, mNumber:I
    div-int/lit16 v5, p2, 0x400

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 89
    .local v2, mSize:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, kb:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 91
    .local v4, prefs:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const-string v6, "pref_key_mms_max_size"

    const-string v7, "300000L"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 93
    .local v3, msgSizeLimit:I
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit16 v7, v3, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 87
    .end local v0           #kb:Ljava/lang/String;
    .end local v2           #mSize:I
    .end local v3           #msgSizeLimit:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    div-int/lit16 v2, p2, 0x400

    goto :goto_0
.end method

.method public setSlidePosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 395
    iput p1, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    .line 396
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 380
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 173
    return-void
.end method

.method public setUnsupported(I)V
    .locals 6
    .parameter "mediaNum"

    .prologue
    .line 241
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, attachments:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, unsupported:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v1

    .line 255
    .local v1, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v3, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 256
    const-string v3, "UNSUPPORTED"

    iput-object v3, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .end local v1           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_0
    return-void

    .line 247
    .end local v2           #unsupported:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setVCalendar(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "src"
    .parameter "size"
    .parameter "text"

    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v3, p2, 0x400

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v2

    .line 299
    .local v2, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 300
    const-string v3, "VCALENDAR"

    iput-object v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    .end local v2           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_1
    return-void

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v5, p2, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVCard(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "src"
    .parameter "size"
    .parameter "text"

    .prologue
    .line 262
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    const v4, 0x7f090140

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v3, p2, 0x400

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v2

    .line 277
    .local v2, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 278
    const-string v3, "VCARD"

    iput-object v3, v2, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 279
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .end local v2           #l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    :cond_1
    return-void

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v5, p2, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .parameter "name"
    .parameter "video"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 179
    if-nez v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201a5

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    if-nez v2, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/mms/ui/SlideAttachmentView$1;-><init>(Lcom/android/mms/ui/SlideAttachmentView;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideAttachmentView;->setOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    move-result-object v1

    .line 205
    .local v1, l:Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    iget v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    iput v3, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mPosition:I

    .line 206
    const-string v3, "VIDEO"

    iput-object v3, v1, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;->mContentType:Ljava/lang/String;

    .line 207
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mBtnAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mOnMixedPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mEditor:Lcom/android/mms/ui/MessageBodyEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideAttachmentView;->mPosition:I

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/MessageBodyEditor;->getOnViewClickListener(IZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 213
    .local v0, cl:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 321
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 340
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
