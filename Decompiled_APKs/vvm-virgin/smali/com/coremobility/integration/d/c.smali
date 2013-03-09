.class public final Lcom/coremobility/integration/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private a:Lcom/coremobility/integration/d/a;

.field private b:Lcom/coremobility/integration/b;

.field private c:Z

.field private d:I

.field private e:Lcom/coremobility/integration/i;

.field private f:Ljava/lang/String;

.field private g:Landroid/media/MediaPlayer;

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/io/FileInputStream;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/media/AudioManager;

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/reflect/Method;

.field private x:Ljava/lang/reflect/Method;

.field private y:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

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

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/integration/d/c;->a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/integration/d/c;->a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    new-array v1, v0, [B

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5}, Lcom/coremobility/integration/r;-><init>()V

    iput v0, v5, Lcom/coremobility/integration/r;->a:I

    invoke-static {p0, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4, v1, v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4, v5}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget v5, v5, Lcom/coremobility/integration/r;->a:I

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v6, 0x23

    if-ne v0, v6, :cond_2

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v6, 0x21

    if-ne v0, v6, :cond_2

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v6, 0x41

    if-ne v0, v6, :cond_2

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/16 v6, 0x52

    if-ne v0, v6, :cond_2

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/16 v6, 0xa

    if-ne v0, v6, :cond_2

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    move-wide v0, v2

    :goto_0
    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/coremobility/integration/d/h;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :cond_1
    :goto_2
    return-wide v0

    :pswitch_0
    const/16 v0, 0x28a

    :goto_3
    add-int/lit8 v1, v5, -0x6

    div-int/2addr v1, v0

    int-to-long v6, v1

    add-int/lit8 v1, v5, -0x6

    rem-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    int-to-long v0, v0

    const-wide/16 v8, 0x3e8

    mul-long v5, v6, v8

    add-long/2addr v0, v5

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2bc

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x320

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x384

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x3e8

    goto :goto_3

    :pswitch_5
    const/16 v0, 0x41a

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x546

    goto :goto_3

    :pswitch_7
    const/16 v0, 0x640

    goto :goto_3

    :pswitch_8
    const/16 v0, 0x12c

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x17

    const/4 v2, 0x0

    const-string v0, "******* CM_MediaPlayer::Create()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "startBluetoothSco"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "stopBluetoothSco"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Has AudioModeMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const-string v0, "Has StartBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    const-string v0, "Has StopBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    iput-object v6, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v6, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/coremobility/integration/d/c;->c:Z

    :cond_2
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-nez v0, :cond_9

    if-eqz p6, :cond_9

    invoke-virtual {p6}, Lcom/coremobility/integration/b;->b()I

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/coremobility/integration/d/c;->c:Z

    iput-object p6, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    move v0, v1

    :goto_4
    const/16 v3, 0x5dc

    iput v3, p0, Lcom/coremobility/integration/d/c;->d:I

    iput-object p2, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    iput p3, p0, Lcom/coremobility/integration/d/c;->h:I

    iput-object v6, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eq p1, v1, :cond_3

    if-eq p1, v7, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_3

    const-string v1, "Invalid Media Format - Setting to Default"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput v2, p0, Lcom/coremobility/integration/d/c;->q:I

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lcom/coremobility/integration/d/c;->q:I

    :cond_4
    :goto_5
    invoke-static {}, Lcom/coremobility/integration/d/a;->a()Lcom/coremobility/integration/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iget v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iput v0, p0, Lcom/coremobility/integration/d/c;->u:I

    iput-boolean p4, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    iput v2, p0, Lcom/coremobility/integration/d/c;->v:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/integration/d/c;->p:I

    iput p5, p0, Lcom/coremobility/integration/d/c;->o:I

    return-void

    :cond_5
    const-string v0, "Dont have AudioModeMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "Dont have StartBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "Dont have StopBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lcom/coremobility/integration/d/c;->q:I

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/coremobility/integration/d/c;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->f()I

    move-result v0

    iget v1, p0, Lcom/coremobility/integration/d/c;->h:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v5, v0}, Lcom/coremobility/integration/d/c;->b(II)V

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-eq v2, v1, :cond_1

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_CurOutputDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " New SystemDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/coremobility/integration/d/h;->a(I)Z

    iput v1, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->s:Z

    invoke-virtual {p0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    :cond_1
    iget v1, p0, Lcom/coremobility/integration/d/c;->v:I

    add-int/lit16 v1, v1, 0xc8

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->g()V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/coremobility/integration/d/c;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    iget v1, p0, Lcom/coremobility/integration/d/c;->q:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetVolume - volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    invoke-interface {v0, p1, p2}, Lcom/coremobility/integration/i;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coremobility/integration/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/c;->b(II)V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/i;->a(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized d()I
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0x17

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StartPlaybackTimer Called."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private e()I
    .locals 5

    const/16 v4, 0x17

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOutOfPlaybackDuration File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOutOfPlaybackDuration: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

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

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private f()I
    .locals 5

    const/16 v4, 0x17

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "GetCurrentPlayPos - Invalid Media State"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/c;->b(II)V

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/16 v4, 0x17

    const/4 v3, 0x0

    const-string v0, "CM_MediaPlayer::StopPlayer"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->p()V

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_3
    iget v0, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_4
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v0, v5, :cond_5

    const/16 v0, 0x17

    const-string v1, "Media Player Stopped..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_5
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eq v0, v2, :cond_7

    if-eq v0, v5, :cond_7

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    :cond_7
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    :cond_8
    new-instance v0, Lcom/coremobility/k/ce;

    invoke-direct {v0}, Lcom/coremobility/k/ce;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x17

    const-string v1, "Media Player Stopped..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/c;->i:I

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
    .locals 3

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StopPlaybackTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer - StartTimer Called. m_StatusReportInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private k()V
    .locals 3

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StopTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->c()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->u:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->f()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->p:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->b()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_SystemOutputDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m_MusicActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->c(Landroid/media/AudioManager;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsBluetoothConnected - getRouting NormalDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothScoOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BluetoothA2dpOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(Landroid/media/AudioManager;)V

    const-string v0, "Music Player Paused..."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    iget v1, p0, Lcom/coremobility/integration/d/c;->u:I

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-boolean v3, p0, Lcom/coremobility/integration/d/c;->n:Z

    iget v4, p0, Lcom/coremobility/integration/d/c;->p:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/integration/d/a;->a(IIZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreSystemAudioState Ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private n()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/d/h;->d()I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v2}, Lcom/coremobility/integration/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private o()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "******* CM_AudioPlayer::startBlueToothVoiceOutput()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b;->c()V

    goto :goto_1
.end method

.method private p()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "******* CM_AudioPlayer::stopBlueToothVoiceOutput()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b;->d()V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    return v0
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowAudioRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/coremobility/integration/d/a;->a:Z

    return-void
.end method

.method public final declared-synchronized a(ZI)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/16 v2, 0x17

    :try_start_0
    const-string v3, "CM_MediaPlayer::Resume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/16 v0, 0x17

    const-string v1, "Player Resume - Invalid Media State"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->l()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    invoke-virtual {p0, p1}, Lcom/coremobility/integration/d/c;->c(Z)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->q:I

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lcom/coremobility/integration/d/c;->b(I)V

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->o()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/coremobility/integration/d/c;->d:I

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    :goto_2
    new-instance v0, Lcom/coremobility/k/ch;

    invoke-direct {v0}, Lcom/coremobility/k/ch;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    :try_start_2
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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v2, :cond_4

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/c;->d(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method public final declared-synchronized a(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/coremobility/k/ai;

    invoke-direct {v2, p1}, Lcom/coremobility/k/ai;-><init>(I)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v1, Lcom/coremobility/k/bn;

    const/4 v2, 0x0

    const-string v3, "Invalid Media State"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    :goto_1
    if-gez v2, :cond_1

    move v2, v0

    :cond_1
    iget-object v3, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    new-instance v3, Lcom/coremobility/k/cg;

    invoke-direct {v3, v2}, Lcom/coremobility/k/cg;-><init>(I)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lcom/coremobility/k/bn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/coremobility/k/bn;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v2, p1

    goto :goto_1
.end method

.method public final declared-synchronized a(II)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    const/16 v2, 0x17

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* CM_MediaPlayer::Start() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v6, :cond_0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/coremobility/integration/d/c;->c(I)V

    const/16 v1, 0x17

    const-string v2, "startPlay - Invalid Media State"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput p2, p0, Lcom/coremobility/integration/d/c;->o:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/a;->d()I

    move-result v2

    iput v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iput v2, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->l()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->s:Z

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/d/c;->c(Z)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->q:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/coremobility/integration/d/c;->o:I

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->b(I)V

    :cond_1
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_2

    :try_start_2
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/coremobility/integration/d/c;->q:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    :cond_2
    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v6, :cond_5

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    const/16 v1, 0x17

    const-string v2, "Player Init Error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/coremobility/integration/d/c;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    :try_start_4
    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->c(I)V

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v2

    const/16 v3, 0x17

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x4

    :try_start_6
    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const/16 v3, 0x17

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->d()I

    move-result v2

    iput v2, p0, Lcom/coremobility/integration/d/c;->v:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v2, Lcom/coremobility/integration/d/d;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/d/d;-><init>(Lcom/coremobility/integration/d/c;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    new-instance v2, Lcom/coremobility/integration/d/e;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/d/e;-><init>(Lcom/coremobility/integration/d/c;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-lez p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/coremobility/integration/d/c;->a(I)Z

    :cond_6
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->o()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/coremobility/integration/d/c;->d:I

    move v3, v0

    :goto_2
    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/coremobility/integration/d/c;->b(II)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    :goto_3
    new-instance v2, Lcom/coremobility/k/ch;

    invoke-direct {v2}, Lcom/coremobility/k/ch;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v2, :cond_9

    const/16 v2, 0x7d0

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->d(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_9
    move v2, v0

    move v3, v1

    goto :goto_2
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    const-string v1, "CM_MediaPlayer::Pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->p()V

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_3
    iget v0, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_4
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v0, 0x17

    const-string v1, "Player Pause - Invalid Media State"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_6
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    new-instance v0, Lcom/coremobility/k/cf;

    invoke-direct {v0}, Lcom/coremobility/k/cf;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    :try_start_3
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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 3

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowBTDisconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/coremobility/integration/d/c;->c:Z

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x17

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    if-ne v1, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - Not Set in PAUSE State. Ignoring : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v1}, Lcom/coremobility/integration/d/a;->c()I

    move-result v1

    iput-boolean p1, p0, Lcom/coremobility/integration/d/c;->s:Z

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-ne v2, v4, :cond_5

    :cond_2
    if-eq v1, v4, :cond_4

    if-eqz p1, :cond_4

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_LOUDSPEAKER"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/coremobility/integration/d/h;->a(I)Z

    :cond_3
    :goto_1
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v1

    iput v1, p0, Lcom/coremobility/integration/d/c;->u:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - m_CurOutputDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_SystemOutputDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_EARPIECE"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-ne v2, v5, :cond_6

    invoke-static {v5}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    if-eq v1, v4, :cond_3

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_LOUDSPEAKER"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - Setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-static {v1}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_1
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/16 v0, 0x17

    const-string v1, "onCompletion called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/d/c;->i:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->g()V

    new-instance v0, Lcom/coremobility/k/ce;

    invoke-direct {v0}, Lcom/coremobility/k/ce;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError--->   what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/c;->c(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
