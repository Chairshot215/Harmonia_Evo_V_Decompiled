.class Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showListening()V
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
    .line 140
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$700(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$400(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$100(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$1000(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$900(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
