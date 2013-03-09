.class public final Lcom/coremobility/integration/i/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/i/b;
.implements Lcom/coremobility/integration/i/c;


# static fields
.field private static c:I

.field private static d:Lcom/coremobility/integration/i/e;

.field private static e:Lcom/coremobility/integration/i/l;

.field private static f:J

.field private static h:Lcom/coremobility/integration/i/f;

.field private static i:Z

.field private static j:Z

.field private static n:Landroid/app/AlarmManager;

.field private static o:Landroid/app/PendingIntent;

.field private static p:J


# instance fields
.field a:Lcom/coremobility/integration/i/g;

.field b:Lcom/coremobility/integration/i/a;

.field private g:Landroid/app/PendingIntent;

.field private k:Z

.field private l:Lcom/coremobility/integration/i/i;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x4c4b40

    sput v0, Lcom/coremobility/integration/i/f;->c:I

    sput-object v1, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    sput-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    sput-wide v3, Lcom/coremobility/integration/i/f;->f:J

    sput-object v1, Lcom/coremobility/integration/i/f;->h:Lcom/coremobility/integration/i/f;

    sput-boolean v2, Lcom/coremobility/integration/i/f;->i:Z

    sput-boolean v2, Lcom/coremobility/integration/i/f;->j:Z

    sput-object v1, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    sput-object v1, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/f;->k:Z

    iput-object v1, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    iput-object v1, p0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    iput-object v1, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/coremobility/integration/i/k;

    invoke-direct {v1, p0}, Lcom/coremobility/integration/i/k;-><init>(Lcom/coremobility/integration/i/f;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/coremobility/integration/i/j;

    invoke-direct {v1, p0}, Lcom/coremobility/integration/i/j;-><init>(Lcom/coremobility/integration/i/f;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sprint.action.TIMEOUT_CHECK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 8

    const/16 v7, 0x17

    const/4 v0, 0x5

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->e()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgrade json url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.sprint.ce.updater.EXTRA_ALT_TITLE"

    const v3, 0x7f0c0271

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.coremobility.app.vnotes.ACTION_UPDATE_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/coremobility/integration/i/f;->f:J

    return-wide p0
.end method

.method public static a()Lcom/coremobility/integration/i/f;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/i/f;->h:Lcom/coremobility/integration/i/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/i/f;

    invoke-direct {v0}, Lcom/coremobility/integration/i/f;-><init>()V

    sput-object v0, Lcom/coremobility/integration/i/f;->h:Lcom/coremobility/integration/i/f;

    :cond_0
    sget-object v0, Lcom/coremobility/integration/i/f;->h:Lcom/coremobility/integration/i/f;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/integration/i/l;)Lcom/coremobility/integration/i/l;
    .locals 0

    sput-object p0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    return-object p0
.end method

.method static synthetic a(Lcom/coremobility/integration/i/f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/coremobility/integration/i/f;->j:Z

    return p0
.end method

.method public static a([I[I)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    aget v3, p1, v0

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :cond_0
    return v1

    :cond_1
    aget v2, p0, v0

    aget v3, p1, v0

    if-lt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x17

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    array-length v2, v4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const-string v2, "Error: invalid version format"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    array-length v0, v4

    new-array v2, v0, [I

    move v0, v1

    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_3

    :try_start_0
    aget-object v3, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/coremobility/integration/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(J)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    sget-object v2, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm schedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    sget-object v0, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p0

    sget-object v4, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/integration/i/l;)V
    .locals 0

    invoke-static {p0}, Lcom/coremobility/integration/i/f;->c(Lcom/coremobility/integration/i/l;)V

    return-void
.end method

.method public static b()Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Lcom/coremobility/integration/s;

    invoke-direct {v1}, Lcom/coremobility/integration/s;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v1}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v1, v1, Lcom/coremobility/integration/s;->a:J

    sget v3, Lcom/coremobility/integration/i/f;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/coremobility/integration/i/f;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/i/f;->k:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v1, v1, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v1, v1, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v0, v0, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "response"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "entries"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move-object v0, v1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :try_start_2
    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :cond_2
    if-nez v0, :cond_0

    const/16 v1, 0x17

    const-string v3, "upgr url is null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method private static c(Lcom/coremobility/integration/i/l;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/coremobility/integration/i/l;->g:Z

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x505

    iget-object v4, p0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x507

    iget-object v4, p0, Lcom/coremobility/integration/i/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x506

    iget-object v4, p0, Lcom/coremobility/integration/i/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x508

    iget-object v4, p0, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x509

    iget-object v4, p0, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x411

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/integration/a/a;->a(II)Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x412

    sget-wide v2, Lcom/coremobility/integration/i/f;->f:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/integration/a/a;->a(II)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v1, v1, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v1, v1, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    iget-object v0, v0, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 5

    const/16 v2, 0x504

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->c()[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const-string v1, "https://upgradeserver-test.coremobility.com/"

    invoke-virtual {v0, v2, v4, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eng/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x11

    const-string v3, ""

    invoke-virtual {v1, v2, v4, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, ""

    invoke-virtual {v1, v2, v4, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const-string v1, "https://upgradeserver.coremobility.com/"

    invoke-virtual {v0, v2, v4, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prod/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static f()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    sget-wide v0, Lcom/coremobility/integration/i/f;->p:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x413

    const/4 v2, 0x0

    const v3, 0x278d00

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    sget-wide v4, Lcom/coremobility/integration/i/f;->f:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v8

    invoke-static {v0, v1}, Lcom/coremobility/integration/i/f;->b(J)V

    :cond_0
    :goto_0
    sput-wide v6, Lcom/coremobility/integration/i/f;->p:J

    return-void

    :cond_1
    mul-long/2addr v0, v8

    invoke-static {v0, v1}, Lcom/coremobility/integration/i/f;->b(J)V

    goto :goto_0

    :cond_2
    sget-wide v0, Lcom/coremobility/integration/i/f;->p:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    sget-wide v0, Lcom/coremobility/integration/i/f;->p:J

    invoke-static {v0, v1}, Lcom/coremobility/integration/i/f;->b(J)V

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/coremobility/integration/i/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x50a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const-string v0, "cm-android.apk"

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static k()Z
    .locals 9

    const/16 v8, 0x17

    const/4 v2, 0x0

    const-string v0, "getApplicationServiceUpgradedPreference "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x505

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->c()[I

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;)V

    const-string v0, "Application upgraded from voicemail to voicemail-to-text "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    :cond_2
    array-length v5, v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_4

    aget v7, v4, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v0, v7, :cond_3

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Lcom/coremobility/integration/i/f;->a(Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    array-length v1, v3

    array-length v5, v4

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_3
    array-length v5, v3

    if-ge v1, v5, :cond_1

    aget v5, v3, v1

    aget v6, v4, v1

    if-ne v5, v6, :cond_6

    const-string v0, "Application already upgraded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    aget v5, v3, v1

    aget v6, v4, v1

    if-ge v5, v6, :cond_7

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;)V

    const-string v0, "Application upgraded voicemail-to-text to voicemail-to-text"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;)V

    const-string v0, "Application is pre-installed "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic m()Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic n()Lcom/coremobility/integration/i/e;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    return-object v0
.end method

.method static synthetic o()J
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/coremobility/integration/i/f;->p:J

    return-wide v0
.end method

.method static synthetic p()Lcom/coremobility/integration/i/l;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    return-object v0
.end method

.method static synthetic q()Lcom/coremobility/integration/i/e;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/i/f;->j:Z

    return v0
.end method

.method static synthetic s()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/coremobility/integration/i/f;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static t()Ljava/util/Map;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4, v4, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const-string v3, ""

    invoke-virtual {v0, v2, v4, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/coremobility/j/e;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "User-Agent"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "MDN"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MEID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/i/e;ZZ)I
    .locals 9

    sget-boolean v0, Lcom/coremobility/integration/i/f;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    sget-object v1, Lcom/coremobility/integration/i/f;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    iget-object v2, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sput-object p1, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x413

    const/4 v3, 0x0

    const v4, 0x278d00

    invoke-virtual {v0, v1, v3, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/integration/i/f;->k:Z

    if-nez v0, :cond_6

    new-instance v5, Lcom/coremobility/integration/i/l;

    invoke-direct {v5}, Lcom/coremobility/integration/i/l;-><init>()V

    sput-object v5, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x505

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x507

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/coremobility/integration/i/l;->b:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x506

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/coremobility/integration/i/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x508

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x509

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x411

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v5, Lcom/coremobility/integration/i/l;->g:Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v6, 0x412

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    int-to-long v6, v0

    sput-wide v6, Lcom/coremobility/integration/i/f;->f:J

    invoke-virtual {v5}, Lcom/coremobility/integration/i/l;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/i/f;->k:Z

    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    const/16 v0, 0x17

    const-string v1, "Cur Time is 0."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/l;->b()V

    :cond_3
    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    if-eqz v0, :cond_8

    sget-wide v0, Lcom/coremobility/integration/i/f;->f:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/coremobility/integration/i/f;->p:J

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_4
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v5, 0x412

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    int-to-long v5, v0

    sput-wide v5, Lcom/coremobility/integration/i/f;->f:J

    goto :goto_2

    :cond_7
    sget-wide v5, Lcom/coremobility/integration/i/f;->f:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    sget-wide v5, Lcom/coremobility/integration/i/f;->f:J

    sub-long/2addr v3, v5

    int-to-long v0, v1

    cmp-long v0, v3, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->c()[I

    move-result-object v1

    if-eqz v1, :cond_b

    array-length v0, v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v3, 0x504

    const/4 v4, 0x0

    const-string v5, "https://upgradeserver-test.coremobility.com/"

    invoke-virtual {v0, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "eng/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v1, :cond_9

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    array-length v1, v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_c

    :cond_9
    const/16 v0, 0x17

    const-string v1, "versionNumber is null or invalid."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_5
    if-nez v1, :cond_10

    if-eqz p1, :cond_a

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coremobility/integration/i/l;->g:Z

    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_a
    const/4 v0, 0x0

    monitor-exit v2

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v3, 0x504

    const/4 v4, 0x0

    const-string v5, "https://upgradeserver.coremobility.com/"

    invoke-virtual {v0, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "prod/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v3, 0x11

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v3, 0xc

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/16 v0, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrade version url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->t()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_12

    const/16 v0, 0x17

    const-string v1, "mdn or meid is invalid."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_11

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coremobility/integration/i/l;->g:Z

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_11
    const/4 v0, 0x2

    monitor-exit v2

    goto/16 :goto_0

    :cond_12
    if-eqz p3, :cond_14

    if-eqz p1, :cond_13

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coremobility/integration/i/l;->g:Z

    const-wide/32 v3, 0xea60

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_13
    const/4 v0, 0x2

    monitor-exit v2

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_16

    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    const/4 v0, 0x1

    :cond_16
    :goto_7
    if-eqz v0, :cond_19

    if-eqz p1, :cond_17

    :try_start_3
    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coremobility/integration/i/l;->g:Z

    const-wide/32 v3, 0x2932e00

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_17
    const/4 v0, 0x2

    monitor-exit v2

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_19
    new-instance v0, Lcom/coremobility/integration/i/a;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/i/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v0, v3, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V

    :goto_8
    invoke-virtual {p0}, Lcom/coremobility/integration/i/f;->g()V

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/a;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/i/f;->i:Z

    const/4 v0, 0x0

    monitor-exit v2

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8
.end method

.method public final a(Lcom/coremobility/integration/i/g;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    iget-object v1, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/i;->a()I

    move-result v0

    iput-object v3, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v1, p0}, Lcom/coremobility/integration/i/a;->a(Lcom/coremobility/integration/i/b;)V

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/coremobility/integration/i/f;->i:Z

    invoke-virtual {p0}, Lcom/coremobility/integration/i/f;->h()V

    invoke-static {}, Lcom/coremobility/integration/i/f;->f()V

    return v0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/coremobility/integration/i/g;->i(I)V

    iput-object v3, p0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/integration/i/h;Landroid/app/Activity;)I
    .locals 3

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.sprint.permission.INSTALL_UPDATES"

    const-string v2, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/coremobility/integration/i/f;->a(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lcom/coremobility/integration/i/h;->h(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/coremobility/integration/i/i;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/i/i;-><init>(Lcom/coremobility/integration/i/f;)V

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/i/i;->a(Lcom/coremobility/integration/i/h;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkCancelResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->b:Lcom/coremobility/integration/i/a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/integration/i/d;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/coremobility/integration/i/f;->i:Z

    invoke-virtual {p0}, Lcom/coremobility/integration/i/f;->h()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/coremobility/integration/i/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/integration/i/m;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/i/m;-><init>(Lcom/coremobility/integration/i/f;)V

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/i/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coremobility/integration/i/m;->a()Lcom/coremobility/integration/i/l;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    if-eqz v1, :cond_9

    if-nez v0, :cond_8

    new-instance v1, Lcom/coremobility/integration/i/l;

    invoke-direct {v1}, Lcom/coremobility/integration/i/l;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v1, Lcom/coremobility/integration/i/l;->g:Z

    :goto_0
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/coremobility/integration/i/f;->p:J

    sget-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v0, 0x17

    :try_start_3
    const-string v2, "Upgrade Obj is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_0
    :goto_4
    iget-object v1, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/coremobility/integration/i/l;->g:Z

    :cond_1
    sput-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/coremobility/integration/i/f;->f:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coremobility/integration/i/f;->k:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/coremobility/integration/i/f;->p:J

    sget-object v2, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    invoke-interface {v2, v0, p2}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    sget-object v0, Lcom/coremobility/integration/i/f;->e:Lcom/coremobility/integration/i/l;

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->c(Lcom/coremobility/integration/i/l;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/i/f;->d:Lcom/coremobility/integration/i/e;

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {v0}, Lcom/coremobility/integration/i/l;->a()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coremobility/integration/i/l;->g:Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->c()[I

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/coremobility/integration/i/l;->h:[I

    if-nez v2, :cond_5

    :cond_4
    const/16 v1, 0x17

    const-string v2, "versionNumber is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    iget-object v1, v0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    const/16 v1, 0x17

    const-string v2, "versionNumber from Server = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_5
    array-length v1, v1

    iget-object v2, v0, Lcom/coremobility/integration/i/l;->h:[I

    array-length v2, v2

    if-eq v1, v2, :cond_6

    const/16 v1, 0x17

    const-string v2, "versionNumber length mismatch"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/coremobility/integration/i/l;->b()V

    goto :goto_5

    :cond_7
    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionNumber from Server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :cond_8
    move-object v1, v0

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected final g()V
    .locals 7

    iget-object v1, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/16 v2, 0x17

    const-string v3, "Timeout 120000"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.action.TIMEOUT_CHECK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    sget-object v0, Lcom/coremobility/integration/i/f;->n:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final h()V
    .locals 2

    iget-object v1, p0, Lcom/coremobility/integration/i/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/f;->g:Landroid/app/PendingIntent;

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

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/i/f;->l:Lcom/coremobility/integration/i/i;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coremobility/integration/i/f;->j:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
