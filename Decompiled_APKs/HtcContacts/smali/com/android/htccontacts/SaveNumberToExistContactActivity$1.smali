.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #getter for: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isReady:Z
    invoke-static {v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v0, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createSelectionDialog()Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$200(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v0, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v0, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 206
    :cond_1
    return-void
.end method
