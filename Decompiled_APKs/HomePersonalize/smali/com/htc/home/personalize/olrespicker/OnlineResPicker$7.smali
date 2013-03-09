.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 661
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 662
    :cond_0
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reloadList: activity is destroyed or finishing"

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 666
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 674
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ThumbnailView()V
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$900(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1000(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/PrepareThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1100(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1100(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v4}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->startToPrepare(Lcom/htc/home/personalize/abstractresource/PrepareThread;Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;Lcom/htc/home/personalize/olrespicker/UIHandler;)Lcom/htc/home/personalize/abstractresource/PrepareThread;

    move-result-object v1

    #setter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;
    invoke-static {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1002(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/abstractresource/PrepareThread;)Lcom/htc/home/personalize/abstractresource/PrepareThread;

    goto :goto_0

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2GridView()V
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$700(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    goto :goto_1

    .line 671
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ListView()V
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$800(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    goto :goto_1

    .line 666
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
