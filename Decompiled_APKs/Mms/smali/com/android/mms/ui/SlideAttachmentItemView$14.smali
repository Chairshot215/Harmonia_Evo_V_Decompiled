.class Lcom/android/mms/ui/SlideAttachmentItemView$14;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->showActionList(ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;

.field final synthetic val$type:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;ILandroid/net/Uri;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$type:I

    iput-object p3, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 739
    packed-switch p2, :pswitch_data_0

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 741
    :pswitch_0
    iget v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 742
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$700(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$700(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 748
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStorageCard()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportInternalStorage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$700(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090160

    const v3, 0x7f0901e3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$700(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->copyPart(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;ZZ)Z
    :try_end_0
    .catch Lcom/android/mms/StorageFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 763
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iget v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$type:I

    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView$14;->val$media:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(ILcom/android/mms/model/MediaModel;)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$000(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
