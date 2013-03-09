.class Lcom/htc/android/locationpicker/LocationPickerManager$9;
.super Ljava/lang/Object;
.source "LocationPickerManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;->showWifiDisabledDialog()Lcom/htc/widget/HtcAlertDialog;
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
    .line 393
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$9;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 395
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$9;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 398
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$9;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 399
    return-void
.end method
