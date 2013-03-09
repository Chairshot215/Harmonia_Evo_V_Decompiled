.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 7

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad component name"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "class"

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method
