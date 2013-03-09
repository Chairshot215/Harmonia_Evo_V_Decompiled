.class public Lfr/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static final b:Lfr/flurry/android/FlurryAgent;

.field private static c:J

.field private static d:J

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Landroid/location/Criteria;

.field private static volatile kInsecureReportUrl:Ljava/lang/String;

.field private static volatile kSecureReportUrl:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Landroid/location/Location;

.field private E:Ljava/util/Map;

.field private F:Ljava/util/List;

.field private G:Z

.field private H:I

.field private I:Ljava/util/List;

.field private J:I

.field private final i:Landroid/os/Handler;

.field private j:Ljava/io/File;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Ljava/util/Map;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/util/List;

.field private t:Landroid/location/LocationManager;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:J

.field private x:Ljava/util/List;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 29
    sput-object v3, Lfr/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 30
    const-string v0, "http://data.flurry.com/aar.do"

    sput-object v0, Lfr/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    .line 31
    const-string v0, "https://data.flurry.com/aar.do"

    sput-object v0, Lfr/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Lfr/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lfr/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    .line 55
    const-wide/16 v0, 0x2710

    sput-wide v0, Lfr/flurry/android/FlurryAgent;->c:J

    .line 56
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lfr/flurry/android/FlurryAgent;->d:J

    .line 57
    sput-boolean v2, Lfr/flurry/android/FlurryAgent;->e:Z

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lfr/flurry/android/FlurryAgent;->f:Z

    .line 63
    sput-boolean v2, Lfr/flurry/android/FlurryAgent;->g:Z

    .line 64
    sput-object v3, Lfr/flurry/android/FlurryAgent;->h:Landroid/location/Criteria;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    .line 71
    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    .line 72
    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->l:Z

    .line 74
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->n:Ljava/util/Map;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->r:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->i:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xff

    .line 677
    if-nez p0, :cond_0

    .line 679
    const-string v0, ""

    .line 687
    :goto_0
    return-object v0

    .line 681
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_1

    move-object v0, p0

    .line 683
    goto :goto_0

    .line 687
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const-string v0, ""

    const-string v0, "FlurryAgent"

    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 358
    if-eqz v0, :cond_1

    .line 360
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    if-nez v0, :cond_8

    .line 364
    iput-object p2, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    .line 366
    sget-boolean v0, Lfr/flurry/android/FlurryAgent;->g:Z

    if-eqz v0, :cond_2

    .line 368
    new-instance v0, Lfr/flurry/android/d;

    invoke-direct {v0}, Lfr/flurry/android/d;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 371
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    .line 374
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->q:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 376
    invoke-static {v0}, Lfr/flurry/android/FlurryAgent;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->q:Ljava/lang/String;

    .line 378
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 381
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 386
    iget-wide v3, p0, Lfr/flurry/android/FlurryAgent;->m:J

    sub-long v3, v1, v3

    sget-wide v5, Lfr/flurry/android/FlurryAgent;->c:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 388
    const-string v3, "FlurryAgent"

    const-string v4, "Starting new session"

    invoke-static {v3, v4}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lfr/flurry/android/FlurryAgent;->y:J

    .line 392
    iput-wide v1, p0, Lfr/flurry/android/FlurryAgent;->z:J

    .line 393
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lfr/flurry/android/FlurryAgent;->A:J

    .line 394
    const-string v1, ""

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->B:Ljava/lang/String;

    .line 395
    const/4 v1, 0x0

    iput v1, p0, Lfr/flurry/android/FlurryAgent;->C:I

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    .line 397
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    .line 399
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->G:Z

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    .line 401
    const/4 v1, 0x0

    iput v1, p0, Lfr/flurry/android/FlurryAgent;->H:I

    .line 402
    const/4 v1, 0x0

    iput v1, p0, Lfr/flurry/android/FlurryAgent;->J:I

    .line 404
    iget-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->l:Z

    if-nez v1, :cond_7

    .line 406
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v2, 0xb5fa

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v3}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/DataInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :try_start_3
    invoke-static {v3}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->l:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot delete persistence file"

    invoke-static {v1, v2}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_1
    :try_start_5
    iget-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->l:Z

    if-nez v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->v:Z

    iget-wide v1, p0, Lfr/flurry/android/FlurryAgent;->y:J

    iput-wide v1, p0, Lfr/flurry/android/FlurryAgent;->w:J

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->l:Z

    .line 409
    :cond_7
    iget-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->r:Z

    .line 410
    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->i:Landroid/os/Handler;

    new-instance v3, Lfr/flurry/android/c;

    invoke-direct {v3, p0, v0, v1}, Lfr/flurry/android/c;-><init>(Lfr/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 423
    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    .line 406
    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_4
    :try_start_6
    const-string v3, "FlurryAgent"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v2}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 406
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_8
    invoke-static {v1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 417
    :cond_a
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 406
    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 1024
    if-eqz p0, :cond_0

    .line 1026
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 934
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 936
    if-le v0, v1, :cond_0

    .line 938
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 941
    :cond_0
    if-lt v0, v1, :cond_2

    .line 943
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 946
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    .line 947
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->v:Z

    .line 948
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/flurry/android/FlurryAgent;->w:J

    .line 952
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 953
    if-eqz v0, :cond_1

    .line 955
    new-array v0, v0, [B

    .line 958
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 959
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 962
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 966
    :cond_3
    :try_start_2
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    if-nez v0, :cond_1

    .line 659
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 663
    :cond_1
    :try_start_1
    iget v0, p0, Lfr/flurry/android/FlurryAgent;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/flurry/android/FlurryAgent;->C:I

    .line 664
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 666
    new-instance v0, Lfr/flurry/android/f;

    invoke-direct {v0}, Lfr/flurry/android/f;-><init>()V

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lfr/flurry/android/f;->a:J

    .line 668
    invoke-static {p1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/flurry/android/f;->b:Ljava/lang/String;

    .line 669
    invoke-static {p2}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/flurry/android/f;->c:Ljava/lang/String;

    .line 670
    invoke-static {p3}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/flurry/android/f;->d:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0x1f40

    const-string v0, "FlurryAgent"

    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    if-nez v0, :cond_1

    .line 563
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 567
    :cond_1
    :try_start_1
    invoke-static {p1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/flurry/android/e;

    .line 573
    if-nez v0, :cond_4

    .line 575
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v5, :cond_3

    .line 577
    new-instance v0, Lfr/flurry/android/e;

    invoke-direct {v0}, Lfr/flurry/android/e;-><init>()V

    .line 578
    const/4 v2, 0x1

    iput v2, v0, Lfr/flurry/android/e;->a:I

    .line 579
    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_2
    :goto_1
    sget-boolean v0, Lfr/flurry/android/FlurryAgent;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_7

    iget v0, p0, Lfr/flurry/android/FlurryAgent;->H:I

    if-ge v0, v4, :cond_7

    .line 598
    if-nez p2, :cond_8

    .line 600
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 602
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 604
    const-string v1, "FlurryAgent"

    invoke-static {v1}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 583
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventIds exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 591
    :cond_4
    iget v2, v0, Lfr/flurry/android/e;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lfr/flurry/android/e;->a:I

    goto :goto_1

    .line 611
    :cond_5
    invoke-static {v1, v0}, Lfr/flurry/android/FlurryAgent;->b(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v0

    .line 612
    array-length v1, v0

    iget v2, p0, Lfr/flurry/android/FlurryAgent;->H:I

    add-int/2addr v1, v2

    if-gt v1, v4, :cond_6

    .line 614
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget v1, p0, Lfr/flurry/android/FlurryAgent;->H:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lfr/flurry/android/FlurryAgent;->H:I

    goto/16 :goto_0

    .line 620
    :cond_6
    const/16 v0, 0x1f40

    iput v0, p0, Lfr/flurry/android/FlurryAgent;->H:I

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->G:Z

    goto/16 :goto_0

    .line 627
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->G:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v0, p2

    goto :goto_2
.end method

.method private a([B)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 759
    sget-object v0, Lfr/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lfr/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 760
    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    .line 776
    :cond_0
    :goto_1
    return v0

    .line 759
    :cond_1
    sget-object v0, Lfr/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 767
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lfr/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 772
    :goto_2
    if-nez v0, :cond_0

    sget-object v1, Lfr/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method private a([BLjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v2, "FlurryAgent"

    .line 799
    const-string v0, "FlurryAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending report to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    .line 802
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 803
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 804
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 806
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 807
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 808
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 809
    monitor-enter p0

    .line 811
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 813
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v1, "Report successful"

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->v:Z

    .line 815
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move v0, v3

    .line 822
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/flurry/android/FlurryAgent;->s:Ljava/util/List;

    .line 824
    return v0

    .line 820
    :cond_0
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, "Report failed"

    invoke-static {v1, v2}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Lfr/flurry/android/FlurryAgent;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1055
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1056
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1057
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1070
    :goto_0
    return-object v0

    .line 1061
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 1063
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1068
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v0, "FlurryAgent"

    .line 427
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 429
    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 430
    if-nez v0, :cond_0

    .line 432
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lfr/flurry/android/FlurryAgent;->a()V

    .line 441
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 443
    :goto_0
    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/flurry/android/FlurryAgent;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 454
    iput-wide v1, p0, Lfr/flurry/android/FlurryAgent;->m:J

    .line 456
    iget-wide v3, p0, Lfr/flurry/android/FlurryAgent;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lfr/flurry/android/FlurryAgent;->A:J

    .line 457
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->c()V

    .line 459
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->g()V

    .line 460
    if-nez p2, :cond_2

    .line 461
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->i:Landroid/os/Handler;

    new-instance v2, Lfr/flurry/android/a;

    invoke-direct {v2, p0, v0}, Lfr/flurry/android/a;-><init>(Lfr/flurry/android/FlurryAgent;Landroid/content/Context;)V

    sget-wide v3, Lfr/flurry/android/FlurryAgent;->c:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_2
    monitor-exit p0

    return-void

    .line 441
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 635
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 636
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 638
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 639
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 640
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 642
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 643
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    new-array v1, v1, [B

    :goto_1
    return-object v1

    .line 645
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 646
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)Landroid/location/Location;
    .locals 7
    .parameter

    .prologue
    .line 1075
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1078
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1080
    monitor-enter p0

    .line 1082
    :try_start_0
    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->t:Landroid/location/LocationManager;

    if-nez v1, :cond_3

    .line 1084
    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->t:Landroid/location/LocationManager;

    .line 1090
    :goto_0
    sget-object v1, Lfr/flurry/android/FlurryAgent;->h:Landroid/location/Criteria;

    .line 1091
    if-nez v1, :cond_1

    .line 1093
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1095
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_2

    .line 1098
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1099
    iget-object v2, p0, Lfr/flurry/android/FlurryAgent;->i:Landroid/os/Handler;

    new-instance v3, Lfr/flurry/android/b;

    invoke-direct {v3, p0}, Lfr/flurry/android/b;-><init>(Lfr/flurry/android/FlurryAgent;)V

    sget-wide v4, Lfr/flurry/android/FlurryAgent;->d:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    if-eqz v1, :cond_4

    .line 1107
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1110
    :goto_1
    return-object v0

    .line 1088
    :cond_3
    :try_start_1
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->t:Landroid/location/LocationManager;

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1110
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    .line 497
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 498
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 500
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 501
    iget-wide v0, p0, Lfr/flurry/android/FlurryAgent;->y:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 502
    iget-wide v0, p0, Lfr/flurry/android/FlurryAgent;->A:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 503
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->B:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 517
    :goto_0
    iget v0, p0, Lfr/flurry/android/FlurryAgent;->J:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 518
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 520
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 521
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/flurry/android/e;

    iget v0, v0, Lfr/flurry/android/e;->a:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 548
    :catch_0
    move-exception v0

    .line 550
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    :goto_2
    return-void

    .line 511
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 512
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 513
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 514
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 528
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 530
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_3

    .line 532
    :cond_2
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->G:Z

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 534
    iget v0, p0, Lfr/flurry/android/FlurryAgent;->C:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 535
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 536
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/flurry/android/f;

    .line 538
    iget-wide v4, v0, Lfr/flurry/android/f;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 539
    iget-object v4, v0, Lfr/flurry/android/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 540
    iget-object v4, v0, Lfr/flurry/android/f;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 541
    iget-object v0, v0, Lfr/flurry/android/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 544
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 546
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfr/flurry/android/FlurryAgent;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/flurry/android/FlurryAgent;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 695
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 696
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 698
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 699
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 700
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 701
    const/16 v0, 0x1e

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 703
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 706
    iget-wide v3, p0, Lfr/flurry/android/FlurryAgent;->w:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 707
    iget-wide v3, p0, Lfr/flurry/android/FlurryAgent;->y:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 710
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 711
    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 712
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 713
    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 714
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 715
    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 716
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 717
    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 718
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 721
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v5

    .line 722
    :goto_0
    if-ge v4, v3, :cond_0

    .line 724
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 725
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 722
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 728
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->s:Ljava/util/List;

    .line 730
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 731
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 736
    :goto_1
    monitor-exit p0

    return-object v0

    .line 733
    :catch_0
    move-exception v0

    .line 735
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    const/4 v0, 0x0

    goto :goto_1

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 4

    .prologue
    const-string v3, "FlurryAgent"

    const-string v2, ""

    .line 831
    :try_start_0
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->e()[B

    move-result-object v0

    .line 832
    if-eqz v0, :cond_0

    .line 834
    invoke-direct {p0, v0}, Lfr/flurry/android/FlurryAgent;->a([B)Z

    move-result v0

    .line 835
    if-eqz v0, :cond_0

    .line 838
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 844
    const-string v1, "FlurryAgent"

    const-string v1, ""

    invoke-static {v3, v2, v0}, Lfr/flurry/android/Flog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 846
    :catch_1
    move-exception v0

    .line 848
    const-string v1, "FlurryAgent"

    const-string v1, ""

    invoke-static {v3, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v0, "FlurryAgent"

    .line 973
    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 979
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :goto_0
    monitor-exit p0

    return-void

    .line 985
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lfr/flurry/android/FlurryAgent;->j:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 986
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 987
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 988
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 990
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 992
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->v:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 993
    iget-wide v2, p0, Lfr/flurry/android/FlurryAgent;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 997
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 999
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1000
    array-length v3, v0

    .line 1001
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-gt v4, v5, :cond_1

    .line 1003
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1006
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 997
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1008
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 1016
    :try_start_4
    invoke-static {v1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1010
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1012
    :goto_2
    :try_start_5
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1016
    :try_start_6
    invoke-static {v1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_3
    invoke-static {v1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1010
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static getForbidPlaintextFallback()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfr/flurry/android/FlurryAgent;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 210
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lfr/flurry/android/FlurryAgent;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    :try_start_0
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lfr/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3
    .parameter

    .prologue
    .line 339
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 341
    :try_start_0
    sget-object v1, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    iget-boolean v1, v1, Lfr/flurry/android/FlurryAgent;->k:Z

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "FlurryAgent"

    const-string v2, "Cannot setCaptureUncaughtExceptions after onSessionStart"

    invoke-static {v1, v2}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    sput-boolean p0, Lfr/flurry/android/FlurryAgent;->g:Z

    .line 347
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setContinueSessionMillis(J)V
    .locals 2
    .parameter

    .prologue
    .line 307
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 309
    :try_start_0
    sput-wide p0, Lfr/flurry/android/FlurryAgent;->c:J

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 267
    :try_start_0
    sput-object p0, Lfr/flurry/android/FlurryAgent;->h:Landroid/location/Criteria;

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLocationFixTimeoutMillis(J)V
    .locals 2
    .parameter

    .prologue
    .line 315
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 317
    :try_start_0
    sput-wide p0, Lfr/flurry/android/FlurryAgent;->d:J

    .line 318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 293
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 295
    if-eqz p0, :cond_0

    .line 297
    :try_start_0
    invoke-static {}, Lfr/flurry/android/Flog;->enableLog()V

    .line 303
    :goto_0
    monitor-exit v0

    return-void

    .line 301
    :cond_0
    invoke-static {}, Lfr/flurry/android/Flog;->disableLog()V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogEvents(Z)V
    .locals 2
    .parameter

    .prologue
    .line 323
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 325
    :try_start_0
    sput-boolean p0, Lfr/flurry/android/FlurryAgent;->e:Z

    .line 326
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setReportLocation(Z)V
    .locals 3
    .parameter

    .prologue
    .line 257
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfr/flurry/android/FlurryAgent;->r:Z

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    sput-object p0, Lfr/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 331
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 333
    :try_start_0
    sget-object v1, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/flurry/android/FlurryAgent;->B:Ljava/lang/String;

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 249
    sget-object v0, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-object v1, Lfr/flurry/android/FlurryAgent;->b:Lfr/flurry/android/FlurryAgent;

    iput-object p0, v1, Lfr/flurry/android/FlurryAgent;->q:Ljava/lang/String;

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->t:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->t:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :cond_0
    monitor-exit p0

    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 475
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :try_start_1
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->k:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lfr/flurry/android/FlurryAgent;->m:J

    sub-long/2addr v0, v2

    sget-wide v2, Lfr/flurry/android/FlurryAgent;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 480
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    if-eqz v0, :cond_0

    .line 483
    :try_start_2
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->f()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 490
    :cond_0
    :goto_1
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 486
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method final a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 857
    const/4 v0, 0x0

    .line 858
    if-eqz p2, :cond_0

    .line 860
    :try_start_0
    invoke-direct {p0, p1}, Lfr/flurry/android/FlurryAgent;->c(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 863
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :try_start_1
    iput-object v0, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    .line 866
    iget-boolean v0, p0, Lfr/flurry/android/FlurryAgent;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 867
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    if-eqz v0, :cond_2

    .line 870
    :try_start_2
    invoke-direct {p0}, Lfr/flurry/android/FlurryAgent;->f()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 877
    :cond_2
    :goto_1
    return-void

    .line 866
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 873
    :catch_0
    move-exception v0

    .line 875
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lfr/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lfr/flurry/android/FlurryAgent;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lfr/flurry/android/FlurryAgent;->b(Landroid/content/Context;Z)V

    .line 148
    return-void
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lfr/flurry/android/FlurryAgent;->D:Landroid/location/Location;

    .line 1127
    invoke-virtual {p0}, Lfr/flurry/android/FlurryAgent;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :goto_0
    monitor-exit p0

    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1131
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lfr/flurry/android/Flog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1139
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1151
    return-void
.end method
