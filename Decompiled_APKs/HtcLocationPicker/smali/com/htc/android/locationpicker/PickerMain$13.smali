.class Lcom/htc/android/locationpicker/PickerMain$13;
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
    .line 1098
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$13;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$13;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->stopTracking()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1600(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1102
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$13;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->removeDialog(I)V

    .line 1103
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$13;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startFootprints()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$300(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1104
    return-void
.end method
