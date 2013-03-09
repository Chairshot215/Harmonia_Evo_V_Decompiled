.class Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/MainActivity;


# direct methods
.method private constructor <init>(Lcom/htc/omadm/gui/ext/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/omadm/gui/ext/MainActivity;Lcom/htc/omadm/gui/ext/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;-><init>(Lcom/htc/omadm/gui/ext/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 75
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/omadm/gui/ext/DMGui;->informNormalGUIClose()V

    .line 76
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/omadm/gui/ext/DMGui;->resetParameter()V

    .line 77
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    const-string v2, "aaa"

    invoke-virtual {v1, v2}, Lcom/htc/omadm/gui/ext/DMGui;->setTitle(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    const-string v2, "bbb"

    invoke-virtual {v1, v2}, Lcom/htc/omadm/gui/ext/DMGui;->setMessage(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "OK"

    const-string v4, "NO"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/omadm/gui/ext/DMGui;->setButtonStyle(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->this$0:Lcom/htc/omadm/gui/ext/MainActivity;

    #getter for: Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/MainActivity;->access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/omadm/gui/ext/DMGui;->showNormalGUI()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ERROR"

    const-string v2, "Thread Interrupted"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
