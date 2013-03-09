.class public Lcom/android/systemui/statusbar/tablet/CompatModePanel;
.super Landroid/widget/FrameLayout;
.source "CompatModePanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompatModePanel"


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mOffButton:Landroid/widget/RadioButton;

.field private mOnButton:Landroid/widget/RadioButton;

.field private mTrigger:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    return-void
.end method

.method private refresh()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getFrontActivityScreenCompatMode()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v4, -0x2

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    :goto_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public closePanel()V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->setFrontActivityScreenCompatMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAM:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->setFrontActivityScreenCompatMode(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mAttached:Z

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->refresh()V

    return-void
.end method

.method public openPanel()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->refresh()V

    return-void
.end method

.method public setTrigger(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mTrigger:Landroid/view/View;

    return-void
.end method
