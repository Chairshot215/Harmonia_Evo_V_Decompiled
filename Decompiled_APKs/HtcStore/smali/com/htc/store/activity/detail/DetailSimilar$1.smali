.class Lcom/htc/store/activity/detail/DetailSimilar$1;
.super Ljava/lang/Object;
.source "DetailSimilar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$1;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$1;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$000(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$1;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isOkToGetSimilar()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$100(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$1;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const/4 v1, 0x1

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->retrieveInfo(Z)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$1;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->showNoNetworkDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$300(Lcom/htc/store/activity/detail/DetailSimilar;)V

    goto :goto_0
.end method
