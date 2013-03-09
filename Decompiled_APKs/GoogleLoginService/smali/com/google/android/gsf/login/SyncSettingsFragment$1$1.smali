.class Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "SyncSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/SyncSettingsFragment$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/login/SyncSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SyncSettingsFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;->this$1:Lcom/google/android/gsf/login/SyncSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;->this$1:Lcom/google/android/gsf/login/SyncSettingsFragment$1;

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$1$1;->this$1:Lcom/google/android/gsf/login/SyncSettingsFragment$1;

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    #calls: Lcom/google/android/gsf/login/SyncSettingsFragment;->onSyncStateUpdated()V
    invoke-static {v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->access$000(Lcom/google/android/gsf/login/SyncSettingsFragment;)V

    .line 70
    :cond_0
    return-void
.end method
