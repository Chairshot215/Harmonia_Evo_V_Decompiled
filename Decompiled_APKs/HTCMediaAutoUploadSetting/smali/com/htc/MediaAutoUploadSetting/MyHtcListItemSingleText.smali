.class public Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;
.super Landroid/view/View;
.source "MyHtcListItemSingleText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyHtcListItemSingleText"


# instance fields
.field private mBottomMargin:I

.field private mInit:Z

.field private mLeftMargin:I

.field private mRealHeightOfText:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mTopShift:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopShift:I

    .line 21
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    .line 22
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    .line 23
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    .line 24
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    .line 25
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRealHeightOfText:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopShift:I

    .line 21
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    .line 22
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    .line 23
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    .line 24
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    .line 25
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRealHeightOfText:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 20
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopShift:I

    .line 21
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    .line 22
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    .line 23
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    .line 24
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    .line 25
    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRealHeightOfText:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 32
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    .line 38
    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    iget v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->setPadding(IIII)V

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 61
    const-string v0, "MyHtcListItemSingleText"

    const-string v1, "onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, text:Ljava/lang/String;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 120
    .local v6, bounds:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v7, v1, v2, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 122
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextView.getMeasuredWidth(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds.width(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeasuredHeight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextView.getLineHeight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 130
    const-string v0, "MyHtcListItemSingleText"

    const-string v1, "single line"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    .line 144
    :cond_0
    :goto_0
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopMargin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "MyHtcListItemSingleText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextView.getMeasuredHeight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 150
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget v2, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, p4, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    .line 152
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    goto/16 :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    const-string v0, "MyHtcListItemSingleText"

    const-string v1, "2 line"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mInit:Z

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mLeftMargin:I

    iget v4, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRightMargin:I

    invoke-virtual {v1, v3, v6, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 105
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 106
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, text:Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v6, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRealHeightOfText:I

    .line 111
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mRealHeightOfText:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopShift:I

    .line 112
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopMargin:I

    iget v5, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTopShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mBottomMargin:I

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 95
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->requestLayout()V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->requestLayout()V

    .line 76
    return-void
.end method

.method public setTextStyle(I)V
    .locals 2
    .parameter "defStyle"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->requestLayout()V

    .line 70
    return-void
.end method
