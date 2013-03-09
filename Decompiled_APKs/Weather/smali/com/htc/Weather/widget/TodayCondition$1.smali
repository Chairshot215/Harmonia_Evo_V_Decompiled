.class Lcom/htc/Weather/widget/TodayCondition$1;
.super Landroid/os/Handler;
.source "TodayCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/TodayCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/TodayCondition;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/TodayCondition;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    #calls: Lcom/htc/Weather/widget/TodayCondition;->switchInPanel()V
    invoke-static {v0}, Lcom/htc/Weather/widget/TodayCondition;->access$000(Lcom/htc/Weather/widget/TodayCondition;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    #calls: Lcom/htc/Weather/widget/TodayCondition;->switchOutPanel()V
    invoke-static {v0}, Lcom/htc/Weather/widget/TodayCondition;->access$100(Lcom/htc/Weather/widget/TodayCondition;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    #calls: Lcom/htc/Weather/widget/TodayCondition;->setCityName()V
    invoke-static {v0}, Lcom/htc/Weather/widget/TodayCondition;->access$200(Lcom/htc/Weather/widget/TodayCondition;)V

    .line 83
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    #calls: Lcom/htc/Weather/widget/TodayCondition;->startSwitchAnimation()V
    invoke-static {v0}, Lcom/htc/Weather/widget/TodayCondition;->access$300(Lcom/htc/Weather/widget/TodayCondition;)V

    .line 84
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition$1;->this$0:Lcom/htc/Weather/widget/TodayCondition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
