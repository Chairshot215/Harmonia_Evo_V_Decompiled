.class Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
.super Landroid/os/Handler;
.source "FxTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/FxTodayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Lcom/htc/htccalendarwidgets/FxTodayAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 66
    move-object v0, p1

    .line 67
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->updateUI(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$000(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_0
    .end packed-switch
.end method
