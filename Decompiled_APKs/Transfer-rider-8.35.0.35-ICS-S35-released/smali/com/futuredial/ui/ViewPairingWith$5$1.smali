.class Lcom/futuredial/ui/ViewPairingWith$5$1;
.super Ljava/lang/Object;
.source "ViewPairingWith.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewPairingWith$5;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewPairingWith$5;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewPairingWith$5;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/futuredial/ui/ViewPairingWith$5$1;->this$1:Lcom/futuredial/ui/ViewPairingWith$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith$5$1;->this$1:Lcom/futuredial/ui/ViewPairingWith$5;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith$5;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 288
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith$5$1;->this$1:Lcom/futuredial/ui/ViewPairingWith$5;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith$5;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v1, "[yes] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Lcom/futuredial/ui/ViewAppFinish;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewAppFinish;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewAppFinish;->show()V

    .line 290
    return-void
.end method
