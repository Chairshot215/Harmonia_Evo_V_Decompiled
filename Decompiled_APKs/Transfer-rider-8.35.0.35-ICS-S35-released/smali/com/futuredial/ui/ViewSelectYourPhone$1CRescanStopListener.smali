.class Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectYourPhone;->set_view()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CRescanStopListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bMidBtnReScan:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->stop_scan()V

    .line 334
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_rescan_status()V

    .line 365
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    .line 343
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v1, v1, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060194

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->re_scan()V

    goto :goto_0
.end method
