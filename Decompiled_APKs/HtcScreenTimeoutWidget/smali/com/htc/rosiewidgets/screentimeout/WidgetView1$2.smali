.class Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;
.super Landroid/os/Handler;
.source "WidgetView1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/screentimeout/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    const-string v0, "HtcScreenTimeoutWidget"

    const-string v1, "handleMessage default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 212
    :sswitch_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->setButtonState()V

    goto :goto_0

    .line 219
    :sswitch_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 230
    :sswitch_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)Lcom/htc/rosiewidgets/screentimeout/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f47 -> :sswitch_0
        0x1fa6 -> :sswitch_1
        0x1fa7 -> :sswitch_2
    .end sparse-switch
.end method
