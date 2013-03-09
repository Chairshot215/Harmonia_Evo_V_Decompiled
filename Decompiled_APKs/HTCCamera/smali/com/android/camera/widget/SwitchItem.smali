.class public Lcom/android/camera/widget/SwitchItem;
.super Landroid/widget/LinearLayout;
.source "SwitchItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SwitchItem$OnSwitchChangedListener;
    }
.end annotation


# static fields
.field public static final STATUS_LEFT:I = 0x0

.field public static final STATUS_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SwitchItem"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_IndicatorContainer:Landroid/widget/LinearLayout;

.field private m_Indicator_btn:Landroid/widget/RelativeLayout;

.field private m_IsDisable:Z

.field private m_LeftItem:Lcom/android/camera/widget/ImageTextView;

.field private m_RightItem:Lcom/android/camera/widget/ImageTextView;

.field private m_Status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->initialize()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    return v0
.end method

.method public initialize()V
    .locals 6

    const v5, 0x7f0b0043

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03004a

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f08019d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f08019e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    const v3, 0x7f08019c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ImageTextView;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    const v3, 0x7f08019f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ImageTextView;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    return-void
.end method

.method public setDisable()V
    .locals 4

    const/16 v3, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    return-void
.end method

.method public setStatus(I)V
    .locals 5

    iput p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const-string v1, "SwitchItem"

    const-string v2, "m_IndicatorContainer is null!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0018

    const v4, 0x7f0200c3

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1
.end method

.method public setText(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    return-void
.end method

.method public switchStatus()V
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->switchToLeft()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->switchToRight()V

    goto :goto_0
.end method

.method public switchToLeft()V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_0
.end method

.method public switchToRight()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_0
.end method
