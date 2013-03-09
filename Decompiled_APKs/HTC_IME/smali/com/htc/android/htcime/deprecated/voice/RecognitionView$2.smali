.class Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showInitializing()V
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
    .line 128
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$700(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$400(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$800(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$1000(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;->this$0:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->access$900(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
