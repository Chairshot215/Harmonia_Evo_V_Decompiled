.class public Lcom/google/android/gm/AccountRecentLabelSpinner;
.super Lcom/android/mailcommon/MultiAdapterSpinner;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;,
        Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;
    }
.end annotation


# instance fields
.field private final mAccountAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

.field private mAccountNameView:Landroid/widget/TextView;

.field private final mAnchorView:Landroid/view/View;

.field private mAnchorViewEnabledBackground:Landroid/graphics/drawable/Drawable;

.field private mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

.field private mCurrentAccount:Ljava/lang/String;

.field private mCurrentLabelCanonicalName:Ljava/lang/String;

.field private mDefaultInbox:Ljava/lang/String;

.field private mLabelList:Lcom/google/android/gm/provider/LabelList;

.field private final mLabelListObserver:Landroid/database/DataSetObserver;

.field private mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

.field private mLabelView:Landroid/widget/TextView;

.field private final mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

.field private mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

.field private mStoppedLabelListUpdates:Z

.field private mUiHandler:Lcom/google/android/gm/UiHandler;

.field private mUnreadView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/mailcommon/MultiAdapterSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    .line 68
    iput-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mDefaultInbox:Ljava/lang/String;

    .line 69
    new-instance v4, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/AccountRecentLabelSpinner$1;)V

    iput-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;

    .line 100
    sget-object v4, Lcom/google/android/gm/R$styleable;->MultiAdapterSpinner:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, -0x2

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 103
    .local v2, dropDownWidth:I
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 104
    new-instance v4, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

    .line 105
    new-instance v4, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    .line 106
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;

    iget-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setAdapters([Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;)V

    .line 108
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 110
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040003

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->addView(Landroid/view/View;)V

    .line 112
    const v4, 0x7f0f0013

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;

    .line 113
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorViewEnabledBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    new-instance v5, Lcom/google/android/gm/AccountRecentLabelSpinner$1;

    invoke-direct {v5, p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$1;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;)V

    invoke-virtual {v4, v5}, Lcom/android/mailcommon/MergedAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/android/mailcommon/MergedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mDefaultInbox:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;)Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorViewEnabledBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/provider/LabelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/provider/LabelList;)Lcom/google/android/gm/provider/LabelList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->buildRecentLabels(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentLabelCanonicalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    return-object v0
.end method

.method private buildRecentLabels(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .parameter "currLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v7, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    if-nez v7, :cond_0

    .line 252
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 274
    :goto_0
    return-object v5

    .line 255
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 256
    .local v4, recents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    iget-object v7, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    invoke-virtual {v7}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->getOrderedRecentLabels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v7, v0}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 258
    .local v3, label:Lcom/google/android/gm/provider/Label;
    if-nez v3, :cond_2

    .line 259
    const-string v7, "Gmail"

    const-string v8, "Unable to correlate recent label: %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 263
    :cond_2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mDefaultInbox:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    move v1, v6

    .line 265
    .local v1, excludeLabel:Z
    :goto_2
    if-nez v1, :cond_4

    .line 266
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    .line 272
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v1           #excludeLabel:Z
    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelDisplayComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_0

    .restart local v0       #canonicalName:Ljava/lang/String;
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    :cond_6
    move v1, v5

    .line 263
    goto :goto_2
.end method

.method private cleanupLabelLists()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->unregisterForLabelChanges()V

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 166
    iput-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->unregisterAll()V

    .line 170
    iput-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .line 173
    :cond_1
    iput-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mDefaultInbox:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private resetLabelLists(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    invoke-virtual {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->cancel(Z)Z

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->cleanupLabelLists()V

    .line 246
    new-instance v0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUiHandler:Lcom/google/android/gm/UiHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;Lcom/google/android/gm/UiHandler;)V

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    .line 247
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v0, "Gmail"

    const-string v1, "ignoring resetLabelLists as valid task exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;Lcom/google/android/gm/UiHandler;)V
    .locals 2
    .parameter "sc"
    .parameter "handler"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    .line 142
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->setDataSetChangedCallback(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;)V

    .line 143
    iput-object p2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUiHandler:Lcom/google/android/gm/UiHandler;

    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/mailcommon/MultiAdapterSpinner;->onClick(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 219
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/mailcommon/MultiAdapterSpinner;->onFinishInflate()V

    .line 135
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountNameView:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelView:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUnreadView:Landroid/widget/TextView;

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->cancel(Z)Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->cleanupLabelLists()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mStoppedLabelListUpdates:Z

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mStoppedLabelListUpdates:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->resetLabelLists(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mStoppedLabelListUpdates:Z

    .line 151
    :cond_0
    return-void
.end method

.method public setAccounts([Ljava/lang/String;I)V
    .locals 2
    .parameter "accounts"
    .parameter "currentAccountIndex"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->setAccounts([Ljava/lang/String;)V

    .line 179
    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    aget-object v0, p1, p2

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->setAccount(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->resetLabelLists(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setCurrentLabel(Lcom/google/android/gm/provider/Label;)V
    .locals 6
    .parameter "label"

    .prologue
    const/16 v5, 0x8

    .line 192
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getDisplayNoConversationCount()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getDisplayTotalConversationCount()Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v1

    .line 198
    .local v1, numUnread:I
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, unreadCountString:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUnreadView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUnreadView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    .end local v1           #numUnread:I
    .end local v2           #unreadCountString:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentLabelCanonicalName:Ljava/lang/String;

    if-eq v0, v3, :cond_0

    .line 210
    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentLabelCanonicalName:Ljava/lang/String;

    .line 211
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    invoke-direct {p0, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->buildRecentLabels(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->setLabels(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 203
    .end local v0           #canonicalName:Ljava/lang/String;
    .restart local v1       #numUnread:I
    .restart local v2       #unreadCountString:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUnreadView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 206
    .end local v1           #numUnread:I
    .end local v2           #unreadCountString:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner;->mUnreadView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
