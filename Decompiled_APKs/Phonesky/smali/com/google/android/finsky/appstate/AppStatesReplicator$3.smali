.class Lcom/google/android/finsky/appstate/AppStatesReplicator$3;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->internalReplicate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field final synthetic val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

.field final synthetic val$accountsToReplicate:Ljava/util/List;

.field final synthetic val$currentAccountAppsHash:Ljava/lang/Integer;

.field final synthetic val$currentSystemAppsHash:Ljava/lang/Integer;

.field final synthetic val$finishedReplications:[I

.field final synthetic val$successfulReplications:[I

.field final synthetic val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/Integer;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/Integer;[I[ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentSystemAppsHash:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentAccountAppsHash:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    iput-object p7, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    iput-object p8, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountsToReplicate:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)V
    .locals 5
    .parameter "contentSyncResponseProto"

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentSystemAppsHash:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentAccountAppsHash:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountsToReplicate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    aget v3, v3, v4

    #calls: Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->access$200(Lcom/google/android/finsky/appstate/AppStatesReplicator;III)V

    .line 190
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)V

    return-void
.end method
