.class Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
.super Landroid/os/Handler;
.source "DefaultKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/DefaultKeyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/ui/DefaultKeyButton;Lcom/htc/android/htcime/ui/DefaultKeyButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;-><init>(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$100()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #calls: Lcom/htc/android/htcime/ui/DefaultKeyButton;->clickButton()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$200(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 318
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableAutoPress:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$300(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$600(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    #setter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$402(Lcom/htc/android/htcime/ui/DefaultKeyButton;Landroid/os/Message;)Landroid/os/Message;

    .line 321
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$800()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    #setter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$702(Lcom/htc/android/htcime/ui/DefaultKeyButton;J)J

    .line 322
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$600(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$400(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J
    invoke-static {v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$700(Lcom/htc/android/htcime/ui/DefaultKeyButton;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$500()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #calls: Lcom/htc/android/htcime/ui/DefaultKeyButton;->clickButton()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$200(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 328
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$600(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    #setter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$402(Lcom/htc/android/htcime/ui/DefaultKeyButton;Landroid/os/Message;)Landroid/os/Message;

    .line 329
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$900()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    #setter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$702(Lcom/htc/android/htcime/ui/DefaultKeyButton;J)J

    .line 330
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$600(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$400(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->this$0:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    #getter for: Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J
    invoke-static {v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->access$700(Lcom/htc/android/htcime/ui/DefaultKeyButton;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method
