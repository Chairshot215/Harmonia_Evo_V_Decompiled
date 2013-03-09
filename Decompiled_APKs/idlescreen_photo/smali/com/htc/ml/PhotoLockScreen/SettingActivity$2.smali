.class Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;
.super Ljava/lang/Thread;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/SettingActivity;->runInNonUI(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    iput-object p2, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    sget-boolean v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->DBSaving:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->QuitSavingDB()V

    .line 154
    :cond_0
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 156
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    .line 157
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v2, "clear arrListMediaStore"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->val$data:Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->setSetting(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 164
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$000(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->val$data:Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->saveSetting(Landroid/content/Context;Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setIsDBDone(I)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$200(Lcom/htc/ml/PhotoLockScreen/SettingActivity;I)V

    .line 169
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->saveMediaStoreToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    const/4 v2, 0x1

    #calls: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setIsDBAvailable(Z)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$300(Lcom/htc/ml/PhotoLockScreen/SettingActivity;Z)V

    .line 171
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    const/4 v2, 0x1

    #calls: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setIsDBDone(I)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$200(Lcom/htc/ml/PhotoLockScreen/SettingActivity;I)V

    .line 185
    :goto_0
    monitor-exit v1

    .line 186
    return-void

    .line 175
    :cond_2
    sget v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    if-lez v0, :cond_3

    .line 177
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v2, "3D folder!!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$000(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$000(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
