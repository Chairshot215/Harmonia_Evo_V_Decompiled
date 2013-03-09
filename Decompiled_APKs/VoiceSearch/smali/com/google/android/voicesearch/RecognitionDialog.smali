.class public Lcom/google/android/voicesearch/RecognitionDialog;
.super Landroid/widget/LinearLayout;
.source "RecognitionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDivider:Landroid/view/View;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mHasBranding:Z

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpHintButton:Landroid/widget/Button;

.field private mImage:Landroid/widget/ImageView;

.field private mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

.field private mIsError:Z

.field private mLanguageText:Landroid/widget/TextView;

.field private mLastWave:Landroid/graphics/Bitmap;

.field private mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

.field private mLogo:Landroid/widget/ImageView;

.field private mSettingsButton:Landroid/widget/ImageButton;

.field private mShowHelpButton:Z

.field private mShowHelpHintBubble:Z

.field private mText:Landroid/widget/TextView;

.field private mTryAgainButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v4, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    .line 64
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    .line 68
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 69
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHasBranding:Z

    .line 73
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040012

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    .line 78
    const v2, 0x7f0e0030

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/ui/IndicatorView;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    .line 79
    const v2, 0x7f0e0044

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    .line 80
    const v2, 0x7f0e0045

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0e0049

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    .line 82
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    .line 83
    const v2, 0x7f0e004a

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    .line 84
    const v2, 0x7f0e0041

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSettingsButton:Landroid/widget/ImageButton;

    .line 85
    const v2, 0x7f0e0042

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mDivider:Landroid/view/View;

    .line 90
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    .line 92
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionDialog$1;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionDialog$2;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionDialog$2;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionDialog$3;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionDialog$3;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionDialog$4;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionDialog$4;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionDialog$5;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionDialog$5;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mError:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->showWaiting()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/RecognitionDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 6
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 368
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 370
    .local v1, from:I
    add-int v4, v1, p3

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 371
    .local v0, end:I
    const/4 v2, 0x0

    .line 372
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 373
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 372
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_0
    div-int v4, v2, p3

    return v4
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public setBrandingText(Ljava/lang/String;)V
    .locals 1
    .parameter "branding"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHasBranding:Z

    .line 164
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderText(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    return-void
.end method

.method public setLanguageText(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/RecognitionDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    .line 387
    return-void
.end method

.method public setShowHelpButton(Z)V
    .locals 0
    .parameter "showHelpButton"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    .line 151
    return-void
.end method

.method public setShowHelpHintBubble(Z)V
    .locals 0
    .parameter "showHelpHint"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    .line 155
    return-void
.end method

.method public showError(IZ)V
    .locals 5
    .parameter "stringId"
    .parameter "retryable"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 271
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    const v1, 0x7f0a0702

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    const v1, 0x7f0a0722

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public showListening()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 185
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHasBranding:Z

    if-nez v0, :cond_0

    .line 186
    const v0, 0x7f0a0700

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    const v3, 0x7f02001b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->resetAnimation()V

    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    const-string v0, "RecognitionDialog"

    const-string v1, "text must be focusable in touch mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 204
    return-void

    :cond_3
    move v0, v2

    .line 194
    goto :goto_0
.end method

.method public showWaiting()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 229
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->resetAnimation()V

    .line 232
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    return-void
.end method

.method public showWave(Ljava/nio/ShortBuffer;II)V
    .locals 29
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/voicesearch/ui/IndicatorView;->resetAnimation()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mLastWave:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mLastWave:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/RecognitionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090013

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 305
    .local v12, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v20

    .line 306
    .local v20, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 307
    .local v10, h:I
    if-lez v20, :cond_0

    if-lez v10, :cond_0

    .line 311
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 312
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 313
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 314
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    const/16 v24, 0x50

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 319
    new-instance v8, Landroid/graphics/CornerPathEffect;

    const/high16 v24, 0x4040

    move/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 320
    .local v8, effect:Landroid/graphics/PathEffect;
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v14

    .line 324
    .local v14, numSamples:I
    if-nez p3, :cond_3

    .line 325
    move v9, v14

    .line 330
    .local v9, endIndex:I
    :goto_1
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v19, v0

    .line 331
    .local v19, startIndex:I
    if-gez v19, :cond_2

    .line 332
    const/16 v19, 0x0

    .line 334
    :cond_2
    const/16 v13, 0xc8

    .line 335
    .local v13, numSamplePerWave:I
    const/high16 v17, 0x3920

    .line 337
    .local v17, scale:F
    sub-int v24, v9, v19

    move/from16 v0, v24

    div-int/lit16 v6, v0, 0xc8

    .line 338
    .local v6, count:I
    const/high16 v24, 0x3f80

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    int-to-float v0, v6

    move/from16 v25, v0

    div-float v7, v24, v25

    .line 339
    .local v7, deltaX:F
    div-int/lit8 v23, v10, 0x2

    .line 340
    .local v23, yMax:I
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 341
    .local v16, path:Landroid/graphics/Path;
    const/16 v24, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    const/16 v21, 0x0

    .line 343
    .local v21, x:F
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 344
    add-int/lit8 v23, v23, -0xa

    .line 345
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v6, :cond_5

    .line 346
    const/16 v24, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v3

    .line 347
    .local v3, avabs:I
    and-int/lit8 v24, v11, 0x1

    if-nez v24, :cond_4

    const/16 v18, -0x1

    .line 348
    .local v18, sign:I
    :goto_3
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    mul-int v25, v3, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3920

    mul-float v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v22, v24, v25

    .line 349
    .local v22, y:F
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 350
    add-float v21, v21, v7

    .line 351
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 327
    .end local v3           #avabs:I
    .end local v6           #count:I
    .end local v7           #deltaX:F
    .end local v9           #endIndex:I
    .end local v11           #i:I
    .end local v13           #numSamplePerWave:I
    .end local v16           #path:Landroid/graphics/Path;
    .end local v17           #scale:F
    .end local v18           #sign:I
    .end local v19           #startIndex:I
    .end local v21           #x:F
    .end local v22           #y:F
    .end local v23           #yMax:I
    :cond_3
    move/from16 v0, p3

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9       #endIndex:I
    goto/16 :goto_1

    .line 347
    .restart local v3       #avabs:I
    .restart local v6       #count:I
    .restart local v7       #deltaX:F
    .restart local v11       #i:I
    .restart local v13       #numSamplePerWave:I
    .restart local v16       #path:Landroid/graphics/Path;
    .restart local v17       #scale:F
    .restart local v19       #startIndex:I
    .restart local v21       #x:F
    .restart local v23       #yMax:I
    :cond_4
    const/16 v18, 0x1

    goto :goto_3

    .line 353
    .end local v3           #avabs:I
    :cond_5
    const/high16 v24, 0x4080

    cmpl-float v24, v7, v24

    if-lez v24, :cond_6

    .line 354
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 359
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mLastWave:Landroid/graphics/Bitmap;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 356
    :cond_6
    const/16 v24, 0x0

    float-to-double v0, v7

    move-wide/from16 v25, v0

    const-wide v27, 0x3fa999999999999aL

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4
.end method

.method public showWorking()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->resetAnimation()V

    .line 214
    const v0, 0x7f0a0701

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public updateAudioLevel(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setRms(F)V

    .line 181
    return-void
.end method
