.class Lcom/google/android/finsky/services/ContentSyncService$5;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/ContentSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ContentSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncService$5;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$5;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    #setter for: Lcom/google/android/finsky/services/ContentSyncService;->mReplicating:Z
    invoke-static {v1, v4}, Lcom/google/android/finsky/services/ContentSyncService;->access$302(Lcom/google/android/finsky/services/ContentSyncService;Z)Z

    .line 150
    if-eqz p1, :cond_1

    .line 151
    const-string v1, "Installation state replication succeeded."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 153
    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$5;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    #getter for: Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z
    invoke-static {v1}, Lcom/google/android/finsky/services/ContentSyncService;->access$400(Lcom/google/android/finsky/services/ContentSyncService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "Another replication has been requested, rescheduling."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    #calls: Lcom/google/android/finsky/services/ContentSyncService;->scheduleReplication()V
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->access$200()V

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$5;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    invoke-virtual {v1}, Lcom/google/android/finsky/services/ContentSyncService;->stopSelf()V

    .line 170
    return-void

    .line 158
    :cond_1
    const-string v1, "Installation state replication failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 160
    .local v0, nextRetryNum:I
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 161
    const-string v1, "Giving up after %d failures."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "Scheduling replication attempt %d."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 166
    #calls: Lcom/google/android/finsky/services/ContentSyncService;->scheduleReplication()V
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->access$200()V

    goto :goto_0
.end method
