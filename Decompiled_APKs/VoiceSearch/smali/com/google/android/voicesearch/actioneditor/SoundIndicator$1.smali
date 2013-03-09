.class Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;
.super Ljava/lang/Object;
.source "SoundIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/SoundIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->invalidate()V

    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->access$100(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->access$000(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
