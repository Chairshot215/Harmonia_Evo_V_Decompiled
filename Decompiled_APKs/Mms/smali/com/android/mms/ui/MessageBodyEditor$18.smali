.class Lcom/android/mms/ui/MessageBodyEditor$18;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->showDurationDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, -0x1

    .line 2736
    if-ltz p2, :cond_2

    const/16 v4, 0xa

    if-ge p2, v4, :cond_2

    .line 2737
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2738
    .local v2, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    if-ne v4, v6, :cond_0

    .line 2739
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2740
    add-int/lit8 v4, p2, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v0, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    .line 2739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2742
    .end local v0           #i:I
    :cond_0
    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    add-int/lit8 v5, p2, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    .line 2756
    .end local v2           #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2757
    return-void

    .line 2744
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2745
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "slide_index"

    iget v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2746
    const-string v4, "slide_total"

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2747
    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    if-ne v4, v6, :cond_3

    .line 2748
    const-string v4, "dur"

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2753
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-static {v4, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2754
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2750
    .end local v1           #m:Landroid/os/Message;
    :cond_3
    const-string v4, "dur"

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2751
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v5, p0, Lcom/android/mms/ui/MessageBodyEditor$18;->val$pos:I

    #setter for: Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I
    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageBodyEditor;->access$3002(Lcom/android/mms/ui/MessageBodyEditor;I)I

    goto :goto_2
.end method
