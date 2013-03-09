.class Lcom/htc/music/MusicPicker$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPicker.java"


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

    iput-object p1, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    iget-object v0, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    #getter for: Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/music/MusicPicker;->access$400(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    #getter for: Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/htc/music/MusicPicker;->access$300(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v0}, Lcom/htc/music/MusicPicker;->updateConfirmButtons()V

    iget-object v0, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v0}, Lcom/htc/music/MusicPicker;->showDatabaseError()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPicker$1;->this$0:Lcom/htc/music/MusicPicker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method
