.class Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickAccountListener"
.end annotation


# instance fields
.field mIsPickFromAccount:Z

.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Z)V
    .locals 1
    .parameter
    .parameter "isPickFromAccount"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->mIsPickFromAccount:Z

    .line 320
    iput-boolean p2, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->mIsPickFromAccount:Z

    .line 321
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->mIsPickFromAccount:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #setter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/MoveContactsActivity;->access$302(Lcom/android/htccontacts/MoveContactsActivity;I)I

    .line 326
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v0, v0, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 332
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 333
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #setter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/MoveContactsActivity;->access$602(Lcom/android/htccontacts/MoveContactsActivity;I)I

    .line 329
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v0, v0, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
