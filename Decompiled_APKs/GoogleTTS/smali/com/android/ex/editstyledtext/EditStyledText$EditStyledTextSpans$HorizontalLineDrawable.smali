.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalLineDrawable"
.end annotation


# static fields
.field private static DBG_HL:Z


# instance fields
.field private mSpannable:Landroid/text/Spannable;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2701
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    return-void
.end method

.method public constructor <init>(IILandroid/text/Spannable;)V
    .locals 1
    .parameter "color"
    .parameter "width"
    .parameter "spannable"

    .prologue
    .line 2704
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2705
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2706
    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    .line 2707
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor(I)V

    .line 2708
    invoke-virtual {p0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewBounds(I)V

    .line 2709
    return-void
.end method

.method private getParentSpan()Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2754
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2755
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    .line 2757
    array-length v2, v0

    if-lez v2, :cond_1

    .line 2758
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2759
    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_0

    move-object v0, v1

    .line 2765
    :goto_1
    return-object v0

    .line 2758
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2764
    :cond_1
    const-string v0, "EditStyledTextSpan"

    const-string v1, "---renewBounds: Couldn\'t find"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private renewColor()V
    .locals 4

    .prologue
    .line 2739
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getParentSpan()Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    move-result-object v0

    .line 2740
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2741
    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2742
    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2743
    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 2745
    sget-boolean v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v1, :cond_0

    .line 2746
    const-string v1, "EditStyledTextSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- renewColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    .line 2749
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor(I)V

    .line 2751
    :cond_1
    return-void
.end method

.method private renewColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 2732
    sget-boolean v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v0, :cond_0

    .line 2733
    const-string v0, "EditStyledTextSpan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- renewColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2736
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 2713
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor()V

    .line 2714
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2715
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2716
    return-void
.end method

.method public renewBounds(I)V
    .locals 6
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    .line 2719
    const/16 v1, 0x14

    .line 2720
    .local v1, MARGIN:I
    const/16 v0, 0x14

    .line 2721
    .local v0, HEIGHT:I
    sget-boolean v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v2, :cond_0

    .line 2722
    const-string v2, "EditStyledTextSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- renewBounds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_0
    if-le p1, v1, :cond_1

    .line 2725
    sub-int/2addr p1, v1

    .line 2727
    :cond_1
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    .line 2728
    invoke-virtual {p0, v5, v5, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->setBounds(IIII)V

    .line 2729
    return-void
.end method
