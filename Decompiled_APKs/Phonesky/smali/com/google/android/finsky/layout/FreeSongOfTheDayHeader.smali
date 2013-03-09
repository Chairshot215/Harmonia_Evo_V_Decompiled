.class public Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;
.super Landroid/widget/LinearLayout;
.source "FreeSongOfTheDayHeader.java"


# instance fields
.field private mBottomStrip:Landroid/view/View;

.field private mHeader:Landroid/widget/TextView;

.field private mSpacer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mHeader:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mSpacer:Landroid/view/View;

    .line 38
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mBottomStrip:Landroid/view/View;

    .line 39
    return-void
.end method

.method public showDealOfTheDayInfo(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)V
    .locals 4
    .parameter "dealOfTheDayInfo"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getFeaturedHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, dealColor:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 46
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mBottomStrip:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 51
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->mSpacer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method
