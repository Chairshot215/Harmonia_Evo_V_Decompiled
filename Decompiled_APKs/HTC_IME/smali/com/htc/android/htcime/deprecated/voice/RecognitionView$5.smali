.class Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
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
    .line 173
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$700(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$400(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$1300(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void
.end method
