.class Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ListCategory.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListCategory;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    .line 795
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 796
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;

    .line 802
    .local v0, holder:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 804
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 805
    iget-object v5, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 806
    .local v2, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {v2}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v5

    invoke-static {p2, v5, v6}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 810
    .end local v2           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    if-eqz v1, :cond_1

    .line 811
    iget-object v5, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    :goto_0
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, onlineLabel:Ljava/lang/String;
    iget-object v5, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 818
    return-void

    .line 813
    .end local v3           #onlineLabel:Ljava/lang/String;
    :cond_1
    iget-object v5, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v6, 0x7f020008

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0
.end method

.method public getCategoryItem(I)Lcom/htc/store/module/vo/CategoryItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 861
    const/4 v1, 0x0

    .line 862
    .local v1, item:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 863
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 864
    invoke-static {v0}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v1

    .line 866
    :cond_0
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 822
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 823
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;Lcom/htc/store/activity/list/ListCategory$1;)V

    .line 824
    .local v0, holder:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;
    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 825
    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 826
    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 827
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 828
    return-object v1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 833
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3}, Lcom/htc/store/module/view/HubListView;->getHeaderViewsCount()I

    move-result v1

    .line 834
    .local v1, headerViewsCount:I
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "position: "

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "headerViewsCount: "

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$1600(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 837
    if-lt p3, v1, :cond_1

    .line 838
    sub-int v3, p3, v1

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->getCategoryItem(I)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v2

    .line 839
    .local v2, item:Lcom/htc/store/module/vo/CategoryItem;
    if-eqz v2, :cond_1

    .line 840
    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 841
    .local v0, actionType:I
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "actionType: "

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 844
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$1700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v4, v4, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    invoke-static {v3, v2, v6, v4}, Lcom/htc/store/util/ActivityUtils;->startCategoryListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)V

    .line 858
    .end local v0           #actionType:I
    .end local v2           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_1
    :goto_0
    return-void

    .line 845
    .restart local v0       #actionType:I
    .restart local v2       #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 846
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$1800(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v4, v4, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    invoke-static {v3, v2, v4}, Lcom/htc/store/util/ActivityUtils;->startItemListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)V

    goto :goto_0

    .line 847
    :cond_3
    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 848
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$1900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/ActivityUtils;->startActivityByIntentString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Invalid action: "

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 855
    .end local v0           #actionType:I
    .end local v2           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Network is not available."

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$2000(Lcom/htc/store/activity/list/ListCategory;)V

    goto :goto_0
.end method
