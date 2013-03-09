.class Lcom/google/appinventor/components/runtime/GameClient$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->SetInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->val$instanceId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GameClient"

    const-string v1, "Instance id set to empty string."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/GameInstance;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->access$302(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "SetInstance"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$28;->val$instanceId:Ljava/lang/String;

    #calls: Lcom/google/appinventor/components/runtime/GameClient;->postSetInstance(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->access$900(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    goto :goto_0
.end method
