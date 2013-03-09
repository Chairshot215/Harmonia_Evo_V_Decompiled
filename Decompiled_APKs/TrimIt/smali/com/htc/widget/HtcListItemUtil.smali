.class final Lcom/htc/widget/HtcListItemUtil;
.super Ljava/lang/Object;
.source "HtcListItemUtil.java"


# static fields
.field static sBottomTextGap:I

.field static sExtraGap:I

.field static sMinimumItemHeight:I

.field static sPrimaryTextHeight:I

.field static sPrimaryTextSize:I

.field static sPrimaryTextTopYPosition:I

.field static sSecondaryTextHeight:I

.field static sSecondaryTextSize:I

.field static sTextCenterGap:I

.field static sTextCenterGapRate:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 11
    sput v2, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    .line 12
    sput v2, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    .line 13
    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    .line 14
    sput v2, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    .line 16
    sput v2, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    .line 17
    sput v2, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    .line 19
    sput v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:I

    .line 20
    sput v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:I

    .line 22
    sput v3, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    .line 23
    sput v3, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPrimaryTextBottomYPosition()I
    .locals 2

    .prologue
    .line 93
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getPrimaryTextHeight()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    return v0
.end method

.method static getPrimaryTextTopYPosition()I
    .locals 2

    .prologue
    .line 89
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getSecondaryTextBottomYPosition()I
    .locals 6

    .prologue
    .line 101
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    sget v2, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    int-to-double v2, v2

    sget-wide v4, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method static getSecondaryTextHeight()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    return v0
.end method

.method static getSecondaryTextTopYPosition()I
    .locals 6

    .prologue
    .line 97
    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    sget v2, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    int-to-double v2, v2

    sget-wide v4, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sget v2, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static getTextHeight(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "style"

    .prologue
    const/4 v4, 0x1

    .line 65
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 70
    const v3, 0x20c023c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 74
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    return v3
.end method

.method static getTotalHeightOfListItem()I
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBottomYPosition()I

    move-result v1

    sget v2, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    add-int v0, v1, v2

    .line 107
    .local v0, currentHeight:I
    sget v1, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    if-le v1, v0, :cond_0

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    .end local v0           #currentHeight:I
    :cond_0
    return v0
.end method

.method static setAll(Landroid/content/Context;IIIDI)V
    .locals 2
    .parameter "context"
    .parameter "min_height"
    .parameter "position"
    .parameter "center_gap"
    .parameter "rate"
    .parameter "bottom_gap"

    .prologue
    .line 26
    const/4 v1, 0x0

    sput v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    .line 27
    invoke-static {p2}, Lcom/htc/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    .line 28
    invoke-static {p3}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGap(I)V

    .line 29
    invoke-static {p4, p5}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    .line 30
    invoke-static {p6}, Lcom/htc/widget/HtcListItemUtil;->setBottomTextGap(I)V

    .line 31
    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->setTextHeight(Landroid/content/Context;)V

    .line 32
    sput p1, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    .line 34
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v0

    .line 35
    .local v0, currentHeight:I
    if-le p1, v0, :cond_0

    .line 36
    sub-int v1, p1, v0

    div-int/lit8 v1, v1, 0x3

    sput v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    .line 38
    :cond_0
    return-void
.end method

.method static setBottomTextGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 53
    sput p0, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    .line 54
    return-void
.end method

.method static setCenterTextGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 45
    sput p0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    .line 46
    return-void
.end method

.method static setCenterTextGapRate(D)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 49
    sput-wide p0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    .line 50
    return-void
.end method

.method static setPrimaryTextTopYPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 41
    sput p0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    .line 42
    return-void
.end method

.method static setTextHeight(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:I

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:I

    .line 60
    const v0, 0x2030036

    invoke-static {p0, v0}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    .line 61
    const v0, 0x203003d

    invoke-static {p0, v0}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    .line 62
    return-void
.end method
