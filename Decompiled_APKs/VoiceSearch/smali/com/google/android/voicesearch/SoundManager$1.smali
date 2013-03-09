.class Lcom/google/android/voicesearch/SoundManager$1;
.super Landroid/os/AsyncTask;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskSounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SoundManager;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/SoundManager$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 9
    .parameter "sounds"

    .prologue
    const/4 v8, 0x0

    .line 52
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 53
    .local v4, sound:I
    new-instance v3, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    iget-object v5, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    iget-object v6, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    #getter for: Lcom/google/android/voicesearch/SoundManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/voicesearch/SoundManager;->access$000(Lcom/google/android/voicesearch/SoundManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;-><init>(Lcom/google/android/voicesearch/SoundManager;Landroid/content/Context;I)V

    .line 55
    .local v3, player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SoundManager$1;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->release()V

    .line 66
    .end local v3           #player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    .end local v4           #sound:I
    :cond_0
    return-object v8

    .line 60
    .restart local v3       #player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    .restart local v4       #sound:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 61
    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    #getter for: Lcom/google/android/voicesearch/SoundManager;->mVolume:F
    invoke-static {v6}, Lcom/google/android/voicesearch/SoundManager;->access$100(Lcom/google/android/voicesearch/SoundManager;)F

    move-result v6

    iget-object v7, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    #getter for: Lcom/google/android/voicesearch/SoundManager;->mVolume:F
    invoke-static {v7}, Lcom/google/android/voicesearch/SoundManager;->access$100(Lcom/google/android/voicesearch/SoundManager;)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 63
    :cond_2
    iget-object v5, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/SoundManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SoundManager$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    #calls: Lcom/google/android/voicesearch/SoundManager;->releaseSounds(Ljava/util/Map;)V
    invoke-static {v0}, Lcom/google/android/voicesearch/SoundManager;->access$200(Ljava/util/Map;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    #setter for: Lcom/google/android/voicesearch/SoundManager;->mSounds:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->access$302(Lcom/google/android/voicesearch/SoundManager;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0
.end method
