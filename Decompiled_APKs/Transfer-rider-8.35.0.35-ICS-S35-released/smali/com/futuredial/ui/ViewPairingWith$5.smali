.class Lcom/futuredial/ui/ViewPairingWith$5;
.super Ljava/lang/Object;
.source "ViewPairingWith.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 255
    iput-object p1, p0, Lcom/futuredial/ui/ViewPairingWith$5;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith$5;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v0, v0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v1, "HW [back] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith$5;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v1, v1, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/futuredial/ui/ViewPairingWith$5$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewPairingWith$5$3;-><init>(Lcom/futuredial/ui/ViewPairingWith$5;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060197

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018a

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$5$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$5$2;-><init>(Lcom/futuredial/ui/ViewPairingWith$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018f

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$5$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$5$1;-><init>(Lcom/futuredial/ui/ViewPairingWith$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 292
    return-void
.end method
