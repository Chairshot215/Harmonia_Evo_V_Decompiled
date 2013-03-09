.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.super Landroid/app/Service;
.source "IdleScreenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKSCREEN_HIDE_LIVEWALLPAPPER:Ljava/lang/String; = "idleScreenHideLiveWallpaper"

.field public static final ACTION_LOCKSCREEN_IS_RESUME:Ljava/lang/String; = "idleScreenIsResume"

.field public static final ACTION_LOCKSCREEN_KEY_DOWN:Ljava/lang/String; = "idleScreen_key_down"

.field public static final ACTION_LOCKSCREEN_KEY_UP:Ljava/lang/String; = "idleScreen_key_up"

.field public static final ACTION_LOCKSCREEN_PHONE_UPDATE:Ljava/lang/String; = "idlescreen_Phone_state_update"

.field public static final ACTION_LOCKSCREEN_PREPARE_UNLOCK:Ljava/lang/String; = "idleScreenPrepareUnlock"

.field public static final ACTION_LOCKSCREEN_REMINDER_DISMISS:Ljava/lang/String; = "idleScreenReminderDismiss"

.field public static final ACTION_LOCKSCREEN_REMINDER_HANDLEALL:Ljava/lang/String; = "idleScreenReminderHandleAll"

.field public static final ACTION_LOCKSCREEN_REMINDER_REGISTER:Ljava/lang/String; = "idleScreenReminderRegister"

.field public static final ACTION_LOCKSCREEN_REMINDER_SNOOZE:Ljava/lang/String; = "idleScreenReminderSnooze"

.field public static final ACTION_LOCKSCREEN_REMINDER_SNOOZEALL:Ljava/lang/String; = "idleScreenReminderSnoozeAll"

.field public static final ACTION_LOCKSCREEN_REMINDER_UNREGISTER:Ljava/lang/String; = "idleScreenReminderUnRegister"

.field public static final ACTION_LOCKSCREEN_REMINDER_UPDATE:Ljava/lang/String; = "idleScreenReminderUpdate"

.field public static final ACTION_LOCKSCREEN_REMOTE_VIEW:Ljava/lang/String; = "idleScreen_remote_view"

.field public static final ACTION_LOCKSCREEN_SHORTCUT_UPDATE:Ljava/lang/String; = "idlescreen_shortcut_update"

.field public static final ACTION_LOCKSCREEN_SHOW_LIVEWALLPAPPER:Ljava/lang/String; = "idleScreenShowLiveWallpaper"

.field public static final ACTION_LOCKSCREEN_STARTACTIVITY:Ljava/lang/String; = "startActivityAndUnlock"

.field public static final ACTION_LOCKSCREEN_START_PENDING:Ljava/lang/String; = "ACTION_LOCKSCREEN_START_PENDING"

.field public static final ACTION_LOCKSCREEN_SURFACE_CREATE:Ljava/lang/String; = "idlescreen_surface_create"

.field public static final ACTION_LOCKSCREEN_SURVIVE:Ljava/lang/String; = "idleScreen_Survive"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_REGISTER:Ljava/lang/String; = "idleScreenTelephonyRegister"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_UNREGISTER:Ljava/lang/String; = "idleScreenTelephonyUnRegister"

.field public static final ACTION_LOCKSCREEN_TELEPHONY_UPDATE:Ljava/lang/String; = "idleScreenTelephonyUpdate"

.field public static final ACTION_LOCKSCREEN_UNLOCK:Ljava/lang/String; = "idleScreenUnlock"

.field public static final ACTION_LOCKSCREEN_VIEW_MODE:Ljava/lang/String; = "idleScreenViewMode"

.field public static final ACTION_LOCKSCREEN_WAKELOCK:Ljava/lang/String; = "idleScreenWakeLock"

.field public static final KEY_ACTIVITY_CLASS:Ljava/lang/String; = "KEY_ACTIVITY_CLASS"

.field public static final KEY_ACTIVITY_INTENT:Ljava/lang/String; = "KEY_ACTIVITY_INTENT"

.field public static final KEY_ACTIVITY_PACKAGE:Ljava/lang/String; = "KEY_ACTIVITY_PACKAGE"

.field public static final KEY_IS_RESUME:Ljava/lang/String; = "Key_IsResume"

.field public static final KEY_KEYCODE:Ljava/lang/String; = "Key_keycode"

.field public static final KEY_KEYEVENT:Ljava/lang/String; = "Key_keyEvent"

.field public static final KEY_PHONE_STATE:Ljava/lang/String; = "Key_PhoneState"

.field public static final KEY_REMINDER_ACTION:Ljava/lang/String; = "Key_ReminderAction"

.field public static final KEY_REMINDER_ID:Ljava/lang/String; = "Key_ReminderId"

.field public static final KEY_REMINDER_STATE:Ljava/lang/String; = "Key_ReminderState"

.field public static final KEY_REMINDER_TYPE:Ljava/lang/String; = "Key_ReminderType"

.field public static final KEY_REMOTE_VIEW:Ljava/lang/String; = "Key_remoteView"

.field public static final KEY_SHORTCUT_LIST:Ljava/lang/String; = "Key_shortcut_list"

.field public static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "Key_shortcut_visibility"

.field public static final KEY_TELEPHONY_STATE:Ljava/lang/String; = "Key_TelephonyState"

.field public static final KEY_UNLOCK_TYPE:Ljava/lang/String; = "Key_UnlockTpye"

.field public static final KEY_VIEW_MODE:Ljava/lang/String; = "Key_ViewMode"

.field public static final LOCKSCREEN_STATE_NORMAL:I = 0x0

.field public static final LOCKSCREEN_STATE_UNFOCUS:I = 0x2

.field public static final LOCKSCREEN_STATE_UNLOCK:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "IdleScreenService"

.field public static final REMINDER_ALARM:I = 0x1

.field public static final REMINDER_CALENDAR:I = 0x3

.field public static final REMINDER_TASK:I = 0x4

.field public static final REMINDER_TIMER:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.htc.lockscreen.idlescreen.IdleScreenService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "com.htc.lockscreen.idlescreen"


# instance fields
.field private mActiveEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 108
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;

    invoke-direct {v0, p0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    monitor-enter v2

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v2

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    return-void
.end method

.method public abstract onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    monitor-enter v2

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->detach()V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mActiveEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallbackLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;

    .line 125
    return-void
.end method
