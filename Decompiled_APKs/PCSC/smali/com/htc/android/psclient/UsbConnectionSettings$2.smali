.class Lcom/htc/android/psclient/UsbConnectionSettings$2;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings;->setListViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectionSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$2;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 506
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$2;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v1, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$2;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 508
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$2;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_right_1:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 509
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 510
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$2;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 511
    return-void
.end method
