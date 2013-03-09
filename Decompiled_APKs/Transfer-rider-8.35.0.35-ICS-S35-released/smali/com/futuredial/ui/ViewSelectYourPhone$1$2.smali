.class Lcom/futuredial/ui/ViewSelectYourPhone$1$2;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 212
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 216
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v2, "[setting] clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1, v0}, Lcom/futuredial/ui/DMIUI;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    const/16 v3, 0x9e

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/futuredial/ui/UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    .line 221
    return-void
.end method
