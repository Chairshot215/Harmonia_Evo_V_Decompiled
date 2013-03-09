.class Lcom/futuredial/BaseThread$MyThreadHandler$1;
.super Landroid/os/Handler;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/BaseThread$MyThreadHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/BaseThread$MyThreadHandler;


# direct methods
.method constructor <init>(Lcom/futuredial/BaseThread$MyThreadHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/futuredial/BaseThread$MyThreadHandler$1;->this$0:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler$1;->this$0:Lcom/futuredial/BaseThread$MyThreadHandler;

    #getter for: Lcom/futuredial/BaseThread$MyThreadHandler;->handleMsg:Lcom/futuredial/HANDLEMSG;
    invoke-static {v0}, Lcom/futuredial/BaseThread$MyThreadHandler;->access$000(Lcom/futuredial/BaseThread$MyThreadHandler;)Lcom/futuredial/HANDLEMSG;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/futuredial/HANDLEMSG;->handleMessage(Landroid/os/Message;)V

    .line 77
    return-void
.end method
