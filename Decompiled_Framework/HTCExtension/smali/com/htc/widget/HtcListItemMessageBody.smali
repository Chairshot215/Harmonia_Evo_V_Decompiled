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

    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    iput p2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addAllChild()V
    .locals 6

    const/4 v5, -0x2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemColorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGap(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->setBottomTextGap(I)V

    new-instance v1, Lcom/htc/widget/HtcListItemColorBar;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemColorBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    new-instance v1, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v1, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    new-array v1, v7, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    new-array v1, v7, [I

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextTopY:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextHeight()I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    const v2, 0x20809af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    const v2, 0x20809aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    const v2, 0x20809a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x20809ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const v2, 0x20809ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x20809a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x208058b

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBottomYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v1, :cond_1

    const v1, 0x2030036

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    const v1, 0x203003d

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    const v1, 0x203003d

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    const v1, 0x20300c3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_2
    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingTop:I

    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingRight:I

    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingLeft:I

    iput v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingBottom:I

    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->addAllChild()V

    return-void

    :cond_1
    const v1, 0x2030012

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    const v1, 0x2030025

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    const v1, 0x2030025

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    const v1, 0x20300d1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Lcom/htc/widget/HtcListItemColorBar;->layout(IIII)V

    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_5

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v1, v7

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v2, v1, v7

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_1

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    sub-int v2, v7, v8

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v7

    sub-int v3, v0, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int v1, v7, v8

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    sub-int v5, v7, v8

    iget v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ToggleButton;->layout(IIII)V

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    :cond_3
    sget v7, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    add-int/lit8 v4, v7, -0x1

    :goto_2
    if-ltz v4, :cond_8

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_4

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    add-int/2addr v1, v7

    goto/16 :goto_0

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v5, v7, v8

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    add-int v6, v7, v8

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

    return-void
.end method

.method private revertLayout()V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v2

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v8, v10, v2, v9}, Lcom/htc/widget/HtcListItemColorBar;->layout(IIII)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemColorBar;->getMeasuredWidth()I

    move-result v8

    sub-int v2, v7, v8

    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_5

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v2, v7

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    sub-int v1, v2, v7

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeSize:I

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBallShift:I

    add-int v1, v7, v8

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v7

    sub-int v3, v0, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    add-int/2addr v8, v9

    sub-int v2, v7, v8

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2
    :goto_1
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    rsub-int/lit8 v5, v7, 0x0

    iget v6, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgePositionY:I

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ToggleButton;->layout(IIII)V

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    :cond_3
    sget v7, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    add-int/lit8 v4, v7, -0x1

    :goto_2
    if-ltz v4, :cond_8

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_4

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    sub-int/2addr v2, v7

    goto/16 :goto_0

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    :cond_8
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    rsub-int/lit8 v5, v7, 0x0

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStampPositionY:I

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mRealHeightOfText:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

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

    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mSecondaryTextBottomY:I

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    add-int v6, v7, v8

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

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    aget v2, v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableBadgeComponent(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableBodyText(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableColorBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableMarquee(Z)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeState(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBodyTextContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorBarImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemColorBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

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

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

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

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsRevert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->revertLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    move/from16 v10, v16

    move/from16 v11, v16

    const/4 v12, 0x0

    move/from16 v8, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemColorBar;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBarWidth:I

    move/from16 v17, v0

    sub-int v8, v8, v17

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v11, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mImageComponentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v8, v8, v17

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    sget v17, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v4, v4, v17

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mDesiredBadgeSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v4, v4, v17

    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgesRightMargin:I

    move/from16 v18, v0

    add-int v9, v17, v18

    :cond_6
    if-nez v15, :cond_d

    const/4 v7, 0x0

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

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int v12, v12, v17

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

    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListItemMessageBody;->mMinComponentHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    if-nez v15, :cond_11

    move v5, v12

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v5, v5, v17

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

    :cond_c
    if-nez v15, :cond_12

    move v14, v12

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

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/widget/HtcListItemMessageBody;->setMeasuredDimension(II)V

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextRightMargin:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItemMessageBody;->mTextLeftMargin:I

    move/from16 v17, v0

    sub-int v11, v11, v17

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

    :cond_11
    move v5, v8

    goto/16 :goto_2

    :cond_12
    move v14, v8

    goto/16 :goto_3

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

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_0

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

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setBodyTextLine(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method

.method public setBodyTextMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setBodyTextMinLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    return-void
.end method

.method public setBodyTextResource(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyTextStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setBodyVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public setColorBarImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColorBarImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColorBarImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mFontSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextStamp(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    return-void
.end method

.method public setTextStamp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
