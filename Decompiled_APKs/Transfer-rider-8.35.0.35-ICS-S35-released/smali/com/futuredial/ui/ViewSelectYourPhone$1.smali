.class Lcom/futuredial/ui/ViewSelectYourPhone$1;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectYourPhone;->alert_cannot_open_bt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    .line 194
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1$3;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060190

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018e

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1$2;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060189

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$1$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1$1;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 233
    return-void
.end method
