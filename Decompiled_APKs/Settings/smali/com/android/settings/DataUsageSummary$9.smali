.class Lcom/android/settings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$9;->this$0:Lcom/android/settings/DataUsageSummary;

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
    .line 1054
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1055
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    .line 1056
    .local v0, app:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$9;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v2

    .line 1057
    .local v2, detail:Lcom/android/settings/net/UidDetail;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$9;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    iget-object v5, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings/DataUsageSummary;[ILjava/lang/CharSequence;)V

    .line 1058
    return-void
.end method
