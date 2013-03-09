.class public Lcom/htc/syncagent/svc/HTCSyncService;
.super Landroid/app/Service;
.source "HTCSyncService.java"


# static fields
.field private static final mSetForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mNF:Landroid/app/Notification;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private mSyncEnd:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 24
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 23
    sput-object v0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 25
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/htc/syncagent/svc/HTCSyncService$1;

    invoke-direct {v0, p0}, Lcom/htc/syncagent/svc/HTCSyncService$1;-><init>(Lcom/htc/syncagent/svc/HTCSyncService;)V

    iput-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSyncEnd:Landroid/content/BroadcastReceiver;

    .line 20
    return-void
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .parameter "method"
    .parameter "args"

    .prologue
    .line 57
    const-string v1, "FDUI"

    const-string v2, "invokeMethod"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startForegroundCompat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const-string v0, "FDUI"

    const-string v1, "startForegroundCompat"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->UpdateNotification()V

    .line 77
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "FDUI"

    const-string v1, "empty Notification"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 87
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundArgs:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 88
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopForegroundCompat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "FDUI"

    const-string v1, "stopForegroundCompat"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/htc/syncagent/util/HTCUICommon;->mNM:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 113
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 117
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public InitForegroundMethods()V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    .line 192
    sget-object v3, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 191
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    .line 194
    sget-object v3, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForeground"

    .line 205
    sget-object v3, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_1
    sget-object v1, Lcom/htc/syncagent/util/HTCUICommon;->mNM:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/htc/syncagent/util/HTCUICommon;->mNM:Landroid/app/NotificationManager;

    .line 217
    :cond_0
    const-string v1, "FDUI"

    const-string v2, "InitForegroundMethods"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 196
    .restart local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 199
    const-string v1, "FDUI"

    const-string v2, "No startForeground class"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 209
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v1, "FDUI"

    const-string v2, "No setForeground class"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public UpdateNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 222
    const-string v3, "FDUI"

    const-string v4, "UpdateNotification"

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v2, intent:Landroid/content/Intent;
    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/htc/syncagent/svc/HTCSyncService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, appName:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 230
    new-instance v3, Landroid/app/Notification;

    const/high16 v4, 0x7f02

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 230
    iput-object v3, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    .line 232
    iget-object v3, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 238
    const/4 v6, 0x0

    .line 240
    const/high16 v7, 0x1000

    .line 237
    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 235
    invoke-virtual {v3, p0, v0, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 242
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->mNM:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #appName:Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 244
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object v8, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    goto :goto_0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mNF:Landroid/app/Notification;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 175
    const-string v0, "FDUI"

    const-string v1, "Service onBind"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "FDUI"

    const-string v1, "Service onCreate!"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 126
    sget-boolean v0, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/syncagent/util/HTCUICommon;->initialize(Landroid/content/Context;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSyncEnd:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "psclient.intent.action.sync_end"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/syncagent/svc/HTCSyncService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->InitForegroundMethods()V

    .line 132
    invoke-direct {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->startForegroundCompat()V

    .line 133
    sput-object p0, Lcom/htc/syncagent/util/HTCUICommon;->mSVC:Lcom/htc/syncagent/svc/HTCSyncService;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/htc/syncagent/svc/HTCSyncService;->mSyncEnd:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/syncagent/svc/HTCSyncService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    sget-boolean v0, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->finish()V

    .line 166
    :cond_0
    const-string v0, "FDUI"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/htc/syncagent/svc/HTCSyncService;->stopForegroundCompat()V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/syncagent/util/HTCUICommon;->mSVC:Lcom/htc/syncagent/svc/HTCSyncService;

    .line 169
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 139
    const/4 v0, 0x1

    .line 143
    .local v0, ret:I
    const-string v1, "FDUI"

    const-string v2, "Service onStartCommand!"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "FDUI"

    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/htc/syncagent/util/HTCUICommon;->getCurrentActivity()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->isStatusThreadAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, "FDUI"

    const-string v2, "will start 7890."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->startStatusThread()V

    .line 152
    :cond_0
    const-string v1, "FDUI"

    const-string v2, "7890 started."

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 182
    const-string v0, "FDUI"

    const-string v1, "Service onUnbind"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    return v0
.end method
