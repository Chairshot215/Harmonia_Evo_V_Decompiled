.class Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

.field final synthetic val$checkedItems:[Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3114
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;->val$checkedItems:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 3118
    if-nez p2, :cond_0

    .line 3119
    if-eqz p3, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;->val$checkedItems:[Z

    const/4 v2, 0x1

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->setBooleanArray([ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->access$600(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[ZZ)V

    .line 3126
    :cond_0
    return-void
.end method
