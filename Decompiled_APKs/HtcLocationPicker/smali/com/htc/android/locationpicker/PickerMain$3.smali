.class Lcom/htc/android/locationpicker/PickerMain$3;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/PickerMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$200(Lcom/htc/android/locationpicker/PickerMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startFootprints()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$300(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v1, 0xd

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 545
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$3;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$400(Lcom/htc/android/locationpicker/PickerMain;)V

    goto :goto_0
.end method
