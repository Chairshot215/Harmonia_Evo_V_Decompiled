.class public Lcom/google/android/gm/CanvasConversationHeaderView;
.super Landroid/view/View;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;,
        Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;,
        Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
    }
.end annotation


# static fields
.field private static ACTIVATED_TEXT_COLOR:I

.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static CHECKMARK_OFF:Landroid/graphics/Bitmap;

.field private static CHECKMARK_ON:Landroid/graphics/Bitmap;

.field private static DATE_BACKGROUND:Landroid/graphics/Bitmap;

.field private static DATE_BACKGROUND_PADDING_LEFT:I

.field private static DATE_TEXT_COLOR_READ:I

.field private static DATE_TEXT_COLOR_UNREAD:I

.field private static DEFAULT_TEXT_COLOR:I

.field private static DRAFT_TEXT_COLOR:I

.field private static IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

.field private static IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

.field private static IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

.field private static LIGHT_TEXT_COLOR:I

.field private static MORE_LABELS:Landroid/graphics/Bitmap;

.field private static ONLY_TO_ME:Landroid/graphics/Bitmap;

.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SNIPPET_TEXT_COLOR_READ:I

.field private static SNIPPET_TEXT_COLOR_UNREAD:I

.field private static STAR_OFF:Landroid/graphics/Bitmap;

.field private static STAR_ON:Landroid/graphics/Bitmap;

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I

.field private static TOUCH_SLOP:I

.field private static TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

.field private static sDateBackgroundHeight:I

.field private static sFadedActivatedColor:I

.field private static sFadedColor:I

.field private static sGmail:Lcom/google/android/gm/provider/Gmail;

.field private static sLabelsPaint:Landroid/text/TextPaint;

.field private static sLayoutCount:I

.field private static sLightTextStyle:Landroid/text/style/CharacterStyle;

.field private static sNormalTextStyle:Landroid/text/style/CharacterStyle;

.field private static sPaint:Landroid/text/TextPaint;

.field private static sStandardScaledDimen:I

.field private static sTimer:Lcom/google/android/gm/perf/Timer;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mBackgrounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mChecked:Z

.field private final mContext:Landroid/content/Context;

.field mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

.field private mDateX:I

.field private mDisplayedLabel:Ljava/lang/CharSequence;

.field private mDownEvent:Z

.field private mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

.field private mIsSearch:Z

.field private mLabelsXEnd:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mMode:I

.field private mPaperclipX:I

.field private final mPriorityMarkersEnabled:Z

.field private mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

.field private mSendersWidth:I

.field private mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

.field private mTesting:Z

.field private mViewMode:Lcom/google/android/gm/ViewMode;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    .line 94
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    .line 95
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    .line 132
    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 133
    sput v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 136
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 137
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mBackgrounds:Landroid/util/SparseArray;

    .line 101
    iput v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 102
    iput v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    .line 109
    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mTesting:Z

    .line 121
    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    .line 280
    iput-object p2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    .line 281
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 285
    const v2, 0x7f020006

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    .line 287
    const v2, 0x7f020007

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_ON:Landroid/graphics/Bitmap;

    .line 289
    const v2, 0x7f02000a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    .line 291
    const v2, 0x7f02000e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    .line 293
    const v2, 0x7f020025

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 294
    const v2, 0x7f020028

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 295
    const v2, 0x7f020026

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 297
    const v2, 0x7f020029

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 299
    const v2, 0x7f020027

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    .line 301
    const v2, 0x7f02002e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->MORE_LABELS:Landroid/graphics/Bitmap;

    .line 302
    const v2, 0x7f020021

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 303
    const v2, 0x7f02004a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_BACKGROUND:Landroid/graphics/Bitmap;

    .line 306
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DEFAULT_TEXT_COLOR:I

    .line 307
    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->ACTIVATED_TEXT_COLOR:I

    .line 308
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->LIGHT_TEXT_COLOR:I

    .line 309
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DRAFT_TEXT_COLOR:I

    .line 310
    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_TEXT_COLOR_READ:I

    .line 311
    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 312
    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SNIPPET_TEXT_COLOR_READ:I

    .line 313
    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SNIPPET_TEXT_COLOR_UNREAD:I

    .line 314
    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_TEXT_COLOR_READ:I

    .line 315
    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 316
    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_TEXT_COLOR_READ:I

    .line 317
    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_TEXT_COLOR_UNREAD:I

    .line 318
    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_BACKGROUND_PADDING_LEFT:I

    .line 320
    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->TOUCH_SLOP:I

    .line 321
    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateBackgroundHeight:I

    .line 322
    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sStandardScaledDimen:I

    .line 325
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    .line 326
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->LIGHT_TEXT_COLOR:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sLightTextStyle:Landroid/text/style/CharacterStyle;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sGmail:Lcom/google/android/gm/provider/Gmail;

    .line 332
    :cond_0
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    .line 333
    .local v0, persistence:Lcom/google/android/gm/persistence/Persistence;
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getPriorityInboxArrowsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPriorityMarkersEnabled:Z

    .line 334
    return-void
