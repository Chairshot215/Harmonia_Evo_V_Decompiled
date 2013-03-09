.class Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const v8, 0x7f090020

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1867
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, SelItem:Ljava/lang/Object;
    move-object v2, v0

    .line 1868
    check-cast v2, Lcom/htc/sdm/SoundSetParcelable;

    .line 1869
    .local v2, target:Lcom/htc/sdm/SoundSetParcelable;
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1871
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    .end local v0           #SelItem:Ljava/lang/Object;
    :cond_0
    :goto_0
    const v4, 0x7f0b000b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemCheckBox;

    .line 1892
    .local v3, tb:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v3, :cond_2

    .line 1894
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1897
    :cond_2
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    if-eq v4, v6, :cond_8

    .line 1899
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1901
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-result-object v5

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonCancelClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$500(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1915
    :goto_2
    return-void

    .line 1873
    .end local v3           #tb:Lcom/htc/widget/HtcListItemCheckBox;
    .restart local v0       #SelItem:Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1875
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1879
    :cond_4
    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1881
    .local v1, srcType:I
    if-ne v1, v6, :cond_5

    .line 1883
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    check-cast v0, Lcom/htc/sdm/SoundSetParcelable;

    .end local v0           #SelItem:Ljava/lang/Object;
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1885
    .restart local v0       #SelItem:Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1887
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    check-cast v0, Lcom/htc/sdm/SoundSetParcelable;

    .end local v0           #SelItem:Ljava/lang/Object;
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v1           #srcType:I
    .restart local v3       #tb:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_6
    move v4, v5

    .line 1894
    goto/16 :goto_1

    .line 1906
    :cond_7
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-result-object v5

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonDeleteClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$400(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v6, v8}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1912
    :cond_8
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1913
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v6, v8}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
