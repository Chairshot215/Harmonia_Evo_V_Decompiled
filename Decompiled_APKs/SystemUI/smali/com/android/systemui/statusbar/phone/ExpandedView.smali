.class public Lcom/android/systemui/statusbar/phone/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# instance fields
.field mPrevHeight:I

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    return-void
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public getSuggestedMinimumHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    :cond_0
    return-void
.end method
