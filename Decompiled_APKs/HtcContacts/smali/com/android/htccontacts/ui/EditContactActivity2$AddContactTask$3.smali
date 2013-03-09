.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$3;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)V
    .locals 0
    .parameter

    .prologue
    .line 4408
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$3;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 4411
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$3;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #getter for: Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7300(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 4412
    .local v0, target:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4433
    :cond_0
    :goto_0
    return-void

    .line 4430
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4431
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto :goto_0
.end method
