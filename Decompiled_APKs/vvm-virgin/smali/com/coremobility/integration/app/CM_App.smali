.class public Lcom/coremobility/integration/app/CM_App;
.super Landroid/app/Application;

# interfaces
.implements Lcom/coremobility/integration/app/k;


# static fields
.field private static F:Lcom/coremobility/integration/app/b;

.field private static G:I

.field private static H:I

.field private static I:Lcom/coremobility/integration/app/CM_App;

.field private static J:Landroid/os/PowerManager$WakeLock;

.field private static K:Z

.field private static L:Z

.field public static a:J

.field public static volatile b:Lcom/coremobility/integration/app/e;

.field public static c:I

.field public static d:I

.field protected static f:Lcom/coremobility/app/vnotes/cf;

.field protected static g:Z

.field private static h:Lcom/coremobility/integration/app/c;

.field private static i:Lcom/coremobility/integration/app/d;

.field private static j:Lcom/coremobility/integration/app/a;


# instance fields
.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    sput v2, Lcom/coremobility/integration/app/CM_App;->c:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->d:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->G:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->H:I

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->K:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->L:Z

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "CM_App"

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_App;->e:Ljava/lang/String;

    return-void
.end method

.method public static final a()Lcom/coremobility/integration/app/CM_App;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/coremobility/integration/app/CM_App;->G:I

    return-void
.end method

.method public static a(II)V
    .locals 2

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/d;->a(I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/integration/app/c;->a(Landroid/os/Handler;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    sput p0, Lcom/coremobility/integration/app/CM_App;->c:I

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    if-nez p0, :cond_0

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->K:Z

    if-ne v0, p0, :cond_1

    :cond_0
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x2328

    iput v0, v1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    sput-boolean p0, Lcom/coremobility/integration/app/CM_App;->K:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/coremobility/a/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()[I
    .locals 1

    invoke-static {}, Lcom/coremobility/a/c;->b()[I

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .locals 2

    :try_start_0
    const-string v0, "CM-RTNREQ"

    invoke-static {v0}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "RTN"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static g()Lcom/coremobility/app/vnotes/cf;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->K:Z

    return v0
.end method

.method public static i()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_App;->L:Z

    sget v0, Lcom/coremobility/integration/app/CM_App;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-direct {v0}, Lcom/coremobility/integration/app/CM_App;->p()V

    :cond_0
    return-void
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->L:Z

    return v0
.end method

.method public static n()V
    .locals 3

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/integration/app/c;->a(Landroid/os/Handler;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized p()V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    const-string v1, "Starting Service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Starting CM_VnoteService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    const-class v2, Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coremobility.app.vnotes.APP_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/CM_App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final e()Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "welcome_message"

    const-string v2, "raw"

    const-string v3, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "welcome_message_vtt"

    const-string v2, "raw"

    const-string v3, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    const-string v1, "Service Created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/app/c;

    invoke-direct {v0}, Lcom/coremobility/integration/app/c;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    new-instance v0, Lcom/coremobility/integration/app/d;

    invoke-direct {v0}, Lcom/coremobility/integration/app/d;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()V
    .locals 8

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    const-string v1, "Finish Starting Service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    :cond_0
    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    const/16 v1, 0x7e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a()V

    invoke-static {}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    const-string v1, "Service Destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()V
    .locals 3

    new-instance v0, Lcom/coremobility/integration/app/a;

    invoke-direct {v0}, Lcom/coremobility/integration/app/a;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/coremobility/integration/app/b;

    invoke-direct {v0}, Lcom/coremobility/integration/app/b;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->F:Lcom/coremobility/integration/app/b;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_App;->F:Lcom/coremobility/integration/app/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized onCreate()V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    if-nez v1, :cond_3

    sput-object p0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    const/4 v1, 0x1

    sput v1, Lcom/coremobility/integration/app/CM_App;->H:I

    invoke-static {}, Lcom/coremobility/integration/i/f;->i()V

    const/16 v1, 0x17

    const-string v2, "CM_App created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CM-RTNREQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/coremobility/integration/app/CM_App;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/coremobility/integration/app/CM_App;->deleteDatabase(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "cmconfigstring"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V

    const-string v0, "cmconfigvalue"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V

    const-string v0, "cmconfigdata"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_2
    :try_start_4
    const-string v0, "CM_App"

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_App;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    new-instance v0, Lcom/coremobility/integration/app/e;

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coremobility/integration/app/e;-><init>(Lcom/coremobility/integration/app/CM_App;Landroid/os/Looper;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    new-instance v0, Lcom/coremobility/app/vnotes/cf;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cf;-><init>(Lcom/coremobility/integration/app/CM_App;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    const/16 v0, 0x17

    const-string v1, "startService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_App;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized onTerminate()V
    .locals 3

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->o()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    :cond_0
    sget v0, Lcom/coremobility/integration/app/CM_App;->H:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/coremobility/integration/app/CM_App;->H:I

    const/16 v0, 0x17

    const-string v1, "CM_DestroyApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x17

    :try_start_1
    const-string v1, "CM_DestroyApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/app/CM_App;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/coremobility/integration/a; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :try_start_2
    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/coremobility/integration/a;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
