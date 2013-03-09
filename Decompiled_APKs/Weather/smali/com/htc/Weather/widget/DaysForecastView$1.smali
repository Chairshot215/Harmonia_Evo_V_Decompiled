.class Lcom/htc/Weather/widget/DaysForecastView$1;
.super Landroid/os/Handler;
.source "DaysForecastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/DaysForecastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/DaysForecastView;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/DaysForecastView;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    :goto_1
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/Weather/widget/DaysForecastView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$100(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$100(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    #getter for: Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/DaysForecastView;->access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView$1;->this$0:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DaysForecastView;->updateData()V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
