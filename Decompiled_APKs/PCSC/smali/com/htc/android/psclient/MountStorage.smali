.class public Lcom/htc/android/psclient/MountStorage;
.super Ljava/lang/Object;
.source "MountStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountStorage"

.field private static context:Landroid/content/Context;

.field private static mCancelMount:Z

.field private static mCancelUnmount:Z

.field private static mCmdMount:Ljava/lang/String;

.field private static mCmdUnmount:Ljava/lang/String;

.field private static pause:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string v0, "mount"

    sput-object v0, Lcom/htc/android/psclient/MountStorage;->mCmdMount:Ljava/lang/String;

    .line 25
    const-string v0, "unmount"

    sput-object v0, Lcom/htc/android/psclient/MountStorage;->mCmdUnmount:Ljava/lang/String;

    .line 26
    sput-boolean v1, Lcom/htc/android/psclient/MountStorage;->mCancelMount:Z

    .line 27
    sput-boolean v1, Lcom/htc/android/psclient/MountStorage;->mCancelUnmount:Z

    .line 28
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/htc/android/psclient/MountStorage;->pause:Landroid/os/ConditionVariable;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sput-object p1, Lcom/htc/android/psclient/MountStorage;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getPlayNotificationSounds()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 144
    .local v0, playSound:Z
    return v0
.end method

.method private static ifSDReady(Ljava/lang/String;)Z
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, storage_state:Ljava/lang/String;
    const-string v3, "MountStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- storage_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdMount:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdUnmount:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    const-string v3, "shared"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 128
    goto :goto_0

    :cond_3
    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public static mountAsUsbStorage()V
    .locals 8

    .prologue
    const v7, 0x10403ff

    const/4 v6, 0x1

    .line 38
    const-string v3, "MountStorage"

    const-string v4, "-mountAsUsbStorage()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    const-string v3, "MountStorage"

    const-string v4, "USB disconnected, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .local v0, counter:I
    :cond_0
    :goto_0
    return-void

    .line 43
    .end local v0           #counter:I
    :cond_1
    const/4 v0, 0x0

    .line 44
    .restart local v0       #counter:I
    sput-boolean v6, Lcom/htc/android/psclient/MountStorage;->mCancelUnmount:Z

    .line 45
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/android/psclient/MountStorage;->mCancelMount:Z

    .line 46
    :goto_1
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdMount:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/psclient/MountStorage;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 47
    sget-boolean v3, Lcom/htc/android/psclient/MountStorage;->mCancelMount:Z

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "MountStorage"

    const-string v4, "Cancel mount, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_2
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 52
    const-string v3, "MountStorage"

    const-string v4, "Block mount storage 1 sec."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_3
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 57
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_4

    .line 58
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->context:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :cond_4
    sget-boolean v3, Lcom/htc/android/psclient/MountStorage;->mCancelMount:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdMount:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/psclient/MountStorage;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->context:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static unmountAsUsbStorage()V
    .locals 8

    .prologue
    const v7, 0x10403ff

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 75
    const-string v3, "MountStorage"

    const-string v4, "-unmountAsUsbStorage()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    const-string v3, "MountStorage"

    const-string v4, "USB disconnected, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .local v0, counter:I
    :cond_0
    :goto_0
    return-void

    .line 80
    .end local v0           #counter:I
    :cond_1
    const/4 v0, 0x0

    .line 81
    .restart local v0       #counter:I
    sput-boolean v5, Lcom/htc/android/psclient/MountStorage;->mCancelUnmount:Z

    .line 82
    sput-boolean v6, Lcom/htc/android/psclient/MountStorage;->mCancelMount:Z

    .line 83
    :goto_1
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdUnmount:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/psclient/MountStorage;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 84
    sget-boolean v3, Lcom/htc/android/psclient/MountStorage;->mCancelUnmount:Z

    if-eqz v3, :cond_2

    .line 85
    const-string v3, "MountStorage"

    const-string v4, "Cancel unmount, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 89
    const-string v3, "MountStorage"

    const-string v4, "Block unmount storage 1 sec."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_3
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 94
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_4

    .line 95
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->context:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 98
    :cond_4
    sget-boolean v3, Lcom/htc/android/psclient/MountStorage;->mCancelUnmount:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/psclient/MountStorage;->mCmdUnmount:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/psclient/MountStorage;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/htc/android/psclient/MountStorage;->context:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
