.class Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;
.super Ljava/lang/Object;
.source "ViewReadWriteData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 315
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 320
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iput-boolean v2, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 321
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "HW [back] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->m_responseClick:Ljava/lang/Boolean;

    .line 323
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->SetCancelPopupDialogNo()V

    .line 324
    return-void
.end method
