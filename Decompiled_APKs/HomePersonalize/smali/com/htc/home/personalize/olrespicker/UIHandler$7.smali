.class Lcom/htc/home/personalize/olrespicker/UIHandler$7;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/UIHandler;->alertNetworkProblem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$7;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$7;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    #getter for: Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->access$000(Lcom/htc/home/personalize/olrespicker/UIHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$7;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    .line 298
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$7;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    .line 299
    return-void
.end method
