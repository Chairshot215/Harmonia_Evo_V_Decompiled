.class Lcom/htc/usage/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$9;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1169
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .line 1170
    .local v0, app:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary$9;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;
    invoke-static {v3}, Lcom/htc/usage/DataUsageSummary;->access$3000(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/UidDetailProvider;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/usage/net/UidDetailProvider;->getUidDetail(IZ)Lcom/htc/usage/net/UidDetail;

    move-result-object v2

    .line 1171
    .local v2, detail:Lcom/htc/usage/net/UidDetail;
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary$9;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v4, v0, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->uids:[I

    iget-object v5, v2, Lcom/htc/usage/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->show(Lcom/htc/usage/DataUsageSummary;[ILjava/lang/CharSequence;)V

    .line 1172
    return-void
.end method
