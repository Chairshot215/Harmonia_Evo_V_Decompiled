.class public Lcom/android/systemui/statusbar/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# instance fields
.field mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateSkinResource()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v5, "status_bar_item_background"

    const v6, 0x7f0200ca

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/LatestItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/systemui/statusbar/LatestItemView;->setPadding(IIII)V

    :cond_0
    return-void
.end method
