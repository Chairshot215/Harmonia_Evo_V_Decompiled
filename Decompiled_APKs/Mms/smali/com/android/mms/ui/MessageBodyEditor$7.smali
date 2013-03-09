.class Lcom/android/mms/ui/MessageBodyEditor$7;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeLength:I

.field private mCharcountStart:I

.field private mInsertCount:I

.field private mLocation:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->val$location:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->val$location:I

    iput v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mLocation:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mLocation:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$1100(Lcom/android/mms/ui/MessageBodyEditor;I)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mBeforeLength:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2116
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxTextSize()I

    move-result v7

    .line 2117
    .local v7, maxSize:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/mms/model/SlideshowModel;->isExceedMMSTextSize(I)Z

    move-result v0

    if-ne v8, v0, :cond_3

    .line 2118
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mFinishLoading:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$1300(Lcom/android/mms/ui/MessageBodyEditor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isForward()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFromDraft()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mNeedToast:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$1400(Lcom/android/mms/ui/MessageBodyEditor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #setter for: Lcom/android/mms/ui/MessageBodyEditor;->mNeedToast:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$1402(Lcom/android/mms/ui/MessageBodyEditor;Z)Z

    .line 2122
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09026d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2139
    .end local v7           #maxSize:I
    :cond_1
    :goto_1
    return-void

    .line 2111
    :catch_0
    move-exception v6

    .line 2112
    .local v6, e:Lcom/android/mms/ExceedMessageSizeException;
    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mCharcountStart:I

    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mCharcountStart:I

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mInsertCount:I

    add-int/2addr v2, v0

    const-string v3, ""

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2113
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090051

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2129
    .end local v6           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v7       #maxSize:I
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09026c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2132
    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mCharcountStart:I

    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mCharcountStart:I

    iget v2, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mInsertCount:I

    add-int/2addr v2, v0

    const-string v3, ""

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2136
    .end local v7           #maxSize:I
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mBeforeLength:I

    .line 2101
    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mCharcountStart:I

    .line 2102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2105
    iput p4, p0, Lcom/android/mms/ui/MessageBodyEditor$7;->mInsertCount:I

    .line 2106
    return-void
.end method
