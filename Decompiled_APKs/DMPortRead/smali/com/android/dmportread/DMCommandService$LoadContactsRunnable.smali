.class Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;
.super Ljava/lang/Object;
.source "DMCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContactsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method private constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dmportread/DMCommandService;Lcom/android/dmportread/DMCommandService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;-><init>(Lcom/android/dmportread/DMCommandService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$002(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 477
    const-string v0, "loadContacts"

    const-string v1, "flag == true, load again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #calls: Lcom/android/dmportread/DMCommandService;->loadContacts()V
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$100(Lcom/android/dmportread/DMCommandService;)V

    .line 479
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$000(Lcom/android/dmportread/DMCommandService;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 481
    const-string v0, "loadContacts"

    const-string v1, "finished loading, flag clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$202(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 483
    return-void
.end method
