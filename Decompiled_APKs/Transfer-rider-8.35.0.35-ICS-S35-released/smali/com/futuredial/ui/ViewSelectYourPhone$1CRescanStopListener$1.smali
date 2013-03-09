.class Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 355
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    .line 356
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener$1;->this$1:Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->re_scan()V

    .line 357
    return-void
.end method
