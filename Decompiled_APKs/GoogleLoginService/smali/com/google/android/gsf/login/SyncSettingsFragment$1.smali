.class Lcom/google/android/gsf/login/SyncSettingsFragment$1;
.super Ljava/lang/Object;
.source "SyncSettingsFragment.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/SyncSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    #getter for: Lcom/google/android/gsf/login/SyncSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->access$100(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;-><init>(Lcom/google/android/gsf/login/SyncSettingsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
