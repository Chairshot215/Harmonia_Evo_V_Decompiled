.class public Lcom/coremobility/integration/app/CM_Service;
.super Landroid/app/Service;


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Lcom/coremobility/integration/app/CM_Service;

.field private static d:Landroid/os/IBinder;

.field private static e:Z

.field private static h:Landroid/app/PendingIntent;

.field private static i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

.field private static j:Z

.field private static k:Landroid/app/AlarmManager;

.field private static l:Landroid/os/PowerManager;

.field private static m:Landroid/os/PowerManager$WakeLock;

.field private static n:Lcom/coremobility/integration/app/g;

.field private static o:Lcom/coremobility/integration/app/i;

.field private static p:Landroid/os/Looper;

.field private static q:Landroid/os/MessageQueue;

.field private static t:I

.field private static volatile u:Z

.field private static volatile v:Z


# instance fields
.field private f:Lcom/coremobility/integration/app/j;

.field private g:Ljava/util/List;

.field private r:I

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "CM_Service"

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->b:Ljava/lang/String;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->e:Z

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sput v2, Lcom/coremobility/integration/app/CM_Service;->t:I

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->u:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    return-void
.end method

.method public static a()Lcom/coremobility/integration/app/CM_Service;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x17

    const-string v1, "postEvent Intent is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/coremobility/integration/app/CM_Service;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sput v0, Lcom/coremobility/integration/app/CM_Service;->t:I

    new-instance v0, Lcom/coremobility/integration/app/g;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/app/g;-><init>(Lcom/coremobility/integration/app/CM_Service;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/coremobility/d/a;->a()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->h()Z

    move-result v0

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/j;->a(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_App;->a(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/16 v0, 0x17

    const-string v1, "WakeUp service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->l()V

    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const/16 v0, 0x17

    const-string v1, "postEvent bundle is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/16 v0, 0x17

    const-string v1, "postEvent string is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "String"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/coremobility/integration/app/i;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    return-object v0
.end method

.method static synthetic b(Lcom/coremobility/integration/app/CM_Service;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/j;->b()V

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/coremobility/d/a;->b()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->e:Z

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    iget v0, p0, Lcom/coremobility/integration/app/CM_Service;->r:I

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/app/CM_Service;->stopSelfResult(I)Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    :cond_4
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_5
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    :cond_6
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    :cond_7
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    :cond_8
    iput-object v2, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->m()V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->o()V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    :cond_9
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/coremobility/integration/app/CM_Service;->t:I

    return v0
.end method

.method static synthetic c(Lcom/coremobility/integration/app/CM_Service;)V
    .locals 7

    const/4 v4, 0x0

    :cond_0
    sput-boolean v4, Lcom/coremobility/integration/app/CM_Service;->u:Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->d()V

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/coremobility/d/a;->c()J

    move-result-wide v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lcom/coremobility/integration/app/CM_Service;->v:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/coremobility/integration/app/CM_Service;->u:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->u:Z

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v3, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/app/i;->removeMessages(I)V

    sget-object v3, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v0, v5

    sget-object v5, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->o()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic d(Lcom/coremobility/integration/app/CM_Service;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    return-object v0
.end method

.method public static d()V
    .locals 2

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    return v0
.end method

.method public static g()V
    .locals 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->u:Z

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    :cond_1
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, 0x17

    const-string v2, "wakeup"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    return-void
.end method

.method static synthetic i()Z
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    return v0
.end method

.method static synthetic j()Lcom/coremobility/integration/app/i;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    return-object v0
.end method

.method static synthetic k()Lcom/coremobility/integration/app/CM_Service;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    return v0
.end method

.method private static n()V
    .locals 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "CM Message wakeup"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v0, 0x17

    const-string v2, "acquire WakeLock"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static o()V
    .locals 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    const/16 v0, 0x17

    const-string v2, "release WakeLock"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/app/f;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/coremobility/integration/app/f;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/app/f;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/16 v0, 0x17

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coremobility/integration/app/h;

    invoke-direct {v0}, Lcom/coremobility/integration/app/h;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    const-string v0, "power"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    new-instance v0, Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;-><init>(Lcom/coremobility/integration/app/CM_Service;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->b:Ljava/lang/String;

    sget v2, Lcom/coremobility/integration/app/CM_App;->c:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    if-nez v1, :cond_0

    const/16 v1, 0x17

    const-string v2, "No Looper"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    new-instance v1, Lcom/coremobility/integration/app/i;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/coremobility/integration/app/i;-><init>(Lcom/coremobility/integration/app/CM_Service;Landroid/os/Looper;)V

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    sput-object p0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/16 v0, 0x17

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.coremobility.app.vnotes.APP_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/16 v0, 0x17

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/coremobility/integration/app/CM_Service;->r:I

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_0
    const-string v2, "com.coremobility.app.vnotes.APP_STARTED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Lcom/coremobility/integration/app/i;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
