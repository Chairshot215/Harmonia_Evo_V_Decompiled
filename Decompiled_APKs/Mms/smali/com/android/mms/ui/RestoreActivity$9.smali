.class Lcom/android/mms/ui/RestoreActivity$9;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RestoreActivity;->confirmBackupFiles(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;

.field final synthetic val$deleteAll:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/RestoreActivity$9;->val$deleteAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 967
    iget-boolean v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->val$deleteAll:Z

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->deleteAllBackupFiles()V

    .line 974
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->switchToNormalView()V

    .line 975
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->deleteSelectedBackupFiles()V

    .line 971
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$9;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method
