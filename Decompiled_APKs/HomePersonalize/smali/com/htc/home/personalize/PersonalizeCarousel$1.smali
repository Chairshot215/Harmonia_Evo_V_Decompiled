.class Lcom/htc/home/personalize/PersonalizeCarousel$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizeCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeCarousel;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/PersonalizeCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeCarousel$1;->this$0:Lcom/htc/home/personalize/PersonalizeCarousel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "Personalize"

    const-string v2, "onReceive ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeCarousel$1;->this$0:Lcom/htc/home/personalize/PersonalizeCarousel;

    invoke-virtual {v1}, Lcom/htc/home/personalize/PersonalizeCarousel;->finish()V

    .line 126
    :cond_0
    return-void
.end method
