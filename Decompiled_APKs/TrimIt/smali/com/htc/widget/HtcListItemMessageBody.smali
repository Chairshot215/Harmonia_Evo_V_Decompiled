.class public Lcom/htc/widget/HtcListItemMessageBody;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItemMessageBody.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# static fields
.field static final LOG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HtcListItemMessageBody"

.field static MAX_BADGES:I = 0x0

.field static final MAX_NUM_TEXT:I = 0x2

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I


# instance fields
.field private mBadge:Lcom/htc/widget/QuickContactBadge;

.field private mBadgeLeftMargin:I

.field private mBadgePositionY:I

.field private mBadgeSize:I

.field private mBadges:[Landroid/widget/ImageView;

.field private mBadgesRightMargin:I

.field private mBallShift:I

.field private mBody:Landroid/widget/TextView;

.field private mBodyBottomMargin:I

.field private mBodyFontSize:I

.field private mBodyTopMargin:I

.field private mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

.field private mColorBar:Lcom/htc/widget/HtcListItemColorBar;

.field private mColorBarWidth:I

.field private mDesiredBadgeSize:I

.field private mFontSize:[I

.field private mImageComponentWidth:I

.field protected mIsMarqueeEnabled:Z

.field private mMinComponentHeight:I

.field private mMode:I

.field private mRealHeightOfText:[I

.field private mSecondaryTextBottomY:I

.field private mStamp:Landroid/widget/TextView;

.field private mStampPositionY:I

.field private mText:[Landroid/widget/TextView;

.field private mTextLeftMargin:I

.field private mTextRightMargin:I

.field private mTextTopY:[I

.field private mToggleButton:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 42
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    .line 43
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 44
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    .line 45
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    .line 53
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    .line 54
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    .line 70
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    .line 71
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 72
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 236
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 42
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    .line 43
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 44
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    .line 45
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    .line 53
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    .line 54
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    .line 70
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    .line 71
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 72
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 80
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 252
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    .line 253
    iput p2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 258
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 259
    return-void

    .line 255
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 42
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    .line 43
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 44
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    .line 45
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    .line 53
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    .line 54
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    .line 70
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    .line 71
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 72
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 42
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    .line 43
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 44
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    .line 45
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    .line 53
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    .line 54
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    .line 70
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    .line 71
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 72
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 78
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method private addAllChild()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 100
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemColorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 622
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGap(I)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setBottomTextGap(I)V

    .line 122
    new-instance v1, Lcom/htc/widget/HtcListItemColorBar;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemColorBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 123
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 126
    new-instance v1, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v1, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    .line 127
    new-instance v1, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 128
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    .line 129
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 130
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    .line 131
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    .line 134
    new-array v1, v7, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v6

    .line 136
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    .line 137
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    .line 138
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    .line 139
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    .line 141
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v6

    .line 142
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v5

    .line 144
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v2

    aput v2, v1, v6

    .line 145
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v2

    aput v2, v1, v5

    .line 147
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    .line 148
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    .line 151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    .line 152
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    .line 155
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 158
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    const v2, 0x20809af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    const v2, 0x20809aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    const v2, 0x20809a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x20809ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const v2, 0x20809ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x20809a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    .line 170
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x208058b

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 171
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 172
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    .line 181
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    .line 183
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 184
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBottomYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 188
    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v1, :cond_1

    .line 189
    const v1, 0x2030036

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 190
    const v1, 0x203003d

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 191
    const v1, 0x203003d

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 192
    const v1, 0x20300c3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    .line 200
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 203
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 204
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 207
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 209
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 214
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 226
    :goto_2
    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingTop:I

    .line 227
    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingRight:I

    .line 228
    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingLeft:I

    .line 229
    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingBottom:I

    .line 231
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->addAllChild()V

    .line 232
    return-void

    .line 194
    :cond_1
    const v1, 0x2030012

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 195
    const v1, 0x2030025

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 196
    const v1, 0x2030025

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 197
    const v1, 0x20300d1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_1

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 217
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 219
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 220
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 90
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 97
    return-void

    .line 93
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 94
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 390
    const/4 v1, 0x0

    .local v1, cLeft:I
    const/4 v3, 0x0

    .local v3, cTop:I
    const/4 v2, 0x0

    .local v2, cRight:I
    const/4 v0, 0x0

    .line 393
    .local v0, cBottom:I
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_0

    .line 394
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Lcom/htc/widget/HtcListItemColorBar;->layout(IIII)V

    .line 395
    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    .line 399
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_5

    .line 400
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v1, v7

    .line 401
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 402
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v2, v1, v7

    .line 403
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v0, v3, v7

    .line 404
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 406
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_1

    .line 407
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    sub-int v2, v7, v8

    .line 408
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 409
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 410
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v7

    sub-int v3, v0, v7

    .line 412
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    .line 414
    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int v1, v7, v8

    .line 420
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_6

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_6

    .line 421
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    aget v7, v7, v10

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 422
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 423
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 424
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 426
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 427
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 428
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 429
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 443
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    sub-int v5, v7, v8

    .line 444
    .local v5, left:I
    iget v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    .line 445
    .local v6, top:I
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_3

    .line 446
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 447
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 450
    :cond_3
    sget v7, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_8

    .line 451
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_4

    .line 452
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 453
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 450
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 416
    .end local v4           #i:I
    .end local v5           #left:I
    .end local v6           #top:I
    :cond_5
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    add-int/2addr v1, v7

    goto/16 :goto_0

    .line 430
    :cond_6
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 431
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 432
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 433
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 434
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 435
    :cond_7
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 437
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 438
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 439
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 457
    .restart local v4       #i:I
    .restart local v5       #left:I
    .restart local v6       #top:I
    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v5, v7, v8

    .line 458
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 459
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 462
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    .line 463
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    add-int v6, v7, v8

    .line 464
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 465
    return-void
.end method

.method private revertLayout()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 468
    const/4 v1, 0x0

    .local v1, cLeft:I
    const/4 v3, 0x0

    .local v3, cTop:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v2

    .local v2, cRight:I
    const/4 v0, 0x0

    .line 471
    .local v0, cBottom:I
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_0

    .line 472
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v8, v10, v2, v9}, Lcom/htc/widget/HtcListItemColorBar;->layout(IIII)V

    .line 473
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 477
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_5

    .line 478
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v2, v7

    .line 479
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 480
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int v1, v2, v7

    .line 481
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v0, v3, v7

    .line 482
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 484
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    add-int v1, v7, v8

    .line 486
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 487
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 488
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v7

    sub-int v3, v0, v7

    .line 490
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v8, v9

    sub-int v2, v7, v8

    .line 498
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_6

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_6

    .line 499
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    aget v7, v7, v10

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 500
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 501
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 502
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 504
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 505
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 506
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 507
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 521
    :cond_2
    :goto_1
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    rsub-int/lit8 v5, v7, 0x0

    .line 522
    .local v5, left:I
    iget v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    .line 523
    .local v6, top:I
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_3

    .line 524
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 525
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 528
    :cond_3
    sget v7, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_8

    .line 529
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_4

    .line 530
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 531
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 528
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 494
    .end local v4           #i:I
    .end local v5           #left:I
    .end local v6           #top:I
    :cond_5
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    sub-int/2addr v2, v7

    goto/16 :goto_0

    .line 508
    :cond_6
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 509
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 510
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 511
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 512
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 513
    :cond_7
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 515
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 516
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 517
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 535
    .restart local v4       #i:I
    .restart local v5       #left:I
    .restart local v6       #top:I
    :cond_8
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    rsub-int/lit8 v5, v7, 0x0

    .line 536
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 537
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 540
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    .line 541
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    add-int v6, v7, v8

    .line 542
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 543
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    if-nez p2, :cond_1

    .line 645
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 646
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 649
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    if-nez p2, :cond_1

    .line 632
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 633
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 3
    .parameter "index"
    .parameter "defStyle"

    .prologue
    .line 615
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 617
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    aget v2, v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 619
    :cond_0
    return-void
.end method


# virtual methods
.method public enableBadgeComponent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 945
    if-eqz p1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 952
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableBodyText(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 927
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 929
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableColorBar(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 936
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableMarquee(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 967
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 993
    :goto_0
    return-void

    .line 969
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 970
    if-eqz p1, :cond_1

    .line 971
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 972
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 973
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 974
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 976
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 977
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 978
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 979
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 981
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 982
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 983
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 984
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 987
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 988
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 989
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 990
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 991
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 796
    if-ltz p1, :cond_0

    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    .line 802
    :goto_0
    return-object v0

    .line 798
    :cond_0
    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    .line 802
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeState(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 781
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 781
    goto :goto_0

    .line 782
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_3

    .line 783
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 786
    goto :goto_0
.end method

.method public getBodyTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorBarImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemColorBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 279
    :goto_0
    return-object v0

    .line 275
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 277
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 278
    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->revertLayout()V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "w"
    .parameter "h"

    .prologue
    .line 287
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 288
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 290
    .local v16, widthSize:I
    move/from16 v10, v16

    .line 291
    .local v10, textWidth1:I
    move/from16 v11, v16

    .line 293
    .local v11, textWidth2:I
    const/4 v12, 0x0

    .line 294
    .local v12, totalBodyWidth:I
    move/from16 v8, v16

    .line 296
    .local v8, noBadgeWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v8, v8, v17

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v11, v11, v17

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v8, v8, v17

    .line 309
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 314
    :cond_2
    const/4 v4, 0x0

    .line 315
    .local v4, badgesWidth:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v17, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v4, v4, v17

    .line 315
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v4, v4, v17

    .line 329
    :cond_5
    const/4 v9, 0x0

    .line 330
    .local v9, stampWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v11, v11, v17

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 337
    :cond_6
    if-nez v15, :cond_d

    .line 338
    const/4 v7, 0x0

    .line 339
    .local v7, maxTextWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    add-int v17, v17, v4

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 343
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int v12, v12, v17

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    add-int v12, v12, v17

    .line 367
    .end local v7           #maxTextWidth:I
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    .line 369
    .local v13, usedHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 370
    if-nez v15, :cond_11

    move v5, v12

    .line 371
    .local v5, bodyWidth:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v5, v5, v17

    .line 374
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    sub-int v18, v5, v18

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 380
    .end local v5           #bodyWidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/htc/widget/HtcListItemColorBar;->measure(II)V

    .line 384
    :cond_c
    if-nez v15, :cond_12

    move v14, v12

    .line 385
    .local v14, usedWidth:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 386
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/widget/HtcListItemMessageBody;->setMeasuredDimension(II)V

    .line 387
    return-void

    .line 351
    .end local v13           #usedHeight:I
    .end local v14           #usedWidth:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    .line 357
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_1

    .line 360
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_1

    .line 362
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_1

    .restart local v13       #usedHeight:I
    :cond_11
    move v5, v8

    .line 370
    goto/16 :goto_2

    :cond_12
    move v14, v8

    .line 384
    goto/16 :goto_3

    .line 385
    .restart local v14       #usedWidth:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v14, v17, v18

    goto/16 :goto_4
.end method

.method public setBadgeState(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 766
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 767
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 767
    goto :goto_0

    .line 768
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setBodyText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 864
    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public setBodyTextLine(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 904
    return-void
.end method

.method public setBodyTextMaxLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 920
    return-void
.end method

.method public setBodyTextMinLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 912
    return-void
.end method

.method public setBodyTextResource(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 872
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public setBodyTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 895
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 896
    return-void
.end method

.method public setBodyVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    return-void
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public setColorBarImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 579
    return-void
.end method

.method public setColorBarImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    return-void
.end method

.method public setColorBarImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    .line 570
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 964
    :cond_0
    return-void

    .line 958
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 960
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 961
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 262
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 263
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 266
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 283
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 695
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 748
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 4
    .parameter "defStyle"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 847
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 848
    return-void
.end method

.method public setTextStamp(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 829
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setTextStamp(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 821
    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 812
    return-void
.end method
