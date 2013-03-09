.class Lcom/android/htccontacts/widget/IndexListGridAdapter$1;
.super Ljava/lang/Object;
.source "IndexListGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/IndexListGridAdapter;->setClickActionForGridItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;->this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    iput p2, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;->this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;->this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    check-cast v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$1;->val$position:I

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 221
    :cond_0
    return-void
.end method
