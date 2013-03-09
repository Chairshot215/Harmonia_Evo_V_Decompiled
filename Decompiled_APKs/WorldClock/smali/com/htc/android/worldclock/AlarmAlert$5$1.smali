.class Lcom/htc/android/worldclock/AlarmAlert$5$1;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert$5;->onKilled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmAlert$5;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert$5;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 311
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1500(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 312
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$600(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Lcom/htc/android/worldclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, control:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 315
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .end local v0           #control:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v3, 0x1

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1600(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 327
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z
    invoke-static {v2, v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 332
    :goto_1
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1600(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 323
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z
    invoke-static {v2, v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 324
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0

    .line 329
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z
    invoke-static {v2, v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 330
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$5$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$5;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_1
.end method
