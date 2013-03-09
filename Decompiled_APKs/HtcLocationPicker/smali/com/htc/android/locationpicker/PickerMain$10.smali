.class Lcom/htc/android/locationpicker/PickerMain$10;
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
    .line 627
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$10;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 629
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 630
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$10;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startWirelessSettingsForMap()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1000(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 631
    return-void
.end method
