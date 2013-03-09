.class Lcom/google/android/talk/SettingsCache$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/SettingsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SettingsCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SettingsCache;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/talk/SettingsCache$1;->this$0:Lcom/google/android/talk/SettingsCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/SettingsCache$1;->this$0:Lcom/google/android/talk/SettingsCache;

    #calls: Lcom/google/android/talk/SettingsCache;->reset()V
    invoke-static {v0}, Lcom/google/android/talk/SettingsCache;->access$100(Lcom/google/android/talk/SettingsCache;)V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
