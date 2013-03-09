.class Lcom/htc/android/psclient/UsbConnectionSettings$4$4;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

.field final synthetic val$net_position:I


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

    iput p2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->val$net_position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #calls: Lcom/htc/android/psclient/UsbConnectionSettings;->setSelectedDunId(I)V
    invoke-static {v0, p2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1800(Lcom/htc/android/psclient/UsbConnectionSettings;I)V

    .line 618
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 619
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;->val$net_position:I

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 621
    return-void
.end method
