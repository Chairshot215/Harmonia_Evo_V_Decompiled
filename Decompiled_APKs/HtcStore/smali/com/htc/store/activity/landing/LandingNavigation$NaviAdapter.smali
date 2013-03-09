.class Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "LandingNavigation.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaviAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEADER_COUNT_LAND:I = 0x0

.field private static final DEFAULT_HEADER_COUNT_PORT:I = 0x1


# instance fields
.field private mCategory:J

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Landroid/content/Context;IJLandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "category"
    .parameter "c"

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    .line 2204
    invoke-direct {p0, p2, p3, p6}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 2199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mCategory:J

    .line 2205
    invoke-virtual {p1}, Lcom/htc/store/activity/landing/LandingNavigation;->getCategoryId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mCategory:J

    .line 2206
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x7f020008

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;

    .line 2212
    .local v0, holder:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2213
    .local v2, onlineId:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2214
    .local v3, onlineLabel:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2216
    .local v4, onlineSubLabel:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2217
    iget-wide v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mCategory:J

    invoke-static {p2, v5, v6, v2}, Lcom/htc/store/util/ImageUtils;->getCategoryIcon(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2218
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2219
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2228
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2229
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2230
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2234
    :goto_1
    return-void

    .line 2221
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0

    .line 2224
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "onlineId is empty, skip set icon"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2225
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0

    .line 2232
    :cond_2
    iget-object v5, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCategoryItem(I)Lcom/htc/store/module/vo/CategoryItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 2288
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2289
    :cond_0
    const/4 v1, 0x0

    .line 2290
    .local v1, item:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2291
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2292
    invoke-static {v0}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v1

    .line 2294
    :cond_1
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2238
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2239
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    .line 2240
    .local v0, holder:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;
    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 2241
    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 2242
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2243
    return-object v1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const-wide/16 v8, -0x2

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2249
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    if-ne v5, v6, :cond_4

    .line 2250
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    if-eqz v5, :cond_3

    .line 2251
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v1

    .line 2263
    .local v1, headerCount:I
    :goto_0
    if-lt p3, v1, :cond_2

    .line 2264
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/store/activity/landing/LandingNavigation;->access$6600(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2265
    sub-int v5, p3, v1

    invoke-virtual {p0, v5}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->getCategoryItem(I)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v2

    .line 2266
    .local v2, item:Lcom/htc/store/module/vo/CategoryItem;
    if-eqz v2, :cond_2

    .line 2267
    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 2268
    .local v0, actionType:I
    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    .line 2271
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v6, v6, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v5, v2, v4, v3}, Lcom/htc/store/util/ActivityUtils;->startCategoryListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)V

    .line 2285
    .end local v0           #actionType:I
    .end local v2           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_2
    :goto_1
    return-void

    .line 2253
    .end local v1           #headerCount:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #headerCount:I
    goto :goto_0

    .line 2256
    .end local v1           #headerCount:I
    :cond_4
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-eqz v5, :cond_5

    .line 2257
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v5}, Lcom/htc/store/module/view/HubListView;->getHeaderViewsCount()I

    move-result v1

    .restart local v1       #headerCount:I
    goto :goto_0

    .line 2259
    .end local v1           #headerCount:I
    :cond_5
    const/4 v1, 0x1

    .restart local v1       #headerCount:I
    goto :goto_0

    .line 2272
    .restart local v0       #actionType:I
    .restart local v2       #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_6
    const/4 v5, 0x5

    if-ne v0, v5, :cond_8

    .line 2273
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v6, v6, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    :goto_2
    invoke-static {v5, v2, v4}, Lcom/htc/store/util/ActivityUtils;->startItemListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)V

    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    .line 2274
    :cond_8
    const/4 v5, 0x7

    if-ne v0, v5, :cond_9

    .line 2275
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/ActivityUtils;->startActivityByIntentString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2277
    :cond_9
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Invalid action: "

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2281
    .end local v0           #actionType:I
    .end local v2           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_a
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "Network is not available."

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2282
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$6700(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto :goto_1
.end method
