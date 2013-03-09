.class public Lcom/google/android/finsky/layout/AppSecurityPermissions;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    }
.end annotation


# static fields
.field private static final mNewComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpander:Landroid/view/View;

.field private mExpansionState:I

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

.field private mScrollerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    .line 89
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/layout/AppSecurityPermissions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setNormalPermissionsVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/finsky/layout/AppSecurityPermissions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method private isCollapsed()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNormalPermissionsVisibility()V
    .locals 13

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v3

    .line 152
    .local v3, isCollapsed:Z
    if-eqz v3, :cond_1

    const/16 v10, 0x8

    .line 153
    .local v10, visibilityOfNormalPermissions:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 154
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, child:Landroid/view/View;
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I
    invoke-static {v11, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I

    move-result v9

    .line 156
    .local v9, viewType:I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    .line 157
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v9           #viewType:I
    .end local v10           #visibilityOfNormalPermissions:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 161
    .restart local v2       #i:I
    .restart local v10       #visibilityOfNormalPermissions:I
    :cond_2
    if-eqz v3, :cond_3

    .line 207
    :goto_2
    return-void

    .line 170
    :cond_3
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    .line 171
    .local v1, expanderOffsetInScrollParent:I
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 173
    .local v5, parent:Landroid/view/View;
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 174
    .local v4, nextParent:Landroid/view/View;
    instance-of v11, v4, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v11, :cond_4

    .line 184
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 186
    .local v8, scroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    instance-of v11, v5, Lcom/google/android/finsky/activities/PurchaseContentLayout;

    if-eqz v11, :cond_5

    move-object v6, v5

    .line 190
    check-cast v6, Lcom/google/android/finsky/activities/PurchaseContentLayout;

    .line 191
    .local v6, purchaseContentLayout:Lcom/google/android/finsky/activities/PurchaseContentLayout;
    invoke-virtual {v6}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowFooterTop()I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v12

    add-int v7, v11, v12

    .line 197
    .end local v6           #purchaseContentLayout:Lcom/google/android/finsky/activities/PurchaseContentLayout;
    .local v7, scrollTarget:I
    :goto_4
    new-instance v11, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;

    invoke-direct {v11, p0, v8, v7}, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Lcom/google/android/finsky/layout/ObservableScrollView;I)V

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    .line 206
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 177
    .end local v7           #scrollTarget:I
    .end local v8           #scroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v1, v11

    .line 178
    move-object v5, v4

    .line 179
    goto :goto_3

    .line 194
    .restart local v8       #scroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_5
    move v7, v1

    .restart local v7       #scrollTarget:I
    goto :goto_4
.end method

.method private showPermissions()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->removeAllViews()V

    .line 122
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 123
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400a6

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, noPermissions:Landroid/widget/TextView;
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    .line 147
    .end local v2           #noPermissions:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->containsDangerousNewPermissions()Z
    invoke-static {v5}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400a5

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, newPermissions:Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    .line 136
    .end local v1           #newPermissions:Landroid/widget/TextView;
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I
    invoke-static {v5, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I

    move-result v4

    .line 138
    .local v4, viewType:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    invoke-static {v5, p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, view:Landroid/view/View;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 143
    iput-object v3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    .line 145
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "packageName"
    .parameter
    .parameter "savedState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 101
    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-direct {v0, p0, p3}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    .line 104
    iget v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->showPermissions()V

    .line 109
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 213
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 113
    return-void
.end method
