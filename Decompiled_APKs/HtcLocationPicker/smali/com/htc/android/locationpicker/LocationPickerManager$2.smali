.class Lcom/htc/android/locationpicker/LocationPickerManager$2;
.super Ljava/lang/Object;
.source "LocationPickerManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;->showLocationListDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationPickerManager;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$2;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 333
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 334
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager$2;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 335
    return-void
.end method
