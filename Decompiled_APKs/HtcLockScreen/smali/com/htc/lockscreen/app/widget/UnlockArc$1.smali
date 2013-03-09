.class Lcom/htc/lockscreen/app/widget/UnlockArc$1;
.super Landroid/os/Handler;
.source "UnlockArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/UnlockArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/widget/UnlockArc;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #getter for: Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$000(Lcom/htc/lockscreen/app/widget/UnlockArc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #calls: Lcom/htc/lockscreen/app/widget/UnlockArc;->UpdateTimeUI()V
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$100(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->openScrollUI()V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->closeScrollUI()V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #getter for: Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$200(Lcom/htc/lockscreen/app/widget/UnlockArc;)Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    move-result-object v0

    .line 218
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->unlock()V

    goto :goto_0

    .line 223
    .end local v0           #callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    :pswitch_4
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #calls: Lcom/htc/lockscreen/app/widget/UnlockArc;->updateTargetPositionUI()V
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$300(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/app/widget/UnlockArc;->stopHintAnime(Z)V

    goto :goto_0

    .line 229
    :pswitch_6
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    #calls: Lcom/htc/lockscreen/app/widget/UnlockArc;->showUnlockHit()V
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->access$400(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    goto :goto_0

    .line 232
    :pswitch_7
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockArc;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->initUI()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
