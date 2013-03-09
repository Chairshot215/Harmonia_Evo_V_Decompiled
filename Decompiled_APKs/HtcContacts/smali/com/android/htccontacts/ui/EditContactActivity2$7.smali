.class Lcom/android/htccontacts/ui/EditContactActivity2$7;
.super Landroid/os/Handler;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 513
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 515
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Landroid/app/Dialog;

    if-eqz v6, :cond_0

    .line 516
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/Dialog;

    .line 517
    .local v3, d:Landroid/app/Dialog;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 518
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 524
    .end local v3           #d:Landroid/app/Dialog;
    :pswitch_1
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->finish()V

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_0

    .line 529
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/widget/HtcAlertDialog;

    .line 530
    .local v3, d:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, bmPhoto:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 533
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v6, "bitmap"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 534
    const-string v6, "bitmap"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #bmPhoto:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 537
    .restart local v1       #bmPhoto:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->ensureFacebookIconForLarge()V
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$800(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 538
    sget v6, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v7, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForLarge:[B
    invoke-static {v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$900(Lcom/android/htccontacts/ui/EditContactActivity2;)[B

    move-result-object v8

    invoke-static {v1, v6, v7, v8}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II[B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_5

    .line 542
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->ensureFacebookIconForThumbnailData()V
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1000(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 543
    sget v6, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    sget v7, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForThumbnailData:[B
    invoke-static {v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1100(Lcom/android/htccontacts/ui/EditContactActivity2;)[B

    move-result-object v8

    invoke-static {v1, v6, v7, v8}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II[B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 545
    .local v2, bmPhotoThumbnail:Landroid/graphics/Bitmap;
    const v6, 0x7f070081

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 546
    .local v5, progressBar:Landroid/widget/ProgressBar;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 547
    const v6, 0x7f070065

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 548
    .local v4, photo:Landroid/widget/ImageView;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 549
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    :cond_2
    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    if-eqz v2, :cond_3

    .line 554
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setDisplayOnlyPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    const-wide/16 v7, 0x1

    iget-object v9, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForThumbnailData:[B
    invoke-static {v9}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1100(Lcom/android/htccontacts/ui/EditContactActivity2;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->msFacebookMeLargeBuddyIconUrl:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1300(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmapType(J[BLjava/lang/String;)V

    .line 561
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v2           #bmPhotoThumbnail:Landroid/graphics/Bitmap;
    .end local v4           #photo:Landroid/widget/ImageView;
    .end local v5           #progressBar:Landroid/widget/ProgressBar;
    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 558
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v1       #bmPhoto:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->doRemovePhotoAction()Z

    goto :goto_1

    .line 513
    :pswitch_data_0
    .packed-switch 0xf00001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
