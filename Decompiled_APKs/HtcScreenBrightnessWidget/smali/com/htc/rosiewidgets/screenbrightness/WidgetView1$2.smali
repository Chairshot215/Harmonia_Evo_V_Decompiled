.class Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;
.super Landroid/os/Handler;
.source "WidgetView1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 237
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 240
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 208
    :sswitch_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->setButtonState()V

    goto :goto_0

    .line 215
    :sswitch_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 225
    :sswitch_3
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$200(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$400(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->access$300(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f43 -> :sswitch_0
        0x1f48 -> :sswitch_1
        0x1fa6 -> :sswitch_2
        0x1fa7 -> :sswitch_3
    .end sparse-switch
.end method
