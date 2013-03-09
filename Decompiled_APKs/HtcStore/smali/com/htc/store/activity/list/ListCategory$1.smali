.class Lcom/htc/store/activity/list/ListCategory$1;
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
    .line 713
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$1;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 717
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "onRefreshClick"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$1;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$400(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$1;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->doRefresh()V
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$500(Lcom/htc/store/activity/list/ListCategory;)V

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$1;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$600(Lcom/htc/store/activity/list/ListCategory;)V

    goto :goto_0
.end method
