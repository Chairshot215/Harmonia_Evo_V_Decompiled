.class Lcom/futuredial/ui/ViewPairingWith$4;
.super Ljava/lang/Object;
.source "ViewPairingWith.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewPairingWith;->resume_process(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ui/ViewController;Lcom/futuredial/ui/ViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewPairingWith;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewPairingWith;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/futuredial/ui/ViewPairingWith$4;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith$4;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 299
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith$4;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v1, "[resume] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->show()V

    .line 302
    return-void
.end method
