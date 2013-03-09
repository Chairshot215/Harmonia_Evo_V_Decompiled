.class Lcom/htc/launcher/Launcher$19;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5453
    iput-object p1, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0x7f070003

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5458
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v2}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    if-eqz v2, :cond_1

    .line 5459
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/util/Comparator;

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->CUST_PRIORITY:Ljava/util/Comparator;

    aput-object v2, v0, v3

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    aput-object v2, v0, v4

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    aput-object v2, v0, v5

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    aput-object v2, v0, v6

    .line 5472
    .local v0, comparators:[Ljava/util/Comparator;,"[Ljava/util/Comparator<Lcom/htc/launcher/ApplicationInfo;>;"
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    aget-object v3, v0, p2

    iput-object v3, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    .line 5473
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2}, Lcom/htc/launcher/AllAppsView;->saveLastAllAppsSortMethed()V

    .line 5474
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v2

    aget-object v3, v0, p2

    invoke-virtual {v2, v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sort(Ljava/util/Comparator;)V

    .line 5475
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 5477
    invoke-static {}, Lcom/htc/launcher/Launcher;->access$5000()I

    move-result v2

    if-ne v7, v2, :cond_0

    .line 5478
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2, v7}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/AllAppsListView;

    .line 5479
    .local v1, listView:Lcom/htc/launcher/AllAppsListView;
    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsListView;->isFastScrollAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/AllAppsListView;->setFastScrollEnabled(Z)V

    .line 5482
    .end local v1           #listView:Lcom/htc/launcher/AllAppsListView;
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$19;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 5483
    return-void

    .line 5466
    .end local v0           #comparators:[Ljava/util/Comparator;,"[Ljava/util/Comparator<Lcom/htc/launcher/ApplicationInfo;>;"
    :cond_1
    new-array v0, v6, [Ljava/util/Comparator;

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    aput-object v2, v0, v3

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    aput-object v2, v0, v4

    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    aput-object v2, v0, v5

    .restart local v0       #comparators:[Ljava/util/Comparator;,"[Ljava/util/Comparator<Lcom/htc/launcher/ApplicationInfo;>;"
    goto :goto_0
.end method
