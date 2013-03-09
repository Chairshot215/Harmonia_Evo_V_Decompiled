.class Lcom/futuredial/ui/ViewReadWriteData$7$3;
.super Ljava/lang/Object;
.source "ViewReadWriteData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewReadWriteData$7;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewReadWriteData$7;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewReadWriteData$7;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$7$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$7$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$7;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$7;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 544
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$7$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$7;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$7;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "HW [back] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$7$3;->this$1:Lcom/futuredial/ui/ViewReadWriteData$7;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData$7;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->ClearResume()V

    .line 546
    return-void
.end method
