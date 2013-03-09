.class public Lcom/google/android/gm/LabelItemView;
.super Landroid/widget/RelativeLayout;
.source "LabelItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelItemView$DropHandler;
    }
.end annotation


# static fields
.field private static DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field private static DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field private static NON_DROPPABLE_TARGET_TEXT_COLOR:I

.field private static SHORTCUT_ICON:Landroid/graphics/Bitmap;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

.field private mInitialLabelTextColor:Landroid/content/res/ColorStateList;

.field private mInitialUnreadCountTextColor:Landroid/content/res/ColorStateList;

.field private mLabel:Lcom/google/android/gm/provider/Label;

.field private mLabelTextView:Landroid/widget/TextView;

.field private mUnreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method private isDroppableTarget(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gm/LabelItemView$DropHandler;->supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/LabelItemView$DropHandler;)V
    .locals 0
    .parameter "account"
    .parameter "label"
    .parameter "dropHandler"

    .prologue
    .line 93
    iput-object p2, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 94
    iput-object p3, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    .line 95
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 160
    :goto_0
    :pswitch_0
    return v0

    .line 111
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialLabelTextColor:Landroid/content/res/ColorStateList;

    .line 114
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialUnreadCountTextColor:Landroid/content/res/ColorStateList;

    .line 115
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    :cond_1
    sget-object v1, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget-object v1, Lcom/google/android/gm/LabelItemView;->DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v1, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/gm/LabelItemView;->mInitialLabelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/gm/LabelItemView;->mInitialUnreadCountTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    if-nez v2, :cond_3

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    iget-object v2, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-interface {v1, p1, v2}, Lcom/google/android/gm/LabelItemView$DropHandler;->handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 74
    sget-object v1, Lcom/google/android/gm/LabelItemView;->SHORTCUT_ICON:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gm/LabelItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f030001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->SHORTCUT_ICON:Landroid/graphics/Bitmap;

    .line 78
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

    .line 80
    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    .line 85
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f0f0010

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0f0012

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gm/LabelItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialLabelTextColor:Landroid/content/res/ColorStateList;

    .line 89
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialUnreadCountTextColor:Landroid/content/res/ColorStateList;

    .line 90
    return-void
.end method
