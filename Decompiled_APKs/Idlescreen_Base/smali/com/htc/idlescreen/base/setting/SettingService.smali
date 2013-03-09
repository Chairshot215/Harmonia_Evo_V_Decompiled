.class public Lcom/htc/idlescreen/base/setting/SettingService;
.super Landroid/app/Service;
.source "SettingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION:Ljava/lang/String; = "setting_action"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "setting_value"

.field private static final LOG_PREFIX:Ljava/lang/String; = "SettingDBService"

.field public static final SHORTCUT_CHANGED_ACTION:Ljava/lang/String; = "com.htc.idlescreen.shortcut.changed"

.field private static final WHAT_ON_BASE:I = 0x2710

.field private static final WHAT_ON_UPDATE_APP:I = 0x2711

.field private static final WHAT_ON_UPDATE_CUSTOMIZE:I = 0x2713

.field private static final WHAT_ON_UPDATE_VISIBILITY:I = 0x2712


# instance fields
.field public mBgHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/setting/SettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingService;->broadcastShortcutChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/setting/SettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingService;->customizeSetting()V

    return-void
.end method

.method private broadcastShortcutChanged()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.idlescreen.shortcut.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intet:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/setting/SettingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private customizeSetting()V
    .locals 11

    .prologue
    .line 123
    invoke-static {p0}, Lcom/htc/idlescreen/base/setting/SettingDB;->loadSIESCVisibility(Landroid/content/Context;)I

    move-result v7

    .line 124
    .local v7, visibility:I
    invoke-static {p0}, Lcom/htc/idlescreen/base/setting/SettingDB;->loadSIEShortcuts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, update:Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 127
    invoke-static {}, Lcom/htc/idlescreen/base/MyLog;->IsDebugLog()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    const/4 v3, 0x1

    .line 129
    .local v3, order:I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    .line 130
    .local v0, appInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 131
    const-string v8, "IdleScreen_base"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen_ShortcutList : Shortcut Order> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v8, "IdleScreen_base"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen_ShortcutList : PID> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v8, "IdleScreen_base"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen_ShortcutList : CID> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .end local v4           #order:I
    .restart local v3       #order:I
    goto :goto_0

    .line 137
    .end local v0           #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #order:I
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v8

    invoke-virtual {v8, p0, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->saveShortcutList2(Landroid/content/Context;Ljava/util/List;)Z

    .line 138
    const/4 v5, 0x1

    .line 140
    :cond_2
    if-ltz v7, :cond_4

    .line 141
    invoke-static {}, Lcom/htc/idlescreen/base/MyLog;->IsDebugLog()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, visLog:Ljava/lang/String;
    if-lez v7, :cond_6

    .line 144
    const-string v6, "True"

    .line 149
    :goto_1
    const-string v8, "IdleScreen_base"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen_ShortcutList : Visibility> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v6           #visLog:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v8

    invoke-virtual {v8, p0, v7}, Lcom/htc/idlescreen/base/setting/SettingDB;->saveShortcutVisibility(Landroid/content/Context;I)Z

    .line 152
    const/4 v5, 0x1

    .line 154
    :cond_4
    if-eqz v5, :cond_5

    .line 155
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingService;->broadcastShortcutChanged()V

    .line 157
    :cond_5
    return-void

    .line 147
    .restart local v6       #visLog:Ljava/lang/String;
    :cond_6
    const-string v6, "False"

    goto :goto_1
.end method

.method private declared-synchronized initBgHandler()V
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShortcutDB"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;-><init>(Lcom/htc/idlescreen/base/setting/SettingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    .line 82
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 83
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 46
    const-string v6, "setting_action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v6, "SettingDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingService;->initBgHandler()V

    .line 49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 50
    .local v4, msg:Landroid/os/Message;
    iput p3, v4, Landroid/os/Message;->arg1:I

    .line 51
    const-string v6, "setting_action_update_shortcut_list"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    const-string v6, "setting_value"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 53
    .local v1, appArray:[Landroid/os/Parcelable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-eqz v1, :cond_0

    .line 55
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 56
    aget-object v6, v1, v3

    check-cast v6, Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3           #i:I
    :cond_0
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    const/16 v6, 0x2711

    iput v6, v4, Landroid/os/Message;->what:I

    .line 61
    iget-object v6, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    invoke-static {v6, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 74
    .end local v1           #appArray:[Landroid/os/Parcelable;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    :cond_1
    :goto_1
    const/4 v6, 0x3

    return v6

    .line 63
    :cond_2
    const-string v6, "setting_action_update_shortcut_visibility"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const-string v6, "setting_value"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 65
    .local v5, visibility:I
    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 66
    const/16 v6, 0x2712

    iput v6, v4, Landroid/os/Message;->what:I

    .line 67
    iget-object v6, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    invoke-static {v6, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1

    .line 69
    .end local v5           #visibility:I
    :cond_3
    const-string v6, "setting_action_update_shortcut_customize"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    const/16 v6, 0x2713

    iput v6, v4, Landroid/os/Message;->what:I

    .line 71
    iget-object v6, p0, Lcom/htc/idlescreen/base/setting/SettingService;->mBgHandler:Landroid/os/Handler;

    invoke-static {v6, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1
.end method
