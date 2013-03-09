.class Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;
.super Ljava/lang/Object;
.source "AutoRotateWidget.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/autorotatewidget/AutoRotateWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;


# direct methods
.method private constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$400(Lcom/htc/autorotatewidget/AutoRotateWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    #getter for: Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$500(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    const/16 v1, 0x1fa8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 349
    :cond_0
    return-void
.end method
