.class Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;
.super Landroid/os/Handler;
.source "WidgetView1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 251
    const-string v0, "HtcBackgroundDataWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 276
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 255
    :sswitch_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->setButtonState()V

    goto :goto_0

    .line 262
    :sswitch_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$200(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$200(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$300(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 269
    :sswitch_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$200(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$200(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->access$300(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f42 -> :sswitch_0
        0x1fa6 -> :sswitch_1
        0x1fa7 -> :sswitch_2
    .end sparse-switch
.end method
