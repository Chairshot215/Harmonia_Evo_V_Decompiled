.class final Lcom/google/android/voicesearch/SoundManager$2;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/SoundManager;->releaseSounds(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager$2;->val$player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$2;->val$player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->release()V

    .line 129
    return-void
.end method
