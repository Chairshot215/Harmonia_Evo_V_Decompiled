.class Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;
.super Ljava/lang/Object;
.source "ViewSelectDataType.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 145
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/futuredial/ui/ViewSelectDataType;->bChecked:Z

    .line 146
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, id:I
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/ui/ListData;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v2, "checkbox"

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-boolean v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->bChecked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-virtual {v1}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->setButton()V

    .line 151
    return-void
.end method
