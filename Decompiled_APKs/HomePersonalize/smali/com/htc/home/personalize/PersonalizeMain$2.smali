.class Lcom/htc/home/personalize/PersonalizeMain$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$2;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, action:Ljava/lang/String;
    const-string v2, "Personalize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$2;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    const-string v2, "com.htc.home.personalize.Action.PickAppWidget"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$2;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/home/personalize/PersonalizeMain;->access$700(Lcom/htc/home/personalize/PersonalizeMain;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 757
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 758
    .local v1, pickIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$2;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/home/personalize/PersonalizeMain;->access$700(Lcom/htc/home/personalize/PersonalizeMain;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 759
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$2;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2, v1}, Lcom/htc/home/personalize/PersonalizeMain;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0
.end method
