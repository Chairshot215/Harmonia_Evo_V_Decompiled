.class Lcom/htc/lockscreen/app/widget/AlarmAnime$1;
.super Landroid/os/Handler;
.source "AlarmAnime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/AlarmAnime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/widget/AlarmAnime;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    #getter for: Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I
    invoke-static {v1}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->access$000(Lcom/htc/lockscreen/app/widget/AlarmAnime;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->access$002(Lcom/htc/lockscreen/app/widget/AlarmAnime;I)I

    .line 53
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    #getter for: Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->access$000(Lcom/htc/lockscreen/app/widget/AlarmAnime;)I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->access$002(Lcom/htc/lockscreen/app/widget/AlarmAnime;I)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->invalidate()V

    .line 57
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->this$0:Lcom/htc/lockscreen/app/widget/AlarmAnime;

    iget-object v0, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    return-void
.end method
