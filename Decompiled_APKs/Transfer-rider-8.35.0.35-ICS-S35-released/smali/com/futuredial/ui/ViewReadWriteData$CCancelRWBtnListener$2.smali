.class Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;
.super Ljava/lang/Object;
.source "ViewReadWriteData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->cancelClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 331
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iput-boolean v5, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 332
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "[cancel-yes] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->m_responseClick:Ljava/lang/Boolean;

    .line 335
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v1, v1, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v1, v1, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v3, v3, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const v4, 0x7f060185

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_delProgressDlg:Landroid/app/ProgressDialog;

    .line 336
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_delProgressDlg:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/futuredial/ui/DialogManager;->reg_dialog(Landroid/app/Dialog;)V

    .line 338
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->CancelTask()V

    .line 339
    return-void
.end method
