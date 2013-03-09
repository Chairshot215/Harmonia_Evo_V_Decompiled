.class public Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
.super Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
.source "PartitionedHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/PartitionedHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableExteriorAdapterObserver"
.end annotation


# instance fields
.field public adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

.field final synthetic this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter;Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    .line 744
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getExteriorListAdapter()Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;-><init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 745
    iput-object p2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    .line 746
    return-void
.end method
