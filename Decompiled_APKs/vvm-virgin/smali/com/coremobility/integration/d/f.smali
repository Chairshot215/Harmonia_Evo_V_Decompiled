.class public final Lcom/coremobility/integration/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private a:I

.field private b:Lcom/coremobility/integration/j;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Landroid/media/MediaRecorder;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/io/FileOutputStream;

.field private p:Ljava/io/FileOutputStream;

.field private q:Z

.field private r:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coremobility/integration/j;)V
    .locals 8

    const-wide/32 v6, 0x1d6b4

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/coremobility/integration/d/f;->a:I

    iput v4, p0, Lcom/coremobility/integration/d/f;->k:I

    iput-boolean v4, p0, Lcom/coremobility/integration/d/f;->q:Z

    iput-object p2, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->c:I

    iput-wide v6, p0, Lcom/coremobility/integration/d/f;->f:J

    iget-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1d588

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    :goto_0
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/coremobility/integration/d/f;->h:I

    iput v4, p0, Lcom/coremobility/integration/d/f;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iput-object v5, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iput-object v5, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    new-instance v0, Lcom/coremobility/integration/d/g;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/d/g;-><init>(Lcom/coremobility/integration/d/f;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    return-void

    :cond_0
    iput-wide v6, p0, Lcom/coremobility/integration/d/f;->f:J

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/j;->d(I)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    invoke-interface {v0, p1, p2}, Lcom/coremobility/integration/j;->b(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coremobility/integration/d/f;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x17

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorder state m_State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v2, v6, :cond_7

    iget v2, p0, Lcom/coremobility/integration/d/f;->a:I

    if-ne v2, v4, :cond_5

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseRecorder Inavlid State... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/f;->a(II)V

    :goto_1
    iput v1, p0, Lcom/coremobility/integration/d/f;->a:I

    move v0, v1

    :cond_0
    :goto_2
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/integration/d/f;->h:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/coremobility/integration/d/f;->h:I

    int-to-long v0, v0

    :goto_3
    iget-wide v2, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v4, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_4
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x17

    :try_start_1
    const-string v2, "Audio Recorder create MediaRecorder "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v0, Lcom/coremobility/k/cj;

    invoke-direct {v0}, Lcom/coremobility/k/cj;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v1, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecorder Pause error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v2, 0x17

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/coremobility/integration/d/f;->a:I

    if-ne v2, v6, :cond_6

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v0, v0}, Lcom/coremobility/integration/d/f;->a(II)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v0, v4}, Lcom/coremobility/integration/d/f;->a(II)V

    goto/16 :goto_1

    :cond_7
    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v2, v0, :cond_8

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v2, v4, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0, v1, v2}, Lcom/coremobility/integration/d/f;->a(II)V

    iget-wide v1, p0, Lcom/coremobility/integration/d/f;->f:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/coremobility/integration/d/f;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-direct {p0, v6}, Lcom/coremobility/integration/d/f;->b(I)V

    goto/16 :goto_2

    :cond_9
    const-wide/16 v0, 0x12c

    goto/16 :goto_3
.end method

.method private b(I)V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecorderStopComplete Invalid State... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/coremobility/integration/d/f;->a:I

    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/coremobility/k/q;

    invoke-direct {v0}, Lcom/coremobility/k/q;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_0
.end method

.method private h()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot Stop Media Recorder... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    new-instance v0, Lcom/coremobility/k/cj;

    invoke-direct {v0}, Lcom/coremobility/k/cj;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private i()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    iput-object v5, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x6

    :try_start_2
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    iput-object v5, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_1
    return-void

    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UI-APPEND"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    const-string v1, "AudioRecorder - StartTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private k()V
    .locals 3

    const/16 v0, 0x17

    const-string v1, "AudioRecorder - StopTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .locals 6

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/coremobility/integration/d/f;->l:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/coremobility/integration/d/f;->k:I

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-wide v1, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v3, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    const/16 v3, 0x17

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " m_MusicActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremobility/integration/d/f;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(Landroid/media/AudioManager;)V

    const-string v0, "Music Stream Paused..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    iget-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->b(Landroid/media/AudioManager;)V

    const/16 v0, 0x17

    const-string v1, "Music Player Resumed..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v4, 0x17

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Recoder State... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->n()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->m()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->j()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/f;->a(II)V

    new-instance v0, Lcom/coremobility/k/ci;

    invoke-direct {v0}, Lcom/coremobility/k/ci;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    const/16 v3, 0x17

    const/4 v2, 0x0

    const-string v0, "AudioRecorder - Pause Called"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/f;->b(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AudioRecorder - Pause. Invalid State"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x2

    const/16 v5, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "AudioRecorder - Resume Called"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->n()V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v6}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeRecorder Invalid State.... State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_2
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->m()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->j()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    new-instance v0, Lcom/coremobility/k/ci;

    invoke-direct {v0}, Lcom/coremobility/k/ci;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecorder Resume error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final d()V
    .locals 6

    const/16 v5, 0x17

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "AudioRecorder - Stop Called"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->b(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v2, v4}, Lcom/coremobility/integration/d/f;->a(II)V

    goto :goto_0

    :cond_1
    const-string v0, "AudioRecorder - Stop. Invalid State"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder - Release Invalid State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AudioRecorder - Release Called"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/coremobility/integration/d/f;->k:I

    return v0
.end method

.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x17

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError with what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Recorder Stopped... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v5}, Lcom/coremobility/integration/d/f;->a(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    const/16 v0, 0x17

    const-string v1, "Media Recorder Reset..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/f;->i:I

    iput v3, p0, Lcom/coremobility/integration/d/f;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo with what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0, v3, v0}, Lcom/coremobility/integration/d/f;->a(II)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/f;->b(I)V

    :cond_0
    return-void
.end method
