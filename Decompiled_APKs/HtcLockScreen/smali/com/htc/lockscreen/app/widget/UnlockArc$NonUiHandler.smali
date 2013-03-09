.class Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;
.super Landroid/os/Handler;
.source "UnlockArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/UnlockArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/widget/UnlockArc;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 242
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/app/widget/UnlockArc;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    .line 245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #getter for: Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$500(Lcom/htc/lockscreen/app/widget/UnlockArc;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lockscreen/app/util/ClockUtil;->updateDateTime(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    iget-object v0, v0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    iget-object v0, v0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
