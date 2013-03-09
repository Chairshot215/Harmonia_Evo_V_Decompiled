.class Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;
.super Ljava/lang/Object;
.source "ViewSelectDataType.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 154
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 158
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/futuredial/ui/ViewSelectDataType;->bChecked:Z

    .line 159
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v1, "checkbox"

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-boolean v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->bChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetChanged()V

    .line 161
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->setButton()V

    .line 162
    return-void
.end method
