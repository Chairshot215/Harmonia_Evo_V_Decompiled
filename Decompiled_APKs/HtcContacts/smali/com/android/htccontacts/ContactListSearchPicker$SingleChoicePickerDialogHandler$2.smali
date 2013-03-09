.class Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;
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

.field final synthetic val$finalcontactUri:Landroid/net/Uri;

.field final synthetic val$numbers:Ljava/util/ArrayList;

.field final synthetic val$phonesIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3710
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iput-object p2, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$phonesIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$numbers:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$finalcontactUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3712
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3713
    .local v6, buf:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget v0, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget v0, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$phonesIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$numbers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget v5, v5, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3715
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$phonesIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget v5, v5, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 3716
    .local v3, phoneId:J
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->val$finalcontactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3717
    .local v1, cId:J
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/htccontacts/ContactListSearchPicker;->returnGetSinglePhoneNumber(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3800(Lcom/android/htccontacts/ContactListSearchPicker;JJLjava/lang/String;)V

    .line 3719
    .end local v1           #cId:J
    .end local v3           #phoneId:J
    :cond_0
    return-void
.end method
