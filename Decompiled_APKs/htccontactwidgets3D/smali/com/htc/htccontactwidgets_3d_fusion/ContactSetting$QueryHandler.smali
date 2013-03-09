.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    .line 600
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 601
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 606
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x2

    .line 617
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    if-eqz p3, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    if-eqz p3, :cond_0

    .line 628
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
