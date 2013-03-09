.class Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;
.super Ljava/lang/Object;
.source "ViewSelectDataType.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->additional_op()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 554
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener$1;->this$1:Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v1, "[ok] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v0, Lcom/futuredial/ui/ViewReport;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewReport;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewReport;->show()V

    .line 556
    return-void
.end method
