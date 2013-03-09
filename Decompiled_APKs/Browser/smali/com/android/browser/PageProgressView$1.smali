.class Lcom/android/browser/PageProgressView$1;
.super Landroid/os/Handler;
.source "PageProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageProgressView;


# direct methods
.method constructor <init>(Lcom/android/browser/PageProgressView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x2a

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    iget-object v1, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mTargetProgress:I
    invoke-static {v1}, Lcom/android/browser/PageProgressView;->access$100(Lcom/android/browser/PageProgressView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mCurrentProgress:I
    invoke-static {v2}, Lcom/android/browser/PageProgressView;->access$000(Lcom/android/browser/PageProgressView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mIncrement:I
    invoke-static {v3}, Lcom/android/browser/PageProgressView;->access$200(Lcom/android/browser/PageProgressView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    #setter for: Lcom/android/browser/PageProgressView;->mCurrentProgress:I
    invoke-static {v0, v1}, Lcom/android/browser/PageProgressView;->access$002(Lcom/android/browser/PageProgressView;I)I

    .line 82
    iget-object v0, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/browser/PageProgressView;->access$300(Lcom/android/browser/PageProgressView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    invoke-virtual {v1}, Lcom/android/browser/PageProgressView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mCurrentProgress:I
    invoke-static {v2}, Lcom/android/browser/PageProgressView;->access$000(Lcom/android/browser/PageProgressView;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 83
    iget-object v0, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    invoke-virtual {v0}, Lcom/android/browser/PageProgressView;->invalidate()V

    .line 84
    iget-object v0, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/android/browser/PageProgressView;->access$000(Lcom/android/browser/PageProgressView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mTargetProgress:I
    invoke-static {v1}, Lcom/android/browser/PageProgressView;->access$100(Lcom/android/browser/PageProgressView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/browser/PageProgressView$1;->this$0:Lcom/android/browser/PageProgressView;

    #getter for: Lcom/android/browser/PageProgressView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/browser/PageProgressView;->access$400(Lcom/android/browser/PageProgressView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageProgressView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    :cond_0
    return-void
.end method
