.class Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdvancedKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .parameter
    .parameter "background"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    iput p3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 174
    iput p4, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 175
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 177
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 181
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 186
    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$000(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mThreshold:I

    .line 187
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v5, :cond_1

    .line 206
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 207
    .local v3, paint:Landroid/graphics/Paint;
    iget v4, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 208
    .local v4, width:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 209
    .local v2, height:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 212
    .local v1, diff:I
    invoke-virtual {p1, v6, v6, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 213
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$100(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$100(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->CURRENT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 215
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$100(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$100(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 220
    :cond_0
    iget v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v5, v5

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float v0, v5, v6

    .line 221
    .local v0, baseline:F
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    #getter for: Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->access$000(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v6, v1, v4

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 232
    .end local v0           #baseline:F
    .end local v1           #diff:I
    .end local v2           #height:I
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #width:I
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 233
    iget v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 247
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 252
    return-void
.end method

.method public setDiff(I)V
    .locals 2
    .parameter "diff"

    .prologue
    .line 190
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    iput p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 196
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 197
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 198
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method
