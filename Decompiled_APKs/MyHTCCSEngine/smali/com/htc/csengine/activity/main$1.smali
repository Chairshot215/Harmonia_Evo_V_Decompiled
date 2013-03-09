.class Lcom/htc/csengine/activity/main$1;
.super Landroid/os/Handler;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/csengine/activity/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/csengine/activity/main;


# direct methods
.method constructor <init>(Lcom/htc/csengine/activity/main;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/csengine/activity/main$1;->this$0:Lcom/htc/csengine/activity/main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/csengine/activity/main$1;->this$0:Lcom/htc/csengine/activity/main;

    invoke-static {}, Lcom/htc/cslib/util/LogUtil;->getLog()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/csengine/activity/main;->_appendToLogView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/csengine/activity/main;->access$000(Lcom/htc/csengine/activity/main;Ljava/lang/String;)V

    .line 125
    return-void
.end method
