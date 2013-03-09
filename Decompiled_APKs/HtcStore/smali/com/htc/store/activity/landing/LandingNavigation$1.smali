.class Lcom/htc/store/activity/landing/LandingNavigation$1;
.super Ljava/lang/Object;
.source "LandingNavigation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2048
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "onPromoSwitcherClick"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5700(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2050
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoView()Lcom/htc/store/module/view/PromoSwitcher;
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3500(Lcom/htc/store/activity/landing/LandingNavigation;)Lcom/htc/store/module/view/PromoSwitcher;

    move-result-object v2

    .line 2051
    .local v2, switcher:Lcom/htc/store/module/view/PromoSwitcher;
    if-eqz v2, :cond_0

    .line 2052
    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v1

    .line 2053
    .local v1, item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v1, :cond_0

    .line 2054
    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 2055
    .local v0, actionType:I
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "actionType: "

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, " onlineItemId: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2056
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 2057
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5800(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByPromoItem(Landroid/content/Context;Lcom/htc/store/module/vo/PromoItem;)V

    .line 2069
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v2           #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :cond_0
    :goto_0
    return-void

    .line 2058
    .restart local v0       #actionType:I
    .restart local v1       #item:Lcom/htc/store/module/vo/PromoItem;
    .restart local v2       #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 2059
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5900(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/ActivityUtils;->startActivityByIntentString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2061
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Invalid actionType"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2066
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v2           #switcher:Lcom/htc/store/module/view/PromoSwitcher;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Network is not available."

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$1;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingNavigation;->access$6000(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto :goto_0
.end method
