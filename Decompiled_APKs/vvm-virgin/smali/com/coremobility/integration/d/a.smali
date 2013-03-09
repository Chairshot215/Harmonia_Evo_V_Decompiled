.class public final Lcom/coremobility/integration/d/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/coremobility/integration/d/a;


# instance fields
.field public a:Z

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    iput v0, p0, Lcom/coremobility/integration/d/a;->e:I

    iput v0, p0, Lcom/coremobility/integration/d/a;->f:I

    iput-boolean v1, p0, Lcom/coremobility/integration/d/a;->g:Z

    iput v0, p0, Lcom/coremobility/integration/d/a;->h:I

    iput-boolean v1, p0, Lcom/coremobility/integration/d/a;->a:Z

    return-void
.end method

.method public static a()Lcom/coremobility/integration/d/a;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/d/a;

    invoke-direct {v0}, Lcom/coremobility/integration/d/a;-><init>()V

    sput-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    :cond_0
    sget-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/integration/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->j()V

    return-void
.end method

.method public static h()V
    .locals 3

    sget-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/d/a;->b:Lcom/coremobility/integration/d/a;

    const/16 v0, 0x17

    const-string v1, "CM_AudioDeviceRestore Instance cleaned()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    const/16 v0, 0x17

    const-string v1, "CM_AudioDeviceRestore - KillTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_AudioDeviceRestore.KillTimer: "

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

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/integration/d/a;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x17

    const-string v1, "CM_AudioDeviceRestore.HandleTimer Ignored..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM_AudioDeviceRestore.HandleTimer With QueriedDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CurDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/integration/d/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " System Device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/integration/d/a;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MusicActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/coremobility/integration/d/a;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VoiceCallVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/integration/d/a;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/integration/d/a;->f:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/coremobility/integration/d/a;->e:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/coremobility/integration/d/a;->e:I

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(I)Z

    :cond_3
    iget-boolean v0, p0, Lcom/coremobility/integration/d/a;->g:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->b(Landroid/media/AudioManager;)V

    const/16 v0, 0x17

    const-string v1, "Music Player Resumed..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/coremobility/integration/d/a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/integration/d/a;->h:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM_AudioDeviceRestore.HandleTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object v2, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    iput v0, p0, Lcom/coremobility/integration/d/a;->e:I

    iput v0, p0, Lcom/coremobility/integration/d/a;->f:I

    iput-boolean v1, p0, Lcom/coremobility/integration/d/a;->g:Z

    iput-boolean v1, p0, Lcom/coremobility/integration/d/a;->a:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(IIZI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V

    :cond_0
    iput p1, p0, Lcom/coremobility/integration/d/a;->f:I

    iput p2, p0, Lcom/coremobility/integration/d/a;->e:I

    iput-boolean p3, p0, Lcom/coremobility/integration/d/a;->g:Z

    iput p4, p0, Lcom/coremobility/integration/d/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/integration/d/b;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/d/b;-><init>(Lcom/coremobility/integration/d/a;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/a;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_AudioDeviceRestore - StartTimer Called CurDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SystemDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM_AudioDeviceRestore.StartTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->k()V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/a;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/a;->e:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/integration/d/a;->g:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/d/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/integration/d/a;->h:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/integration/d/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/a;->a:Z

    invoke-direct {p0}, Lcom/coremobility/integration/d/a;->j()V

    :cond_0
    return-void
.end method