.end method

.method static synthetic access$000()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLabelsPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateBackgroundHeight:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/android/gm/provider/Gmail;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sGmail:Lcom/google/android/gm/provider/Gmail;

    return-object v0
.end method

.method static synthetic access$300(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->MORE_LABELS:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method private addItem(Landroid/content/ClipData;Ljava/lang/Object;)V
    .locals 2
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1014
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1015
    return-void
.end method

.method private calculateCoordinates()V
    .locals 25

    .prologue
    .line 624
    const-string v1, "CCHV.coordinates"

    invoke-static {v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->startTimer(Ljava/lang/String;)V

    .line 626
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 627
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateXEnd:I

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    .line 630
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 634
    .local v9, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->displayLabelsAboveDate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateXEnd:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsXEnd:I

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersWidth:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    .line 649
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationHeaderViewModel;->isLayoutValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    const-string v1, "CCHV.coordinates"

    invoke-static {v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    .line 757
    :goto_1
    return-void

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclip:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsXEnd:I

    .line 643
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsXEnd:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersX:I

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    invoke-virtual {v1}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->hasVisibleLabels()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    invoke-static {v2, v3}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getLabelsWidth(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    goto :goto_0

    .line 641
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsXEnd:I

    goto :goto_2

    .line 655
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->layoutSubject()V

    .line 658
    const/16 v22, 0x0

    .line 659
    .local v22, totalWidth:I
    const/4 v13, 0x0

    .line 660
    .local v13, fixedWidth:I
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 661
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    .line 663
    .local v17, senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v21, v0

    .line 664
    .local v21, style:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    move/from16 v20, v0

    .line 665
    .local v20, start:I
    move-object/from16 v0, v17

    iget v12, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    .line 666
    .local v12, end:I
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 667
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move/from16 v0, v20

    invoke-virtual {v1, v2, v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    .line 668
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    move/from16 v16, v0

    .line 669
    .local v16, isFixed:Z
    if-eqz v16, :cond_4

    .line 670
    move-object/from16 v0, v17

    iget v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    add-int/2addr v13, v1

    .line 672
    :cond_4
    move-object/from16 v0, v17

    iget v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    add-int v22, v22, v1

    .line 673
    goto :goto_3

    .line 676
    .end local v12           #end:I
    .end local v16           #isFixed:Z
    .end local v17           #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .end local v20           #start:I
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersAscent:I

    sub-int v18, v1, v2

    .line 677
    .local v18, sendersY:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->displaySendersInline(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    move/from16 v0, v22

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineHeight:I

    div-int/lit8 v1, v1, 0x2

    :goto_4
    add-int v18, v18, v1

    .line 680
    :cond_6
    const/16 v22, 0x0

    .line 681
    const/4 v10, 0x1

    .line 682
    .local v10, currentLine:I
    const/4 v11, 0x0

    .line 683
    .local v11, ellipsize:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    .line 684
    .restart local v17       #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v21, v0

    .line 685
    .restart local v21       #style:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    move/from16 v20, v0

    .line 686
    .restart local v20       #start:I
    move-object/from16 v0, v17

    iget v12, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    .line 687
    .restart local v12       #end:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    move/from16 v23, v0

    .line 688
    .local v23, width:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    move/from16 v16, v0

    .line 689
    .restart local v16       #isFixed:Z
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 692
    if-eqz v11, :cond_8

    if-nez v16, :cond_8

    .line 693
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->shouldDisplay:Z

    goto :goto_5

    .line 678
    .end local v10           #currentLine:I
    .end local v11           #ellipsize:Z
    .end local v12           #end:I
    .end local v16           #isFixed:Z
    .end local v17           #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .end local v20           #start:I
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    .end local v23           #width:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 698
    .restart local v10       #currentLine:I
    .restart local v11       #ellipsize:Z
    .restart local v12       #end:I
    .restart local v16       #isFixed:Z
    .restart local v17       #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .restart local v20       #start:I
    .restart local v21       #style:Landroid/text/style/CharacterStyle;
    .restart local v23       #width:I
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 699
    if-eqz v16, :cond_9

    .line 700
    sub-int v13, v13, v23

    .line 702
    :cond_9
    add-int v1, v22, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v13}, Lcom/google/android/gm/CanvasConversationHeaderView;->canFitFragment(III)Z

    move-result v1

    if-nez v1, :cond_c

    .line 705
    if-nez v22, :cond_d

    .line 706
    const/4 v11, 0x1

    .line 723
    :cond_a
    :goto_6
    if-eqz v11, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    sub-int v23, v1, v22

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineCount:I

    if-ne v10, v1, :cond_b

    .line 728
    sub-int v23, v23, v13

    .line 730
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move/from16 v0, v20

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move/from16 v0, v23

    int-to-float v3, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 733
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    move/from16 v23, v0

    .line 736
    :cond_c
    const/4 v1, 0x1

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->shouldDisplay:Z

    .line 737
    add-int v22, v22, v23

    .line 740
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 741
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 745
    .local v14, fragmentDisplayText:Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    .line 746
    .local v19, spanStart:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    move/from16 v0, v19

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 709
    .end local v14           #fragmentDisplayText:Ljava/lang/CharSequence;
    .end local v19           #spanStart:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineCount:I

    if-ge v10, v1, :cond_e

    .line 710
    add-int/lit8 v10, v10, 0x1

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineHeight:I

    add-int v18, v18, v1

    .line 712
    const/16 v22, 0x0

    .line 715
    add-int v1, v22, v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    if-le v1, v2, :cond_a

    .line 716
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 719
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 743
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move/from16 v0, v20

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #fragmentDisplayText:Ljava/lang/CharSequence;
    goto :goto_7

    .line 751
    .end local v12           #end:I
    .end local v14           #fragmentDisplayText:Ljava/lang/CharSequence;
    .end local v16           #isFixed:Z
    .end local v17           #senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    .end local v20           #start:I
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    .end local v23           #width:I
    :cond_10
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 752
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    move-object/from16 v24, v0

    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v24

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    .line 756
    const-string v1, "CCHV.coordinates"

    invoke-static {v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private calculateTextsAndBitmaps()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 426
    const-string v7, "CCHV.txtsbmps"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->startTimer(Ljava/lang/String;)V

    .line 428
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v10, v10, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 432
    sget v7, Lcom/google/android/gm/CanvasConversationHeaderView;->DEFAULT_TEXT_COLOR:I

    invoke-direct {p0, v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->getFontColor(I)I

    move-result v2

    .line 433
    .local v2, fontColor:I
    const/4 v1, 0x0

    .line 434
    .local v1, fontChanged:Z
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    if-eq v7, v2, :cond_0

    .line 435
    const/4 v1, 0x1

    .line 436
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput v2, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    .line 439
    :cond_0
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v10, "^u"

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 441
    .local v4, isUnread:Z
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v7

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/google/android/gm/persistence/Persistence;->getHideCheckboxes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v8

    .line 442
    .local v0, checkboxEnabled:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    if-eq v7, v0, :cond_1

    .line 443
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput-boolean v0, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    .line 447
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->updateBackground(Z)V

    .line 449
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/google/android/gm/ConversationHeaderViewModel;->isLayoutValid(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 451
    if-eqz v1, :cond_2

    .line 452
    invoke-direct {p0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->createSubjectSpans(Z)V

    .line 453
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->layoutSubject()V

    .line 455
    :cond_2
    const-string v7, "CCHV.txtsbmps"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    .line 508
    :goto_2
    return-void

    .end local v0           #checkboxEnabled:Z
    .end local v1           #fontChanged:Z
    .end local v2           #fontColor:I
    .end local v4           #isUnread:Z
    :cond_3
    move v7, v9

    .line 428
    goto :goto_0

    .restart local v1       #fontChanged:Z
    .restart local v2       #fontColor:I
    .restart local v4       #isUnread:Z
    :cond_4
    move v0, v9

    .line 441
    goto :goto_1

    .line 460
    .restart local v0       #checkboxEnabled:Z
    :cond_5
    const-string v7, "CCHV.labels"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->startTimer(Ljava/lang/String;)V

    .line 462
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v10, v10, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    iget-object v11, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDisplayedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->loadConversationLabels(Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 465
    const-string v7, "CCHV.labels"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    .line 468
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v10, v10, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v11, "^t"

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    .line 469
    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    :goto_3
    iput-object v7, v10, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    .line 472
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v10, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v11, v11, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    invoke-static {v10, v11, v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    .line 475
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput-object v13, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclip:Landroid/graphics/Bitmap;

    .line 476
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    if-eqz v7, :cond_6

    .line 477
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v10, Lcom/google/android/gm/CanvasConversationHeaderView;->ATTACHMENT:Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclip:Landroid/graphics/Bitmap;

    .line 481
    :cond_6
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput-object v13, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 482
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 483
    .local v5, personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z

    move-result v3

    .line 485
    .local v3, isImportant:Z
    if-eqz v3, :cond_9

    iget-boolean v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPriorityMarkersEnabled:Z

    if-eqz v7, :cond_9

    move v6, v8

    .line 487
    .local v6, useImportantMarkers:Z
    :goto_4
    sget-object v7, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v5, v7, :cond_b

    .line 488
    iget-object v8, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    if-eqz v6, :cond_a

    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    :goto_5
    iput-object v7, v8, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 496
    :cond_7
    :goto_6
    const-string v7, "CCHV.sendersubj"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->startTimer(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->createSubjectSpans(Z)V

    .line 501
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v8, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    .line 504
    invoke-direct {p0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->parseSendersFragments(Z)V

    .line 506
    const-string v7, "CCHV.sendersubj"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    .line 507
    const-string v7, "CCHV.txtsbmps"

    invoke-static {v7}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 469
    .end local v3           #isImportant:Z
    .end local v5           #personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .end local v6           #useImportantMarkers:Z
    :cond_8
    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    goto :goto_3

    .restart local v3       #isImportant:Z
    .restart local v5       #personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    :cond_9
    move v6, v9

    .line 485
    goto :goto_4

    .line 488
    .restart local v6       #useImportantMarkers:Z
    :cond_a
    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 489
    :cond_b
    sget-object v7, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v5, v7, :cond_d

    .line 490
    iget-object v8, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    if-eqz v6, :cond_c

    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    :goto_7
    iput-object v7, v8, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_c
    sget-object v7, Lcom/google/android/gm/CanvasConversationHeaderView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 492
    :cond_d
    if-eqz v6, :cond_7

    .line 493
    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v8, Lcom/google/android/gm/CanvasConversationHeaderView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    iput-object v8, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto :goto_6
.end method

.method private canFitFragment(III)Z
    .locals 4
    .parameter "width"
    .parameter "line"
    .parameter "fixedWidth"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersLineCount:I

    if-ne p2, v2, :cond_2

    .line 617
    add-int v2, p1, p3

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    if-gt v2, v3, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSendersWidth:I

    if-le p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private createSubjectSpans(Z)V
    .locals 13
    .parameter "isUnread"

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 511
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/google/android/gm/CanvasConversationHeaderView;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, subject:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    .line 513
    .local v1, snippet:Ljava/lang/String;
    if-eqz p1, :cond_1

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 514
    .local v4, subjectColor:I
    :goto_0
    if-eqz p1, :cond_2

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SNIPPET_TEXT_COLOR_UNREAD:I

    .line 515
    .local v2, snippetColor:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    const v8, 0x7f0c014b

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    aput-object v1, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    .line 517
    if-eqz p1, :cond_0

    .line 518
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 521
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->getFontColor(I)I

    move-result v0

    .line 522
    .local v0, fontColor:I
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 524
    invoke-direct {p0, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->getFontColor(I)I

    move-result v0

    .line 525
    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v8, v8, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 527
    return-void

    .line 513
    .end local v0           #fontColor:I
    .end local v2           #snippetColor:I
    .end local v4           #subjectColor:I
    :cond_1
    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->SUBJECT_TEXT_COLOR_READ:I

    goto :goto_0

    .line 514
    .restart local v4       #subjectColor:I
    :cond_2
    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->SNIPPET_TEXT_COLOR_READ:I

    goto :goto_1
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V
    .locals 7
    .parameter "canvas"
    .parameter "s"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 942
    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v0, p1

    move-object v1, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 943
    return-void
.end method

.method private filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "subject"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 765
    move-object v2, p1

    .line 766
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, formatString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 768
    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 769
    .local v0, end:I
    if-lez v0, :cond_0

    .line 770
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, tag:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v3, v5}, Lcom/google/android/gm/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .end local v0           #end:I
    .end local v3           #tag:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getFontColor(I)I
    .locals 1
    .parameter "defaultColor"

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/google/android/gm/CanvasConversationHeaderView;->ACTIVATED_TEXT_COLOR:I

    .end local p1
    :cond_0
    return p1
.end method

.method private static getPadding(II)I
    .locals 1
    .parameter "space"
    .parameter "length"

    .prologue
    .line 274
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private layoutSubject()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 535
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 536
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 537
    iget-object v9, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    .line 539
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectLineCount:I

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectLineCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 541
    .local v8, end:I
    iget-object v9, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectText:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    .line 544
    .end local v8           #end:I
    :cond_0
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 820
    .line 821
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 822
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 824
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_0

    .line 836
    :goto_0
    return v0

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getHeight(Landroid/content/Context;I)I

    move-result v1

    .line 830
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 833
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .parameter

    .prologue
    .line 793
    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 795
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 797
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_0

    .line 809
    :goto_0
    return v0

    .line 802
    :cond_0
    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 803
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 806
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private parseSendersFragments(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 550
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 551
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 552
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    iget-object v7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v7, v7, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    invoke-virtual {v7}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->hasVisibleLabels()Z

    move-result v7

    iget-object v9, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v9, v9, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    invoke-static {v4, v6, v7, v9}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getSubjectLength(Landroid/content/Context;IZZ)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v7, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->hasDraftMessage:Z

    move v6, v5

    move v9, v5

    invoke-static/range {v0 .. v9}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V

    .line 558
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 560
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v2, v5, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 562
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationHeaderViewModel;->clearSenderFragments()V

    .line 564
    sget-object v1, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    .line 565
    if-eqz v0, :cond_3

    .line 566
    array-length v7, v0

    move v4, v5

    move v1, v5

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v9, v0, v4

    .line 568
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 569
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 570
    if-le v10, v1, :cond_0

    .line 571
    iget-object v11, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v12, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v11, v1, v10, v12, v5}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 576
    :cond_0
    if-eqz p1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v1, v10, v6, v9, v5}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 566
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v6

    goto :goto_0

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v9, Lcom/google/android/gm/CanvasConversationHeaderView;->sNormalTextStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v1, v10, v6, v9, v5}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    goto :goto_1

    :cond_2
    move v5, v1

    .line 584
    :cond_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 585
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sLightTextStyle:Landroid/text/style/CharacterStyle;

    .line 586
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2, v0, v8}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 588
    :cond_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 589
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 590
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 594
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    .line 595
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    add-int/lit8 v4, v0, 0x2

    .line 596
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-object v5, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 600
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    .line 603
    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v6, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 608
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 609
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    .line 610
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/google/android/gm/CanvasConversationHeaderView;->DRAFT_TEXT_COLOR:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v8}, Lcom/google/android/gm/ConversationHeaderViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 613
    :cond_6
    return-void
.end method

.method private static pauseTimer(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 372
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method

.method private selectConversation()V
    .locals 3

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 1024
    :cond_0
    return-void
.end method

.method private setCheckedActivatedBackground()V
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const v0, 0x7f020052

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private static startTimer(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 366
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method private stopDragMode()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->onStopDragMode()V

    .line 1071
    return-void
.end method

.method private toggleStar()V
    .locals 7

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    .line 1005
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v6, v6, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;->toggleStar(ZJJLjava/util/Map;)V

    .line 1007
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starred:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_ON:Landroid/graphics/Bitmap;

    :goto_1
    iput-object v0, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    .line 1008
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starX:I

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starY:I

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starX:I

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starY:I

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gm/CanvasConversationHeaderView;->postInvalidate(IIII)V

    .line 1011
    return-void

    .line 1003
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1007
    :cond_1
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->STAR_OFF:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private touchCheckmark(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1076
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1077
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchStar(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1077
    goto :goto_0

    .line 1081
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersX:I

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->TOUCH_SLOP:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private touchStar(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starX:I

    sget v1, Lcom/google/android/gm/CanvasConversationHeaderView;->TOUCH_SLOP:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBackground(Z)V
    .locals 1
    .parameter

    .prologue
    .line 960
    if-eqz p1, :cond_3

    .line 961
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_0

    .line 963
    const v0, 0x7f02005a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    .line 989
    :goto_0
    return-void

    .line 965
    :cond_0
    const v0, 0x7f020018

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0

    .line 968
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_2

    .line 969
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setCheckedActivatedBackground()V

    goto :goto_0

    .line 971
    :cond_2
    const v0, 0x7f020016

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 976
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_4

    .line 977
    const v0, 0x7f020056

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0

    .line 979
    :cond_4
    const v0, 0x7f020017

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0

    .line 982
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_6

    .line 983
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setCheckedActivatedBackground()V

    goto :goto_0

    .line 985
    :cond_6
    const v0, 0x7f020015

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/ViewMode;Z)V
    .locals 3
    .parameter "cursor"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "account"
    .parameter "displayedLabel"
    .parameter "selectedConversationSet"
    .parameter "viewMode"
    .parameter "isSearch"

    .prologue
    .line 343
    iput-object p2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 344
    iput-object p3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    .line 345
    iput-object p4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    .line 346
    iput-object p5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDisplayedLabel:Ljava/lang/CharSequence;

    .line 347
    iput-object p6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 348
    iput-boolean p8, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mIsSearch:Z

    .line 349
    iput-object p7, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gm/ConversationHeaderViewModel;->forConversationId(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationHeaderViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    .line 352
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationHeaderViewModel;->getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->requestLayout()V

    .line 354
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1137
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1139
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->stopDragMode()V

    .line 1140
    const/4 v0, 0x1

    goto :goto_0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 842
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    if-eqz v0, :cond_0

    .line 843
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_ON:Landroid/graphics/Bitmap;

    .line 844
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->checkmarkX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->checkmarkY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->personalLevelX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->personalLevelY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 854
    :cond_1
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 855
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 856
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    const-string v1, "^u"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 857
    if-eqz v1, :cond_7

    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_TEXT_COLOR_UNREAD:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getFontColor(I)I

    move-result v0

    .line 859
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 861
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersX:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersY:I

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 863
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 867
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 868
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 869
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->fontColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 870
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 871
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectX:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectY:I

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 873
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 874
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 877
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLabelsXEnd:I

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->drawLabels(Landroid/graphics/Canvas;Lcom/google/android/gm/ConversationHeaderViewCoordinates;II)V

    .line 882
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->isActivated()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    iget-object v0, v0, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_2
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    invoke-static {v0}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->showAttachmentBackground(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_BACKGROUND:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateBackground:Landroid/graphics/Bitmap;

    .line 887
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    :goto_2
    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_BACKGROUND_PADDING_LEFT:I

    sub-int/2addr v0, v2

    .line 889
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->labelsY:I

    .line 890
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v4, v4, Lcom/google/android/gm/ConversationHeaderViewModel;->dateBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->dateBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 892
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    sget v6, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateBackgroundHeight:I

    add-int/2addr v6, v2

    invoke-direct {v4, v0, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 893
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateBackground:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 899
    :goto_3
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 900
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 901
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_a

    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_TEXT_COLOR_UNREAD:I

    :goto_4
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 902
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v0, v0, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateY:I

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->dateAscent:I

    sub-int v4, v0, v1

    sget-object v5, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/CanvasConversationHeaderView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V

    .line 906
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclip:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->paperclip:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mPaperclipX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->paperclipY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-boolean v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    if-eqz v0, :cond_5

    .line 912
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-eqz v0, :cond_b

    .line 913
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    if-ne v0, v7, :cond_4

    .line 914
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 916
    :cond_4
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedColor:I

    .line 917
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 938
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v0, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->starBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->starY:I

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 939
    return-void

    .line 843
    :cond_6
    sget-object v0, Lcom/google/android/gm/CanvasConversationHeaderView;->CHECKMARK_OFF:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 857
    :cond_7
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_1

    .line 887
    :cond_8
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDateX:I

    goto/16 :goto_2

    .line 895
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateBackground:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 901
    :cond_a
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->DATE_TEXT_COLOR_READ:I

    goto/16 :goto_4

    .line 921
    :cond_b
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    if-ne v0, v7, :cond_c

    .line 922
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 925
    :cond_c
    sget v0, Lcom/google/android/gm/CanvasConversationHeaderView;->sFadedActivatedColor:I

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 928
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 931
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 933
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 379
    const-string v2, "CCHV.layout"

    invoke-static {v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->startTimer(Ljava/lang/String;)V

    .line 381
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 383
    sub-int v1, p4, p2

    .line 384
    .local v1, width:I
    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    if-eq v1, v2, :cond_0

    .line 385
    iput v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    .line 386
    iget-boolean v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mTesting:Z

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    iget-boolean v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mIsSearch:Z

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getMode(Landroid/content/Context;Lcom/google/android/gm/ViewMode;Z)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    iput v3, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->viewWidth:I

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    const v3, 0x7f0e003b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->standardScaledDimen:I

    .line 393
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->standardScaledDimen:I

    sget v3, Lcom/google/android/gm/CanvasConversationHeaderView;->sStandardScaledDimen:I

    if-eq v2, v3, :cond_1

    .line 395
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewModel;->standardScaledDimen:I

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sStandardScaledDimen:I

    .line 396
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->refreshConversationHeights(Landroid/content/Context;)V

    .line 397
    const v2, 0x7f0e0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sDateBackgroundHeight:I

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewWidth:I

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->standardScaledDimen:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->forWidth(Landroid/content/Context;III)Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    .line 401
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->calculateTextsAndBitmaps()V

    .line 402
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->calculateCoordinates()V

    .line 403
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/ConversationHeaderViewModel;->validate(Landroid/content/Context;)V

    .line 405
    const-string v2, "CCHV.layout"

    invoke-static {v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->pauseTimer(Ljava/lang/String;)V

    .line 406
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    .line 407
    sget-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v2}, Lcom/google/android/gm/perf/Timer;->dumpResults()V

    .line 408
    new-instance v2, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v2}, Lcom/google/android/gm/perf/Timer;-><init>()V

    sput-object v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sTimer:Lcom/google/android/gm/perf/Timer;

    .line 409
    const/4 v2, 0x0

    sput v2, Lcom/google/android/gm/CanvasConversationHeaderView;->sLayoutCount:I

    .line 411
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;->measureWidth(I)I

    move-result v1

    .line 781
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    iget-boolean v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mIsSearch:Z

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->getMode(Landroid/content/Context;Lcom/google/android/gm/ViewMode;Z)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->measureHeight(II)I

    move-result v0

    .line 783
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->setMeasuredDimension(II)V

    .line 784
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1093
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1094
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1095
    .local v2, y:I
    iput v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchX:I

    .line 1096
    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchY:I

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1123
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 1124
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1127
    :cond_1
    return v0

    .line 1099
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    .line 1100
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchCheckmark(FF)Z

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchStar(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1101
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1106
    :pswitch_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    goto :goto_0

    .line 1110
    :pswitch_3
    iget-boolean v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mDownEvent:Z

    if-eqz v3, :cond_0

    .line 1111
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchCheckmark(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1113
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 1118
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1114
    :cond_4
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/CanvasConversationHeaderView;->touchStar(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1116
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleStar()V

    goto :goto_1

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 416
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 421
    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_1
    return-void
.end method

.method public setFaded(Z)V
    .locals 1
    .parameter "faded"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iput-boolean p1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 1186
    return-void
.end method

.method setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 361
    iput p1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMode:I

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mTesting:Z

    .line 363
    return-void
.end method

.method public toggleCheckMark()V
    .locals 6

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mChecked:Z

    .line 950
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v1, v1, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-wide v3, v3, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mHeader:Lcom/google/android/gm/ConversationHeaderViewModel;

    iget-object v5, v5, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ConversationSelectionSet;->toggle(JJLjava/util/Map;)V

    .line 956
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->requestLayout()V

    .line 957
    return-void

    .line 949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleSelectionOrBeginDrag()V
    .locals 7

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 1064
    :cond_1
    :goto_0
    return-void

    .line 1041
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->selectConversation()V

    .line 1042
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->onStartDragMode()V

    .line 1046
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v3

    .line 1047
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    const v1, 0x7f10001a

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v6

    .line 1054
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 1055
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    .line 1056
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    .line 1057
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->addItem(Landroid/content/ClipData;Ljava/lang/Object;)V

    goto :goto_1

    .line 1061
    :cond_3
    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchX:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchY:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getHeight()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/CanvasConversationHeaderView;->getWidth()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1062
    new-instance v0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;

    iget v4, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchX:I

    iget v5, p0, Lcom/google/android/gm/CanvasConversationHeaderView;->mLastTouchY:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;-><init>(Lcom/google/android/gm/CanvasConversationHeaderView;Landroid/view/View;III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v6, v0, v1, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method
