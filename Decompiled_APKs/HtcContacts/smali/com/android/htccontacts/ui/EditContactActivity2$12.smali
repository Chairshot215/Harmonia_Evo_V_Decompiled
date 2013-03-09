.class Lcom/android/htccontacts/ui/EditContactActivity2$12;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialogDelayed(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2724
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$12;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$12;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$12;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$12;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2730
    :cond_0
    :goto_0
    return-void

    .line 2729
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$12;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
