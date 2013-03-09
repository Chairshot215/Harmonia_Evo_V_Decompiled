.class Lcom/android/mms/ui/MmsBaseListActivity$2;
.super Ljava/lang/Object;
.source "MmsBaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsBaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;

.field final synthetic val$deleteUri:Landroid/net/Uri;

.field final synthetic val$finishActivity:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->val$deleteUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->val$finishActivity:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 413
    const-string v0, "MmsBaseListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete CMAS Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->val$deleteUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MmsBaseListActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsBaseListActivity$2$1;-><init>(Lcom/android/mms/ui/MmsBaseListActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->val$finishActivity:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$2;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->finish()V

    .line 422
    :cond_0
    return-void
.end method
