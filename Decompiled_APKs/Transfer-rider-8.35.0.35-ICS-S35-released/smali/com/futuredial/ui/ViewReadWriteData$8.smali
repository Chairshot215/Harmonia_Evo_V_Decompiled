.class Lcom/futuredial/ui/ViewReadWriteData$8;
.super Ljava/lang/Object;
.source "ViewReadWriteData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewReadWriteData;->resume_times_out()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewReadWriteData;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewReadWriteData;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$8;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$8;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 605
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$8;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "[ok] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$8;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->SetExitAllThread()V

    .line 607
    return-void
.end method
