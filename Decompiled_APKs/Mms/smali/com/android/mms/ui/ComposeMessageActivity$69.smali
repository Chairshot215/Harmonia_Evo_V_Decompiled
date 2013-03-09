.class Lcom/android/mms/ui/ComposeMessageActivity$69;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12397
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 12399
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 12400
    return-void
.end method
