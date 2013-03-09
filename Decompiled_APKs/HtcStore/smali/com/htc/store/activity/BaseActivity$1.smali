.class Lcom/htc/store/activity/BaseActivity$1;
.super Landroid/database/ContentObserver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/BaseActivity;->requestContactsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/BaseActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 346
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    iput-boolean v3, v0, Lcom/htc/store/activity/BaseActivity;->mContactsDirty:Z

    .line 348
    invoke-static {v3}, Lcom/htc/store/activity/BaseActivity;->access$102(Z)Z

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    if-nez v0, :cond_1

    .line 351
    invoke-static {v3}, Lcom/htc/store/activity/BaseActivity;->access$102(Z)Z

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$1;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
