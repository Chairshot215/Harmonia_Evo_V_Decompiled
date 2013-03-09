.class Lcom/htc/android/locationpicker/LocationPickerManager$10;
.super Ljava/lang/Object;
.source "LocationPickerManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;->showReverseAddressDialog()Lcom/htc/widget/HtcAlertDialog;
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
    .line 426
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$10;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager$10;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #calls: Lcom/htc/android/locationpicker/LocationPickerManager;->processAddressListToMap()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$200(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    .line 431
    return-void
.end method
