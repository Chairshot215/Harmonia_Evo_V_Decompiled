.class Lcom/google/android/finsky/layout/PlaylistControlButtons$1;
.super Lcom/google/android/finsky/previews/StatusListener;
.source "PlaylistControlButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/PlaylistControlButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/PlaylistControlButtons;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/PlaylistControlButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;->this$0:Lcom/google/android/finsky/layout/PlaylistControlButtons;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public queueChanged(I)V
    .locals 2
    .parameter "newSize"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;->this$0:Lcom/google/android/finsky/layout/PlaylistControlButtons;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->access$000(Lcom/google/android/finsky/layout/PlaylistControlButtons;Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
