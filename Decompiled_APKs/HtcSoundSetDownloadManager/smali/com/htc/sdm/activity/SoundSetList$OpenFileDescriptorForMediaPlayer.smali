.class Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;
.super Ljava/lang/Thread;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFileDescriptorForMediaPlayer"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field soundUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2750
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2751
    iput-object p3, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    .line 2752
    iput-object p2, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->context:Landroid/content/Context;

    .line 2753
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2756
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2757
    .local v3, msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2758
    .local v2, fileDescriptor:Landroid/os/Bundle;
    const-string v5, "thread_id"

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2761
    :try_start_0
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 2763
    const-string v5, "sound_fd_uri"

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://drm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2766
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2767
    .local v0, DRMPlaybackPath:Ljava/lang/String;
    const-string v5, "drm_playback_path"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2776
    .end local v0           #DRMPlaybackPath:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x65

    iput v5, v3, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2791
    :cond_0
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2793
    :goto_1
    return-void

    .line 2772
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->soundUri:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 2773
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    const-string v5, "sound_file_descriptor"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2774
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2779
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2781
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2782
    const/16 v5, 0x66

    iput v5, v3, Landroid/os/Message;->what:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2791
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2784
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 2786
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2787
    const/16 v5, 0x66

    iput v5, v3, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2791
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v5
.end method
