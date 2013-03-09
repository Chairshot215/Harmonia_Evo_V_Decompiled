.class Lcom/htc/android/psclient/SwitchUsbSettings$4;
.super Ljava/lang/Object;
.source "SwitchUsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings;->setListViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/SwitchUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$4;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$4;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v1, "Disk Drive"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$4;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_right_1:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1300(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 477
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$4;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1200(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 478
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 479
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$4;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 480
    return-void
.end method
