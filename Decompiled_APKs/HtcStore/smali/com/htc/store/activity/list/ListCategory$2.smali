.class Lcom/htc/store/activity/list/ListCategory$2;
.super Ljava/lang/Object;
.source "ListCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 731
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "onClick"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 734
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v3, v3, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 735
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v3, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    .line 739
    .local v2, switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :goto_0
    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v1

    .line 740
    .local v1, item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 742
    .local v0, actionType:I
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "actionType: "

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "onlineItemId: "

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 745
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$800(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByPromoItem(Landroid/content/Context;Lcom/htc/store/module/vo/PromoItem;)V

    .line 756
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v2           #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :cond_0
    :goto_1
    return-void

    .line 737
    :cond_1
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v3, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    .restart local v2       #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    goto :goto_0

    .line 746
    .restart local v0       #actionType:I
    .restart local v1       #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_2
    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 747
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/ActivityUtils;->startActivityByIntentString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 749
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Invalid actionType"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 753
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v2           #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Network is not available."

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$2;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V
    invoke-static {v3}, Lcom/htc/store/activity/list/ListCategory;->access$1000(Lcom/htc/store/activity/list/ListCategory;)V

    goto :goto_1
.end method
