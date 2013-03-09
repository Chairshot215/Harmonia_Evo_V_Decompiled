.class Lcom/futuredial/ui/DMISimpleAdapter$1;
.super Ljava/lang/Object;
.source "ViewSelectDataType.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/DMISimpleAdapter;->set_view(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/DMISimpleAdapter;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/DMISimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter$1;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x6

    .line 784
    invoke-virtual {p1}, Lcom/htc/widget/HtcAdapterView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 785
    .local v2, tag:I
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, name:Ljava/lang/String;
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, type:Ljava/lang/String;
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, typelabel:Ljava/lang/String;
    if-ne v2, v6, :cond_0

    .line 789
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v1

    .line 790
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 791
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/AccountData;

    invoke-virtual {v5}, Lcom/futuredial/ui/AccountData;->toString()Ljava/lang/String;

    move-result-object v4

    .line 794
    :cond_0
    if-nez v2, :cond_4

    .line 795
    iget-object v5, p0, Lcom/futuredial/ui/DMISimpleAdapter$1;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    #setter for: Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I
    invoke-static {v5, p3}, Lcom/futuredial/ui/DMISimpleAdapter;->access$002(Lcom/futuredial/ui/DMISimpleAdapter;I)I

    .line 801
    :cond_1
    :goto_0
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v0

    .line 802
    .local v0, module:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    const-string v5, "phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 803
    iget-object v5, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v5}, Lcom/futuredial/pim/CPim;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 804
    iget-object v5, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v5}, Lcom/futuredial/pim/CPim;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 806
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 807
    iput-object v1, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 808
    iput-object v3, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 811
    :cond_3
    return-void

    .line 796
    .end local v0           #module:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_4
    if-ne v2, v6, :cond_5

    .line 797
    iget-object v5, p0, Lcom/futuredial/ui/DMISimpleAdapter$1;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    #setter for: Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I
    invoke-static {v5, p3}, Lcom/futuredial/ui/DMISimpleAdapter;->access$102(Lcom/futuredial/ui/DMISimpleAdapter;I)I

    goto :goto_0

    .line 798
    :cond_5
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 799
    iget-object v5, p0, Lcom/futuredial/ui/DMISimpleAdapter$1;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    #setter for: Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I
    invoke-static {v5, p3}, Lcom/futuredial/ui/DMISimpleAdapter;->access$202(Lcom/futuredial/ui/DMISimpleAdapter;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
