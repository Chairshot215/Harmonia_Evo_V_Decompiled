.class public Lcom/htc/cs/activity/accountactivities/CSSyncService;
.super Landroid/app/Service;
.source "CSSyncService.java"


# static fields
.field private static final CS_MIMETYPE:Ljava/lang/String; = "com.htc.CS/login"

.field static final LOG_TAG:Ljava/lang/String; = "CSAccount"

.field private static fAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->fAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSSyncService$1;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSSyncService$1;-><init>(Lcom/htc/cs/activity/accountactivities/CSSyncService;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->mBinder:Landroid/os/IBinder;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->syncLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSSyncService;->fAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->fAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSSyncService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSSyncService;->fAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    .line 45
    :cond_0
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
