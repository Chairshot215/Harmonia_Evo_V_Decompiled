.class public Lcom/google/android/finsky/layout/SubscriptionsSection;
.super Landroid/widget/LinearLayout;
.source "SubscriptionsSection.java"


# instance fields
.field private final mIsTwoColumnLayout:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mIsTwoColumnLayout:Z

    .line 33
    return-void
.end method


# virtual methods
.method public addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V
    .locals 3
    .parameter "doc"
    .parameter "subscriptionDetails"
    .parameter "subscriptionItemLayoutId"
    .parameter "cancelListener"
    .parameter "savedState"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SubscriptionView;

    .line 41
    .local v0, subscriptionView:Lcom/google/android/finsky/layout/SubscriptionView;
    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/google/android/finsky/layout/SubscriptionView;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public clearSubscriptions()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->removeAllViews()V

    .line 47
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/google/android/finsky/layout/SubscriptionView;

    if-eqz v2, :cond_0

    .line 68
    check-cast v0, Lcom/google/android/finsky/layout/SubscriptionView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SubscriptionView;->saveInstanceState(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public syncSeparatorVisibility()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mIsTwoColumnLayout:Z

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildCount()I

    move-result v0

    .line 55
    .local v0, childCount:I
    if-eqz v0, :cond_0

    .line 58
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/SubscriptionView;

    .line 59
    .local v1, firstSubscription:Lcom/google/android/finsky/layout/SubscriptionView;
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SubscriptionView;->showTopSeparator()V

    .line 60
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SubscriptionView;

    .line 61
    .local v2, lastSubscription:Lcom/google/android/finsky/layout/SubscriptionView;
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/SubscriptionView;->hideBottomSeparator()V

    goto :goto_0
.end method
