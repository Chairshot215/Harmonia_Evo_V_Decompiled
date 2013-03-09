.class Lcom/google/appinventor/components/runtime/Voting$2$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting$2;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Voting$2;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2$5;->this$1:Lcom/google/appinventor/components/runtime/Voting$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Voting$2$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2$5;->this$1:Lcom/google/appinventor/components/runtime/Voting$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$2$5;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->WebServiceError(Ljava/lang/String;)V

    return-void
.end method
