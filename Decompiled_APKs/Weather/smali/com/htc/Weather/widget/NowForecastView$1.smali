.class Lcom/htc/Weather/widget/NowForecastView$1;
.super Landroid/os/Handler;
.source "NowForecastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/NowForecastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/NowForecastView;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/NowForecastView;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    :goto_1
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/Weather/widget/NowForecastView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$100(Lcom/htc/Weather/widget/NowForecastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$100(Lcom/htc/Weather/widget/NowForecastView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    #getter for: Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/NowForecastView;->access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView$1;->this$0:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/NowForecastView;->updateData()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
