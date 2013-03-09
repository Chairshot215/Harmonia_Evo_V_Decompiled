.class Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;
.super Ljava/util/TimerTask;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveProgress"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method private constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 1
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 727
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->logger:Lcom/htc/cs/util/Logger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cs/activity/accountactivities/CS_login$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 731
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 732
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v1, v1, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 734
    .local v0, h:I
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoveProgress webview height:"

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 735
    if-lez v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "removeDialog"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 738
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v1, v1, Lcom/htc/cs/activity/accountactivities/CS_login;->legalTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 741
    .end local v0           #h:I
    :cond_0
    return-void
.end method
