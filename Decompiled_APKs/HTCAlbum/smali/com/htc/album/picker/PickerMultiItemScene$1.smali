.class Lcom/htc/album/picker/PickerMultiItemScene$1;
.super Ljava/lang/Object;
.source "PickerMultiItemScene.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/picker/PickerMultiItemScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 102
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreateDialog][onCancel] dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    invoke-static {v0}, Lcom/htc/album/picker/PickerMultiItemScene;->access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    invoke-static {v0}, Lcom/htc/album/picker/PickerMultiItemScene;->access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->stopLoading()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    :cond_1
    return-void
.end method
