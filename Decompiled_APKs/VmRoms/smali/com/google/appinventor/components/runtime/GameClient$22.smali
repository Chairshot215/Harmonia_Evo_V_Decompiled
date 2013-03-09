.class Lcom/google/appinventor/components/runtime/GameClient$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->MakeNewInstance(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$makePublic:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->val$instanceId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->val$makePublic:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->val$instanceId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GameClient$22;->val$makePublic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/google/appinventor/components/runtime/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->access$600(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
