.class Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;
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
    name = "LoadSmsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method private constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$902(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 1639
    const-string v0, "loadSms"

    const-string v1, "flag == true, load again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #calls: Lcom/android/dmportread/DMCommandService;->loadTempSms()V
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$1000(Lcom/android/dmportread/DMCommandService;)V

    .line 1641
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$900(Lcom/android/dmportread/DMCommandService;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1643
    const-string v0, "loadSms"

    const-string v1, "finished loading, flag clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$1200(Lcom/android/dmportread/DMCommandService;)Lcom/android/dmportread/CurrentBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/dmportread/DMCommandService;->access$1100(Lcom/android/dmportread/DMCommandService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dmportread/CurrentBox;->refreshList(Ljava/util/ArrayList;)V

    .line 1646
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->mLoadSmsThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$1302(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1647
    return-void
.end method
