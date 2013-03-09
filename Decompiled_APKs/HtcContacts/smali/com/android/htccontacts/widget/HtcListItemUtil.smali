.class final Lcom/android/htccontacts/widget/HtcListItemUtil;
.super Ljava/lang/Object;
.source "HtcListItemUtil.java"


# static fields
.field static sBottomTextGap:I

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
    sput v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    .line 12
    sput v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGap:I

    .line 13
    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGapRate:D

    .line 14
    sput v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sBottomTextGap:I

    .line 16
    sput v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    .line 17
    sput v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    .line 19
    sput v3, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextSize:I

    .line 20
    sput v3, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextSize:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPrimaryTextBottomYPosition()I
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getPrimaryTextHeight()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    return v0
.end method

.method static getPrimaryTextTopYPosition()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    return v0
.end method

.method static getSecondaryTextBottomYPosition()I
    .locals 6

    .prologue
    .line 91
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    sget v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGap:I

    int-to-double v2, v2

    sget-wide v4, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGapRate:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method static getSecondaryTextHeight()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    return v0
.end method

.method static getSecondaryTextTopYPosition()I
    .locals 6

    .prologue
    .line 87
    sget v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    sget v1, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    sget v2, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGap:I

    int-to-double v2, v2

    sget-wide v4, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGapRate:D

    mul-double/2addr v2, v4

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

    .line 55
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 57
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 60
    const v3, 0x20c023c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 63
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 64
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
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

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    return v3
.end method

.method static getTotalHeightOfListItem()I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getSecondaryTextBottomYPosition()I

    move-result v0

    sget v1, Lcom/android/htccontacts/widget/HtcListItemUtil;->sBottomTextGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method static setAll(Landroid/content/Context;IIDI)V
    .locals 0
    .parameter "context"
    .parameter "position"
    .parameter "center_gap"
    .parameter "rate"
    .parameter "bottom_gap"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setPrimaryTextTopYPosition(I)V

    .line 24
    invoke-static {p2}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGap(I)V

    .line 25
    invoke-static {p3, p4}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setCenterTextGapRate(D)V

    .line 26
    invoke-static {p5}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setBottomTextGap(I)V

    .line 27
    invoke-static {p0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->setTextHeight(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method static setBottomTextGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 43
    sput p0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sBottomTextGap:I

    .line 44
    return-void
.end method

.method static setCenterTextGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 35
    sput p0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGap:I

    .line 36
    return-void
.end method

.method static setCenterTextGapRate(D)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 39
    sput-wide p0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sTextCenterGapRate:D

    .line 40
    return-void
.end method

.method static setPrimaryTextTopYPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 31
    sput p0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextTopYPosition:I

    .line 32
    return-void
.end method

.method static setTextHeight(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextSize:I

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextSize:I

    .line 50
    const v0, 0x2030036

    invoke-static {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sPrimaryTextHeight:I

    .line 51
    const v0, 0x203003d

    invoke-static {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/widget/HtcListItemUtil;->sSecondaryTextHeight:I

    .line 52
    return-void
.end method
