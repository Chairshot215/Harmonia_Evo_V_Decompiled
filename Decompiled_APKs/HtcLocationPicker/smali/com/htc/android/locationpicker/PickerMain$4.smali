.class Lcom/htc/android/locationpicker/PickerMain$4;
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
    .line 569
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$4;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$4;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 572
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$4;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 573
    return-void
.end method
