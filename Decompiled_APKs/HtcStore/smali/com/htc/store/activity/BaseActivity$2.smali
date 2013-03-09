.class Lcom/htc/store/activity/BaseActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$2;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 438
    invoke-static {}, Lcom/htc/store/activity/BaseActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Receive broadcast to finsih self."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$2;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/BaseActivity;->finish()V

    .line 440
    return-void
.end method
