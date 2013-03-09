.class Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeQS.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .parameter "paramInt1"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->access$0(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method
