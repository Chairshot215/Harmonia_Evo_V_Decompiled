.class public Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;
.super Landroid/os/Handler;
.source "PersonalizeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeMain;->access$300(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/home/personalize/AddListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeMain;->access$300(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/home/personalize/AddListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddListAdapter;->updateSummary()V

    .line 350
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeMain;->access$300(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/home/personalize/AddListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
