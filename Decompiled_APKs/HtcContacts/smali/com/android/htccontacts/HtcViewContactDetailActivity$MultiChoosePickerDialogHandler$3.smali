.class Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 3185
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3187
    const/4 p1, 0x0

    .line 3188
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3189
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3190
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->phonesIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3192
    return-void
.end method
