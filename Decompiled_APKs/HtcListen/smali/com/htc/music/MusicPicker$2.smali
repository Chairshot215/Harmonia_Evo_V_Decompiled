.class Lcom/htc/music/MusicPicker$2;
.super Ljava/lang/Object;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    #calls: Lcom/htc/music/MusicPicker;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MusicPicker;->access$500(Lcom/htc/music/MusicPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    goto :goto_0

    :pswitch_2
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    #calls: Lcom/htc/music/MusicPicker;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MusicPicker;->access$500(Lcom/htc/music/MusicPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker$2;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    goto :goto_0

    :pswitch_3
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
