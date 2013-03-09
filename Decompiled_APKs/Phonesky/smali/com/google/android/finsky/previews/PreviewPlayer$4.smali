.class Lcom/google/android/finsky/previews/PreviewPlayer$4;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$4;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .parameter "focusChange"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$4;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #setter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$602(Lcom/google/android/finsky/previews/PreviewPlayer;I)I

    .line 397
    return-void
.end method
