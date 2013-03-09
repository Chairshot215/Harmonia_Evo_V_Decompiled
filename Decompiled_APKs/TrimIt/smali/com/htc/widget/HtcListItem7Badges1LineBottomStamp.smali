.class public Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;
.super Lcom/htc/widget/HtcListItemComponent;
.source "HtcListItem7Badges1LineBottomStamp.java"


# static fields
.field static MAX_BADGES:I = 0x0

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I


# instance fields
.field private mBadgePositionY:I

.field private mBadges:[Landroid/widget/ImageView;

.field private mBadgesRightMargin:I

.field private mContext:Landroid/content/Context;

.field private mDesiredBadgeSize:I

.field private mIsMarqueeEnabled:Z

.field private mMode:I

.field private mRealHeightOfText:I

.field private mStamp:Landroid/widget/TextView;

.field private mStampFontSize:I

.field private mStampPositionY:I

.field private mToggleButton:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 30
    iput-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 146
    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    .line 147
    iput p2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 151
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 152
    return-void

    .line 149
    :cond_0
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method private addAllChild()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iput-object p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 72
    sget v1, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 73
    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    .line 74
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 81
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    const v2, 0x20809af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    const v2, 0x20809aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x20809a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x20809ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    const v2, 0x20809ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x20809a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    .line 93
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextTopYPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampPositionY:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgePositionY:I

    .line 96
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x208058b

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 98
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 99
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 105
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 107
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 113
    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    if-nez v1, :cond_2

    .line 114
    const v1, 0x203003d

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    .line 119
    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingTop:I

    .line 120
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingRight:I

    .line 121
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingLeft:I

    .line 122
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingBottom:I

    .line 124
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mRealHeightOfText:I

    .line 126
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addAllChild()V

    .line 127
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 116
    :cond_2
    const v1, 0x2030025

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 52
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 59
    return-void

    .line 55
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 56
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private originalLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 228
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    sub-int v1, v3, v4

    .line 229
    .local v1, left:I
    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgePositionY:I

    .line 230
    .local v2, top:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 231
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 232
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 235
    :cond_0
    sget v3, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 236
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 237
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 238
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 235
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v1, v3, v4

    .line 243
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampPositionY:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mRealHeightOfText:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 244
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 245
    return-void
.end method

.method private revertLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, left:I
    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgePositionY:I

    .line 210
    .local v2, top:I
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 211
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 212
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 215
    :cond_0
    sget v3, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 216
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 217
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 218
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 215
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_2
    const/4 v1, 0x0

    .line 223
    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampPositionY:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mRealHeightOfText:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 224
    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 225
    return-void
.end method

.method private setCorrectWidth()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 182
    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 187
    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mDesiredBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesRightMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setMeasuredDimension(II)V

    .line 190
    return-void
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 345
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 348
    if-eqz p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 350
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 351
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 352
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 355
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 284
    if-ltz p1, :cond_0

    sget v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    .line 290
    :goto_0
    return-object v0

    .line 286
    :cond_0
    sget v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ne p1, v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    .line 290
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

    .line 268
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 269
    goto :goto_0

    .line 270
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ne p1, v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 274
    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 170
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 171
    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 200
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->revertLayout()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemComponent;->onMeasure(II)V

    .line 195
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setCorrectWidth()V

    .line 196
    return-void
.end method

.method public setBadgeState(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 254
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->MAX_BADGES:I

    if-ne p1, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 336
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setEnabled(Z)V

    .line 338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 339
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 155
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 156
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 159
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 176
    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 331
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    return-void
.end method

.method public setTextStamp(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
