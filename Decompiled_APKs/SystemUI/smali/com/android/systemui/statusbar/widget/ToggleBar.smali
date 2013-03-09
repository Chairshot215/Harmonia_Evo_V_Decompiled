.class public Lcom/android/systemui/statusbar/widget/ToggleBar;
.super Landroid/view/View;
.source "ToggleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;,
        Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;
    }
.end annotation


# instance fields
.field private bFocus:Z

.field private bTouchable:Z

.field private bound:Landroid/graphics/Rect;

.field private context:Landroid/content/Context;

.field private curProgress1:I

.field private curProgress2:I

.field private drawback:Landroid/graphics/drawable/Drawable;

.field private drawplayed:Landroid/graphics/drawable/Drawable;

.field private drawplayed2:Landroid/graphics/drawable/Drawable;

.field private drawthumb:Landroid/graphics/drawable/Drawable;

.field private drawthumbToggle:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private maxProgress:I

.field private measuredWidth:I

.field private secAlpha:I

.field private secEnable:Z

.field private seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

.field private startLeft:I

.field private startTop:I

.field private tglEnable:Z

.field private thumbHeight:I

.field private thumbStartTop:I

.field private thumbWidth:I

.field private toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

.field private toggleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/widget/ToggleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f020243

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secAlpha:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    iput-object v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->updateResources()V

    return-void
.end method

.method private initialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    return v0
.end method

.method public getProgress1()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    return v0
.end method

.method public getProgress2()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    return v0
.end method

.method public getToggleSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->initialize()V

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setMeasuredDimension(II)V

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress2(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onStartTrackingTouch()V

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    if-gez v0, :cond_2

    move v0, v5

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le v0, v5, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    invoke-interface {v5, v6, v10}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onProgressChanged(IZ)V

    goto/16 :goto_0

    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-double v6, v0

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v6, v6

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    if-gez v0, :cond_5

    move v0, v5

    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le v0, v5, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    invoke-interface {v5, v2, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;->onToggleChanged(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onStopTrackingTouch()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxProgress(I)V
    .locals 0

    if-lez p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    return-void

    :cond_0
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setOnToggleBarChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    return-void
.end method

.method public setOnToggleChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 7

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le p1, v2, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->invalidate()V

    return-void
.end method

.method public setProgress2(I)V
    .locals 7

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le p1, v2, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->invalidate()V

    return-void
.end method

.method public setSecondEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    return-void
.end method

.method public setToggleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    return-void
.end method

.method public setToggleSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    return-void

    :cond_0
    const/4 p1, 0x3

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    :cond_0
    return-void
.end method
