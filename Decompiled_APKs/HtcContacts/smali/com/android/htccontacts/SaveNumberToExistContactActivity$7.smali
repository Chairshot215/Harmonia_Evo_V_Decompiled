.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createInputCustomDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;
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
    .line 979
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget v1, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPreSelectedIndex:I

    iput v1, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    .line 985
    return-void
.end method
