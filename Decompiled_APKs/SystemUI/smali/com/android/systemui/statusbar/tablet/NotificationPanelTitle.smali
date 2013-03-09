.class public Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanelTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->playSoundEffect(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    return-void
.end method
