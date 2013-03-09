.class Lcom/htc/android/worldclock/TimerKlaxon$1;
.super Ljava/lang/Object;
.source "TimerKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerKlaxon;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerKlaxon;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon$1;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 99
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon$1;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    #getter for: Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerKlaxon;->access$000(Lcom/htc/android/worldclock/TimerKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 101
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon$1;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    #getter for: Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerKlaxon;->access$000(Lcom/htc/android/worldclock/TimerKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 102
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon$1;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerKlaxon;->access$002(Lcom/htc/android/worldclock/TimerKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 103
    const/4 v0, 0x1

    return v0
.end method
