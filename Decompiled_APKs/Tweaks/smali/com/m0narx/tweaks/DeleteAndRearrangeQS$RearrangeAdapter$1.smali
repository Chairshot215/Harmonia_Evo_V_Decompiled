.class Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeQS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 260
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->getTag()Ljava/lang/Object;

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->notifyDataSetChanged()V

    .line 271
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
    invoke-static {v1}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;)Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
