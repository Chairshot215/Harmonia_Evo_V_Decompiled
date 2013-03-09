.class Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;
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
    .line 343
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 347
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "[no] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 349
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;->this$1:Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 350
    return-void
.end method
