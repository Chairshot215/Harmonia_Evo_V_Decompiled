.class public Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
.super Ljava/lang/Object;
.source "VoiceInputViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;
    }
.end annotation


# instance fields
.field private mButtonView:Landroid/widget/Button;

.field private mCloseClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mImageIndicator:Landroid/widget/ImageView;

.field private mInputView:Landroid/view/View;

.field private mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

.field private mPopupEnabled:Z

.field private mRecordingClickListener:Landroid/view/View$OnClickListener;

.field private mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWaitingResultView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mPopupEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mPopupEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayPersonalizationPopup(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V

    return-void
.end method

.method private displayPersonalizationPopup(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 290
    new-instance v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, personalizationDialogHelper:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;
    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$6;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$6;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)V

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->showDialog(ILcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;Landroid/os/IBinder;)V

    .line 305
    return-void
.end method

.method private postUiUpdate(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateView(III)V
    .locals 6
    .parameter "status"
    .parameter "titleStringId"
    .parameter "buttonStringId"

    .prologue
    const v5, 0x7f02001b

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uknown status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/ui/IndicatorView;->setKeepScreenOn(Z)V

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mRecordingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mWaitingResultView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 241
    return-void

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/ui/IndicatorView;->setKeepScreenOn(Z)V

    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mRecordingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->setKeepScreenOn(Z)V

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setState(I)V

    .line 226
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->setKeepScreenOn(Z)V

    .line 227
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public displayAudioNotInitialized()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    const v1, 0x7f0a07fe

    const v2, 0x7f0a07ff

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->updateView(III)V

    .line 180
    return-void
.end method

.method public displayError(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 163
    const/4 v0, 0x3

    invoke-static {p1}, Lcom/google/android/voicesearch/StringUtils;->getDictationErrorMessageId(I)I

    move-result v1

    const v2, 0x104000a

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->updateView(III)V

    .line 165
    return-void
.end method

.method public displayListening()V
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x1

    const v1, 0x7f0a07fe

    const v2, 0x7f0a07ff

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->updateView(III)V

    .line 172
    return-void
.end method

.method public displayWaitingForResults(Z)V
    .locals 2
    .parameter "waitingForResults"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mWaitingResultView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public displayWorking()V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x2

    const v1, 0x7f0a0800

    const v2, 0x7f0a0801

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->updateView(III)V

    .line 187
    return-void
.end method

.method public getView(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)Landroid/view/View;
    .locals 6
    .parameter "callback"

    .prologue
    .line 97
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0005

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v0, contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 102
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    .line 105
    new-instance v2, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mRecordingClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v2, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$2;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mCloseClickListener:Landroid/view/View$OnClickListener;

    .line 120
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mTitleView:Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/ui/IndicatorView;

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    .line 123
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mImageIndicator:Landroid/widget/ImageView;

    .line 125
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    .line 126
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v2, p1}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setCallback(Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;)V

    .line 128
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e0033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mButtonView:Landroid/widget/Button;

    .line 130
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    const v3, 0x7f0e0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mWaitingResultView:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mWaitingResultView:Landroid/view/View;

    check-cast v2, Landroid/widget/ProgressBar;

    new-instance v3, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;

    iget-object v4, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    new-instance v3, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;

    invoke-direct {v3, p0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 149
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mInputView:Landroid/view/View;

    return-object v2
.end method

.method public isPopupEnabled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mPopupEnabled:Z

    return v0
.end method

.method public scheduleDisplayListening()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/Assert;->assertNotOnMainThread(Landroid/content/Context;)V

    .line 266
    new-instance v0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$5;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$5;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)V

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->postUiUpdate(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public scheduleWorking()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/Assert;->assertNotOnMainThread(Landroid/content/Context;)V

    .line 255
    new-instance v0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$4;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$4;-><init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)V

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->postUiUpdate(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public setLanguages(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V
    .locals 1
    .parameter "currentBcp47Locale"
    .parameter "locales"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mLanguageView:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setLanguages(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V

    .line 245
    return-void
.end method

.method public updateRmsdB(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mSoundIndicator:Lcom/google/android/voicesearch/ui/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/ui/IndicatorView;->setRms(F)V

    .line 312
    return-void
.end method
