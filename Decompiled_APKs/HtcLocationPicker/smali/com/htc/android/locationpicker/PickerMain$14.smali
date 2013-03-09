.class Lcom/htc/android/locationpicker/PickerMain$14;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/PickerMain;
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
    .line 1107
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->stopTracking()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1600(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1111
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->removeDialog(I)V

    .line 1113
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v1, 0xd

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 1115
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$14;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$400(Lcom/htc/android/locationpicker/PickerMain;)V

    goto :goto_0
.end method
