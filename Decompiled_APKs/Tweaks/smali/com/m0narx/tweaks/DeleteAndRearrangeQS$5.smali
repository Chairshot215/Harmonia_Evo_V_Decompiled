.class Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeQS.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "fromPos"
    .parameter "toPos"

    .prologue
    .line 173
    iget-object v4, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->access$0(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    .line 174
    .local v0, Adapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;
    if-eq p1, p2, :cond_0

    .line 175
    iget-object v4, v0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, Id:Ljava/lang/String;
    iget-object v4, v0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .local v3, Name:Ljava/lang/String;
    iget-object v4, v0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 179
    .local v1, Checked:Ljava/lang/Boolean;
    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->removeItem(I)V

    .line 180
    invoke-virtual {v0, p2, v2, v1, v3}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->insertItem(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->notifyDataSetChanged()V

    .line 183
    .end local v1           #Checked:Ljava/lang/Boolean;
    .end local v2           #Id:Ljava/lang/String;
    .end local v3           #Name:Ljava/lang/String;
    :cond_0
    return-void
.end method
