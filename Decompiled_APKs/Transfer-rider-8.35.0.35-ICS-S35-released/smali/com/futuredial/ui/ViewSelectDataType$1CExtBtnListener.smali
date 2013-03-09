.class Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;
.super Lcom/futuredial/ui/CBtnListener;
.source "ViewSelectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectDataType;->set_view()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CExtBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectDataType;


# direct methods
.method public constructor <init>(Lcom/futuredial/ui/ViewSelectDataType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "targetWindowClassName"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    .line 535
    invoke-direct {p0, p2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 536
    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 539
    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v5, v5, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v5, v5, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    iget-object v5, v5, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 541
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->m_responseClick:Ljava/lang/Boolean;

    .line 543
    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-boolean v5, v5, Lcom/futuredial/ui/ViewSelectDataType;->m_hasDTCanSelect:Z

    if-nez v5, :cond_0

    .line 545
    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const v6, 0x7f060195

    invoke-virtual {v5, v6}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, msgboxtip:Ljava/lang/String;
    new-instance v5, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v6, v6, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v5, v6}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/futuredial/ui/DialogManager$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f06020e

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f06018b

    new-instance v7, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;

    invoke-direct {v7, p0}, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;-><init>(Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 576
    .end local v3           #msgboxtip:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->m_responseClick:Ljava/lang/Boolean;

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v2, m_selectedMods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v5, v5, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v4, v5, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    .line 568
    .local v4, selectedMod:Lcom/futuredial/ui/ListData;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, v4, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 570
    iget-object v5, v4, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/ListItem;

    .line 572
    .local v1, item:Lcom/futuredial/ui/ListItem;
    sget-object v5, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v1, Lcom/futuredial/ui/ListItem;->index:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    .end local v1           #item:Lcom/futuredial/ui/ListItem;
    :cond_2
    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const-string v6, "selectedMods"

    invoke-virtual {v5, v6, v2}, Lcom/futuredial/ui/ViewSelectDataType;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
