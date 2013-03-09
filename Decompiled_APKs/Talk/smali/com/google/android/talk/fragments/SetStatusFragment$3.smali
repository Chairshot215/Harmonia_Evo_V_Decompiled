.class Lcom/google/android/talk/fragments/SetStatusFragment$3;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iput p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$resultCode:I

    iput p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$requestCode:I

    iput-object p4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 621
    iget v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$resultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 622
    iget v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$requestCode:I

    packed-switch v1, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->val$data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 625
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 626
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    #setter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1502(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 627
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_0

    .line 633
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->cropPhoto()V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
