.class Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;
.super Ljava/lang/Object;
.source "AutoRotateWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/autorotatewidget/AutoRotateWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "workerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;


# direct methods
.method private constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 381
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$600(Lcom/htc/autorotatewidget/AutoRotateWidget;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$600(Lcom/htc/autorotatewidget/AutoRotateWidget;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;
    invoke-static {v1}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$700(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$600(Lcom/htc/autorotatewidget/AutoRotateWidget;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$600(Lcom/htc/autorotatewidget/AutoRotateWidget;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;
    invoke-static {v1}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$700(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-virtual {v1}, Lcom/htc/autorotatewidget/AutoRotateWidget;->isAutoRotateOn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/autorotatewidget/AutoRotateWidget;->UpdateIcon(I)V

    goto :goto_0

    .line 375
    :pswitch_3
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #calls: Lcom/htc/autorotatewidget/AutoRotateWidget;->unbindListener()V
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$800(Lcom/htc/autorotatewidget/AutoRotateWidget;)V

    .line 376
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #calls: Lcom/htc/autorotatewidget/AutoRotateWidget;->bindListener()V
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$900(Lcom/htc/autorotatewidget/AutoRotateWidget;)V

    .line 377
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$500(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    const/16 v1, 0x1fa8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1fa6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
