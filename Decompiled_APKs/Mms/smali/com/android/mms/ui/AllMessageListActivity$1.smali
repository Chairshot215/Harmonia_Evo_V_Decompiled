.class Lcom/android/mms/ui/AllMessageListActivity$1;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AllMessageListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AllMessageListActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$showCheckBox:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$showCheckBox:Z

    iput-object p3, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$showCheckBox:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 243
    :cond_0
    return-void
.end method
