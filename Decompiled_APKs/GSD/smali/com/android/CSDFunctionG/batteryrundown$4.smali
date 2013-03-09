.class Lcom/android/CSDFunctionG/batteryrundown$4;
.super Landroid/content/BroadcastReceiver;
.source "batteryrundown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/batteryrundown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/batteryrundown;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/batteryrundown;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x64

    const v8, 0x7f060031

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, action:Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 374
    .local v1, source:I
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iget-boolean v2, v2, Lcom/android/CSDFunctionG/batteryrundown;->b_Firstrec:Z

    if-ne v2, v7, :cond_1

    .line 377
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg3:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v4, v8}, Lcom/android/CSDFunctionG/batteryrundown;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iput-boolean v6, v2, Lcom/android/CSDFunctionG/batteryrundown;->b_Firstrec:Z

    .line 389
    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x5f

    if-ge v2, v3, :cond_3

    .line 391
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iput-boolean v7, v2, Lcom/android/CSDFunctionG/batteryrundown;->checkACadpter:Z

    .line 392
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 404
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iget-boolean v2, v2, Lcom/android/CSDFunctionG/batteryrundown;->checkACadpter:Z

    if-nez v2, :cond_1

    .line 406
    sget-boolean v2, Lcom/android/CSDFunctionG/batteryrundown;->stoprecord:Z

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iget-boolean v2, v2, Lcom/android/CSDFunctionG/batteryrundown;->b_TestFlag:Z

    if-ne v2, v7, :cond_2

    .line 420
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg7:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v4, v8}, Lcom/android/CSDFunctionG/batteryrundown;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/CSDFunctionG/batteryrundown;->last_Level:I

    .line 431
    :cond_2
    return-void

    .line 397
    :cond_3
    if-eqz v1, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    iput-boolean v7, v2, Lcom/android/CSDFunctionG/batteryrundown;->checkACadpter:Z

    .line 400
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown$4;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    #getter for: Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/CSDFunctionG/batteryrundown;->access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
