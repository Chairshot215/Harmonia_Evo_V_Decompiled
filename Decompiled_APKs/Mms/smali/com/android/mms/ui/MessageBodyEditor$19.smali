.class Lcom/android/mms/ui/MessageBodyEditor$19;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->changeSlideImage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/ui/SlideshowEditor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->val$slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResized(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 12
    .parameter "resizedImage"
    .parameter "oriSrc"

    .prologue
    const v11, 0x7f090053

    const v10, 0x7f090051

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2806
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->val$slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$3000(Lcom/android/mms/ui/MessageBodyEditor;)I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 2808
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$3000(Lcom/android/mms/ui/MessageBodyEditor;)I

    move-result v4

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$1100(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2809
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2811
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$3000(Lcom/android/mms/ui/MessageBodyEditor;)I

    move-result v5

    const/4 v6, 0x0

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageBodyEditor;->access$3100(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 2812
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2813
    .local v2, m:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2839
    .end local v2           #m:Landroid/os/Message;
    :goto_0
    return-void

    .line 2814
    :catch_0
    move-exception v0

    .line 2815
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v3, "MessageBodyEditor"

    const-string v4, "presentSlide failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 2818
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 2819
    .restart local v0       #e:Lcom/google/android/mms/MmsException;
    if-eqz p1, :cond_0

    .line 2820
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, p1, v7, v7}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2821
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090162

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2824
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v1

    .line 2825
    .local v1, ex:Lcom/android/mms/ResolutionException;
    if-eqz p1, :cond_1

    .line 2826
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, p1, v7, v7}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2827
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/util/ResizeImageHandler;->getMinResolutionString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2832
    .end local v1           #ex:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v0

    .line 2833
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    if-eqz p1, :cond_2

    .line 2834
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, p1, v7, v7}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2835
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$19;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/util/ResizeImageHandler;->getMinResolutionString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
