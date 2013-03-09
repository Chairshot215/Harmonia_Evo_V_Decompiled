.class Lcom/htc/android/mail/ReadScreen$23;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->updateProfilePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field final synthetic val$mContactExist:Z


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2972
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iput-boolean p2, p0, Lcom/htc/android/mail/ReadScreen$23;->val$mContactExist:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2974
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$1500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3002
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v2, 0x7f090140

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    #setter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1, v0}, Lcom/htc/android/mail/ReadScreen;->access$3502(Lcom/htc/android/mail/ReadScreen;Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge;

    .line 2977
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->senderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 2979
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$23;->val$mContactExist:Z

    if-eqz v0, :cond_4

    .line 2980
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2981
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2984
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2985
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 2996
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3600(Lcom/htc/android/mail/ReadScreen;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2997
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$3600(Lcom/htc/android/mail/ReadScreen;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->setApplyMaskBitmapToImageView(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2988
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2989
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2992
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2993
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_1

    .line 2999
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$23;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    const v2, 0x20800c2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->setApplyMaskBitmapToImageView(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;I)V

    goto/16 :goto_0
.end method
