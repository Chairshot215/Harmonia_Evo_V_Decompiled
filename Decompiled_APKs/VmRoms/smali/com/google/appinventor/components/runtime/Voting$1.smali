.class Lcom/google/appinventor/components/runtime/Voting$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->RequestBallot()V
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

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$1;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$1;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    #calls: Lcom/google/appinventor/components/runtime/Voting;->postRequestBallot()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->access$000(Lcom/google/appinventor/components/runtime/Voting;)V

    return-void
.end method
