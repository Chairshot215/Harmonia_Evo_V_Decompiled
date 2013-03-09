.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeSpan"
.end annotation


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final NOTHING:I = 0x2

.field public static final SCROLL:I


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2542
    const v0, 0xffffff

    invoke-direct {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    .line 2543
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "type"
    .parameter "bgc"

    .prologue
    .line 2535
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2536
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    .line 2537
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->checkType(I)Z

    .line 2538
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    .line 2539
    return-void
.end method

.method private checkType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 2587
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return v0

    .line 2590
    :cond_1
    const-string v0, "EditStyledTextSpan"

    const-string v1, "--- Invalid type of MarqueeSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMarqueeColor(II)I
    .locals 8
    .parameter "type"
    .parameter "bgc"

    .prologue
    const v5, 0xffffff

    .line 2554
    const/16 v0, 0x80

    .line 2555
    .local v0, THRESHOLD:I
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 2556
    .local v1, a:I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 2557
    .local v4, r:I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 2558
    .local v3, g:I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 2559
    .local v2, b:I
    if-nez v1, :cond_0

    .line 2560
    const/16 v1, 0x80

    .line 2562
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2580
    const-string v6, "EditStyledText"

    const-string v7, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :goto_0
    :pswitch_0
    return v5

    .line 2564
    :pswitch_1
    if-le v4, v0, :cond_1

    .line 2565
    div-int/lit8 v4, v4, 0x2

    .line 2583
    :goto_1
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_0

    .line 2567
    :cond_1
    rsub-int v5, v4, 0xff

    div-int/lit8 v4, v5, 0x2

    .line 2569
    goto :goto_1

    .line 2571
    :pswitch_2
    if-le v3, v0, :cond_2

    .line 2572
    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 2574
    :cond_2
    rsub-int v5, v3, 0xff

    div-int/lit8 v3, v5, 0x2

    .line 2576
    goto :goto_1

    .line 2562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 2546
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    return v0
.end method

.method public resetColor(I)V
    .locals 1
    .parameter "bgc"

    .prologue
    .line 2550
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    .line 2551
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 2598
    return-void
.end method
