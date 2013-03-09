.class Lcom/google/appinventor/components/runtime/Voting$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->SendBallot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Voting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    #getter for: Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Voting;->access$800(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    #getter for: Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Voting;->access$900(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/appinventor/components/runtime/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Voting;->access$1000(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
