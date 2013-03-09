.class Lcom/htc/android/psclient/SwitchUsbSettings$5$2;
.super Ljava/lang/Object;
.source "SwitchUsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/SwitchUsbSettings$5;

.field final synthetic val$net_position:I


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings$5;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$5;

    iput p2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->val$net_position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$5;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #calls: Lcom/htc/android/psclient/SwitchUsbSettings;->setSelectedDunId(I)V
    invoke-static {v0, p2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1700(Lcom/htc/android/psclient/SwitchUsbSettings;I)V

    .line 528
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$5;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 529
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$5;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;->val$net_position:I

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v0, v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 530
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 531
    return-void
.end method
