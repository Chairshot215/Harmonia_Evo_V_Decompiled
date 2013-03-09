.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0

    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unhandled error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reset and release mAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    const/4 v1, 0x0

    #setter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Landroid/media/Ringtone;->access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
