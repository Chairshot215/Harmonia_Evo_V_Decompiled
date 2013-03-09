.class public Leu/chainfire/supersu/NativeAccessReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string v1, "su_access"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "su_appname"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :cond_0
    :goto_0
    const-string v2, "su_fromuid"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "su_touid"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v2, "su_cmd"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "su_code"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    move-object v2, v0

    move v0, v10

    :goto_1
    if-nez v1, :cond_1

    const v1, 0x7f09000e

    invoke-static {p1, v1}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v5, :cond_2

    const v5, 0x7f09000e

    invoke-static {p1, v5}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v7, "INTERACTIVE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_10

    if-eqz v7, :cond_3

    const v5, 0x7f09001d

    invoke-static {p1, v5}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v8, Leu/chainfire/supersu/Settings;

    invoke-direct {v8, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_6

    move-object v6, v2

    :goto_2
    invoke-virtual {v8, v6}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v6

    iget-boolean v8, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v8, :cond_7

    iget v8, v6, Leu/chainfire/supersu/Settings$App;->i:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    iget v4, v6, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v6, v0, v4}, Leu/chainfire/supersu/Settings$App;->a(II)V

    :goto_3
    if-nez v2, :cond_c

    const v0, 0x7f090011

    :try_start_2
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const/4 v0, 0x1

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    const/4 v8, 0x2

    const/4 v0, 0x1

    if-ne v4, v0, :cond_a

    const v0, 0x7f09000f

    :goto_4
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_5
    if-eqz v7, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090013

    invoke-static {p1, v1}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    sget-object v1, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    :cond_4
    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Leu/chainfire/supersu/NativeAccessReceiver$1;

    invoke-direct {v2, p0, p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver$1;-><init>(Leu/chainfire/supersu/NativeAccessReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_7
    return-void

    :cond_6
    move-object v6, v1

    goto/16 :goto_2

    :cond_7
    iget-boolean v7, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_8
    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PromptQueue;->a(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SuperSU Receiver Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_9
    invoke-static {p1}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    goto :goto_7

    :cond_a
    const v0, 0x7f090010

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string v2, "%s (%s) has been %s superuser permissions"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const/4 v0, 0x1

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ne v4, v0, :cond_b

    const v0, 0x7f09000f

    :goto_8
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_b
    const v0, 0x7f090010

    goto :goto_8

    :cond_c
    const v0, 0x7f090012

    :try_start_3
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v6, 0x1

    const/4 v0, 0x1

    if-ne v4, v0, :cond_d

    const v0, 0x7f09000f

    :goto_9
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_5

    :cond_d
    const v0, 0x7f090010

    goto :goto_9

    :catch_1
    move-exception v0

    const-string v2, "%s has been %s superuser permissions"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const/4 v0, 0x1

    if-ne v4, v0, :cond_e

    const v0, 0x7f09000f

    :goto_a
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    const v0, 0x7f090010

    goto :goto_a

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    move v4, v6

    goto/16 :goto_3

    :cond_11
    move v10, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v10

    goto/16 :goto_1
.end method
