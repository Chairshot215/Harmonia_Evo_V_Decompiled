.class Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;
.super Ljava/lang/Object;
.source "PickerMultiItemScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$result:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->this$1:Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$result:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 546
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$result:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$result:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 551
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method
