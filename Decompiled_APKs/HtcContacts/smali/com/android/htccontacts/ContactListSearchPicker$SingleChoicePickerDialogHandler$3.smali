.class Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;
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
    .line 3722
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3725
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    .line 3726
    return-void
.end method
