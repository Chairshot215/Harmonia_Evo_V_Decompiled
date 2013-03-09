.class Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/PickerMain;->handleLaputaMenuDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuItemClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;

.field final synthetic val$pickerMenuItemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 687
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    iput-object p2, p0, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;->val$pickerMenuItemList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 692
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;->val$pickerMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;

    .line 694
    .local v0, item:Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->startForResultOfPickingMethod(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V
    invoke-static {v1, v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1100(Lcom/htc/android/locationpicker/PickerMain;Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V

    .line 695
    return-void
.end method
