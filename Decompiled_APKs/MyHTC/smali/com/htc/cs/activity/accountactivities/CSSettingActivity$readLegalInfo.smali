.class Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;
.super Ljava/lang/Thread;
.source "CSSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "readLegalInfo"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "con"
    .parameter "msg"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->context:Landroid/content/Context;

    .line 430
    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->mEndMsg:Landroid/os/Message;

    .line 431
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #calls: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->getMarketOptIn()Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$400(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$302(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 442
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->MarketOptIn:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$300(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->removeDialog(I)V

    .line 444
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$readLegalInfo;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 446
    :cond_0
    return-void
.end method
