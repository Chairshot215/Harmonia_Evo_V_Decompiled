.class Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 70
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$000(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    move-result-object v5

    sget-object v6, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->LISTENING:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    if-eq v5, v6, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    const/high16 v4, 0x40e0

    .line 74
    .local v4, min:F
    const/high16 v2, 0x41f0

    .line 75
    .local v2, max:F
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$100(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 77
    .local v3, maxLevel:I
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mVolume:F
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$200(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)F

    move-result v5

    const/high16 v6, 0x40e0

    sub-float/2addr v5, v6

    const/high16 v6, 0x41b8

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 78
    .local v0, index:I
    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 80
    .local v1, level:I
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mLevel:I
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$300(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$400(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$100(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #setter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mLevel:I
    invoke-static {v5, v1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$302(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;I)I

    .line 84
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$600(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$500(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
