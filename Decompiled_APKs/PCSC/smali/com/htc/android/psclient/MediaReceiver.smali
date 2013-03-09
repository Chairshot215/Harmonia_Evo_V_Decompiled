.class public Lcom/htc/android/psclient/MediaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    const-string v0, "MediaReceiver"

    iput-object v0, p0, Lcom/htc/android/psclient/MediaReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/android/psclient/MediaReceiver;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/android/psclient/MediaReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, action:Ljava/lang/String;
    move-object v1, p1

    .line 19
    .local v1, mContext:Landroid/content/Context;
    const-string v2, "MediaReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v2, "pimSyncPref"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/MediaReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 21
    iget-object v2, p0, Lcom/htc/android/psclient/MediaReceiver;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/MediaReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    .line 22
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/psclient/MediaReceiver$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/android/psclient/MediaReceiver$1;-><init>(Lcom/htc/android/psclient/MediaReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method
