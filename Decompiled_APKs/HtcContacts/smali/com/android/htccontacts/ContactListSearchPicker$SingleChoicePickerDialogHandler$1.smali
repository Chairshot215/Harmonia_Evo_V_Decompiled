.class Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$1;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->createDataDialog(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 3704
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$1;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$1;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iput p2, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    .line 3707
    return-void
.end method
