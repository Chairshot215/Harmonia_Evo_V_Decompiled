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

    const/4 v3, 0x0

    const/4 v2, -0x1

    sput v2, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sput v2, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    sput v2, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    sput v2, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    sput v2, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    sput v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:I

    sput v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:I

    sput v3, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    sput v3, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPrimaryTextBottomYPosition()I
    .locals 2

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getPrimaryTextHeight()I
    .locals 1

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    return v0
.end method

.method static getPrimaryTextTopYPosition()I
    .locals 2

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getSecondaryTextBottomYPosition()I
    .locals 6

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

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    return v0
.end method

.method static getSecondaryTextTopYPosition()I
    .locals 6

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

    const/4 v4, 0x1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const v3, 0x20c023c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

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

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    return v3
.end method

.method static getTotalHeightOfListItem()I
    .locals 3

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBottomYPosition()I

    move-result v1

    sget v2, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    add-int v0, v1, v2

    sget v1, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    if-le v1, v0, :cond_0

    sget v0, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    :cond_0
    return v0
.end method

.method static setAll(Landroid/content/Context;IIIDI)V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    invoke-static {p2}, Lcom/htc/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    invoke-static {p3}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGap(I)V

    invoke-static {p4, p5}, Lcom/htc/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    invoke-static {p6}, Lcom/htc/widget/HtcListItemUtil;->setBottomTextGap(I)V

    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->setTextHeight(Landroid/content/Context;)V

    sput p1, Lcom/htc/widget/HtcListItemUtil;->sMinimumItemHeight:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v0

    if-le p1, v0, :cond_0

    sub-int v1, p1, v0

    div-int/lit8 v1, v1, 0x3

    sput v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:I

    :cond_0
    return-void
.end method

.method static setBottomTextGap(I)V
    .locals 0

    sput p0, Lcom/htc/widget/HtcListItemUtil;->sBottomTextGap:I

    return-void
.end method

.method static setCenterTextGap(I)V
    .locals 0

    sput p0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:I

    return-void
.end method

.method static setCenterTextGapRate(D)V
    .locals 0

    sput-wide p0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGapRate:D

    return-void
.end method

.method static setPrimaryTextTopYPosition(I)V
    .locals 0

    sput p0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    return-void
.end method

.method static setTextHeight(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:I

    const v0, 0x2030036

    invoke-static {p0, v0}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    const v0, 0x203003d

    invoke-static {p0, v0}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    return-void
.end method
