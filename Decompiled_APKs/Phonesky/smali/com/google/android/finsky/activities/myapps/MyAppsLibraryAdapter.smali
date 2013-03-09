.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "MyAppsLibraryAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;
    }
.end annotation


# static fields
.field private static sEnableRemoveAppsFromLibrary:Z


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mHasAccountSwitcher:Z

.field private final mHasDocumentView:Z

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mOnActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/finsky/config/G;->enableRemoveAppsFromLibrary:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->sEnableRemoveAppsFromLibrary:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;Landroid/view/View$OnLongClickListener;Z)V
    .locals 2
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "onClickListener"
    .parameter "onActionListener"
    .parameter "onLongClickListener"
    .parameter "hasDocumentView"

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 70
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 71
    iput-boolean p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasDocumentView:Z

    .line 72
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 73
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;

    .line 74
    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 75
    return-void
.end method

.method private getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 198
    :cond_0
    const v1, 0x7f080113

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 200
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 201
    return-object p1
.end method

.method private getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasDocumentView:Z

    if-eqz v2, :cond_2

    const v2, 0x7f040061

    :goto_0
    invoke-virtual {p0, v2, p3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 168
    check-cast v0, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 169
    .local v0, entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 171
    if-nez p1, :cond_3

    .line 172
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTag(Ljava/lang/Object;)V

    .line 191
    return-object p2

    .line 164
    .end local v0           #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_2
    const v2, 0x7f040081

    goto :goto_0

    .line 176
    .restart local v0       #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 177
    sget-boolean v2, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->sEnableRemoveAppsFromLibrary:Z

    if-eqz v2, :cond_1

    .line 178
    invoke-static {p1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const v1, 0x7f0200a1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;

    const v3, 0x7f070297

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->configureActionPack(ILcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;I)V

    .line 181
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->hideActionPack()V

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "v"

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    .line 98
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->isMoreDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_2
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_1

    .line 140
    add-int/lit8 p1, p1, -0x1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 116
    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No footer or item at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    const/4 v0, 0x1

    .line 130
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 120
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 127
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x3

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x4

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected retryLoadingItems()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems()V

    .line 209
    :cond_0
    return-void
.end method

.method public setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 0
    .parameter "dfeList"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public showAccountSwitcher()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
