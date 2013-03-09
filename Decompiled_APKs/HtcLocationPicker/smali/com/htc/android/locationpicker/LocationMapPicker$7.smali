.class Lcom/htc/android/locationpicker/LocationMapPicker$7;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$7;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 606
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$7;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-virtual {v1, v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->startActivity(Landroid/content/Intent;)V

    .line 609
    return-void
.end method
