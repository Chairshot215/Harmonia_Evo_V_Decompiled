.class Lcom/android/mms/ui/DeletedItemsActivity$3;
.super Ljava/lang/Object;
.source "DeletedItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeletedItemsActivity;->confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$3;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DeletedItemsActivity$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$3;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->access$202(Lcom/android/mms/ui/DeletedItemsActivity;Z)Z

    .line 615
    return-void
.end method
