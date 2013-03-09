.class Lcom/sqn/WimaxDbgClient$LogHandler;
.super Landroid/os/Handler;
.source "WimaxDbgClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/WimaxDbgClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxLogHandler"


# instance fields
.field final synthetic this$0:Lcom/sqn/WimaxDbgClient;


# direct methods
.method public constructor <init>(Lcom/sqn/WimaxDbgClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/WimaxDbgClient$LogHandler;->this$0:Lcom/sqn/WimaxDbgClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, -0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "WimaxLogHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dbg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
    .end packed-switch
.end method
