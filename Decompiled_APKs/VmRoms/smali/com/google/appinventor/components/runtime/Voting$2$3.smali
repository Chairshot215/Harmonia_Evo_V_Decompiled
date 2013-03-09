.class Lcom/google/appinventor/components/runtime/Voting$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting$2;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Voting$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2$3;->this$1:Lcom/google/appinventor/components/runtime/Voting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2$3;->this$1:Lcom/google/appinventor/components/runtime/Voting$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Voting;->NoOpenPoll()V

    return-void
.end method
