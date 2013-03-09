.class Lcom/google/appinventor/components/runtime/GameClient$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$contents:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$recipients:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$recipients:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$contents:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$recipients:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$24;->val$contents:Lcom/google/appinventor/components/runtime/util/YailList;

    #calls: Lcom/google/appinventor/components/runtime/GameClient;->postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GameClient;->access$700(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
