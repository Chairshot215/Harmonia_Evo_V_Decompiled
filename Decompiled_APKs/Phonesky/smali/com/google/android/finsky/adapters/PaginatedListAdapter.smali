.class public abstract Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaginatedListAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mRetryClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "navManager"
    .parameter "isRequestInErrorState"
    .parameter "isRequestLoading"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mRetryClickListener:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p4, :cond_1

    .line 80
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/PaginatedListAdapter;Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    return-void
.end method

.method private setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method


# virtual methods
.method protected getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    const v2, 0x7f080126

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    .local v0, retryButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mRetryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .end local v0           #retryButton:Landroid/widget/Button;
    :cond_0
    const v2, 0x7f080044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->getLastRequestError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-object p1
.end method

.method protected getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getLastRequestError()Ljava/lang/String;
.end method

.method protected getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 98
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const v0, 0x7f040096

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method protected inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isMoreDataAvailable()Z
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->isMoreDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    goto :goto_0
.end method

.method protected abstract retryLoadingItems()V
.end method

.method public triggerFooterErrorMode()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    .line 146
    return-void
.end method
