.class public Lcom/android/commands/monkey/MonkeyActivityEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyActivityEvent.java"


# instance fields
.field mAlarmTime:J

.field private mApp:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;J)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    return-void
.end method

.method private getEvent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/MonkeyActivityEvent;->getEvent()Landroid/content/Intent;

    move-result-object v3

    if-lez p3, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Switch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v1, "alarmTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    invoke-virtual {v15, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p2

    :try_start_0
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v16

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0

    :catch_1
    move-exception v16

    if-lez p3, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Permissions error starting activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v1, -0x2

    goto :goto_0
.end method
