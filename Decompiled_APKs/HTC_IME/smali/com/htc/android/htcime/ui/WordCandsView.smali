.class public Lcom/htc/android/htcime/ui/WordCandsView;
.super Lcom/htc/android/htcime/ezsip/common/CompressedTextView;
.source "WordCandsView.java"


# static fields
.field private static final JasoneLog:Z = false

.field private static final NON_PRESSED_BACKGROUND_COLOR:I = 0x0

.field private static final NON_SELECTED_TEXT_COLOR:I = -0x1000000

.field public static final NULL_INDEX:I = -0x2

.field private static final PRESSED:Z = true

.field private static final PRESSED_BACKGROUND_COLOR:I = -0x1f005000

.field private static final SELECTED_TEXT_COLOR:I = -0x1

.field private static final UNPRESSED:Z


# instance fields
.field public HorizontalFadingEdgeEnabled:Z

.field private mCandsIndex:I

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mPageNo:I

.field private mPressState:Z

.field private mPressedBG:Landroid/graphics/drawable/Drawable;

.field private mSecPressedBG:Landroid/graphics/drawable/Drawable;

.field private mSecSelectedBG:Landroid/graphics/drawable/Drawable;

.field private mSelected:Z

.field private mSelectedBG:Landroid/graphics/drawable/Drawable;

.field private mUnSelectedBG:Landroid/graphics/drawable/Drawable;

.field private mVibratorPattern:[J

.field private mWCRow_ID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 42
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->HorizontalFadingEdgeEnabled:Z

    .line 44
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mWCRow_ID:I

    .line 45
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPageNo:I

    .line 46
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    .line 47
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mVibratorPattern:[J

    .line 77
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mUnSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressedBG:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setClickable(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setMaxLines(I)V

    .line 94
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setGravity(I)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setHorizontallyScrolling(Z)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setFocusableInTouchMode(Z)V

    .line 97
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextColor(I)V

    .line 98
    return-void

    .line 66
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public SetPageNo(I)V
    .locals 0
    .parameter "page_no"

    .prologue
    .line 133
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPageNo:I

    .line 134
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 167
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mWCRow_ID:I

    .line 169
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    .line 170
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelected()V

    .line 171
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    .line 172
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    .line 173
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    .line 174
    return-void
.end method

.method protected feedbackEffect()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getAudioService()Lcom/htc/android/htcime/util/AudioService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->playSoundEffect(Lcom/htc/android/htcime/util/AudioService;I)V

    .line 303
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectMS(Landroid/os/Vibrator;)V

    .line 304
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    return v0
.end method

.method public getPageNo()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPageNo:I

    return v0
.end method

.method public getWCRowID()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mWCRow_ID:I

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter "htcIMM"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 108
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->feedbackEffect()V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->callOnClick()Z

    move-result v0

    return v0
.end method

.method public refreshDrawableState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->refreshDrawableState()V

    .line 239
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->isPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    if-eq v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    .line 244
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    if-ne v0, v3, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->setPressed()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_0

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelected()V

    goto :goto_0
.end method

.method public setPressed()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextColor(I)V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x712

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 233
    :cond_1
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 228
    :cond_3
    const v0, -0x1f005000

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setPressedBG(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressedBG:Landroid/graphics/drawable/Drawable;

    .line 287
    return-void
.end method

.method public setSecPressedBG(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    .line 296
    return-void
.end method

.method public setSecSelectedBG(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 292
    return-void
.end method

.method public setSelected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    .line 182
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextColor(I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setSelectedBG(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 283
    return-void
.end method

.method public setTextandIndex(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "index"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/WordCandsView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mCandsIndex:I

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mPressState:Z

    .line 161
    return-void
.end method

.method public setUnSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mSelected:Z

    .line 206
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mUnSelectedBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mUnSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :goto_0
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextColor(I)V

    .line 211
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setUnSelectedBG(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mUnSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 279
    return-void
.end method

.method public setWCRowID(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 115
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsView;->mWCRow_ID:I

    .line 116
    return-void
.end method
