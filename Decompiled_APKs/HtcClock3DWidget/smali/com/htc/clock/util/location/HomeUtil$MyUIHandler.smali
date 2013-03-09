.class Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;
.super Landroid/os/Handler;
.source "HomeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/HomeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/HomeUtil;


# direct methods
.method public constructor <init>(Lcom/htc/clock/util/location/HomeUtil;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    .line 201
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    .line 206
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    #calls: Lcom/htc/clock/util/location/HomeUtil;->updateHomeListener()V
    invoke-static {v1}, Lcom/htc/clock/util/location/HomeUtil;->access$200(Lcom/htc/clock/util/location/HomeUtil;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
