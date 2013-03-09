.class Lcom/android/htccontacts/group/GroupEditActivity$9;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->show360GroupWarnningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$9;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1924
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$9;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->showProgressDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$900(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1925
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$9;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$502(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z

    .line 1926
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$9;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1927
    .local v0, thread:Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->start()V

    .line 1928
    return-void
.end method
