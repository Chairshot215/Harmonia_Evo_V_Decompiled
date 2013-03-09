.class Lcom/htc/lockscreen/app/widget/UnlockHintView$1;
.super Landroid/os/Handler;
.source "UnlockHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/UnlockHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/UnlockHintView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/widget/UnlockHintView;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 36
    const-string v0, "UnlockHintView"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;->this$0:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->stopArrowAnime()V

    .line 40
    :cond_0
    return-void
.end method
