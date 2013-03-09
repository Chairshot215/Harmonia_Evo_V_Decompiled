.class Lcom/futuredial/ui/ViewSelectYourPhone$1$3;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectYourPhone$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone$1;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 204
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "HW [back] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/futuredial/ui/ViewAppFinish;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewAppFinish;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewAppFinish;->show()V

    .line 206
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    .line 207
    return-void
.end method
