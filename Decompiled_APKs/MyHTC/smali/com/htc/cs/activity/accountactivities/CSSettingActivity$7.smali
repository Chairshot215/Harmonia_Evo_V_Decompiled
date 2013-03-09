.class Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;
.super Landroid/os/Handler;
.source "CSSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #calls: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$000(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSSettingActivity$7;->this$0:Lcom/htc/cs/activity/accountactivities/CSSettingActivity;

    #calls: Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->refreshUI()V
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSSettingActivity;->access$200(Lcom/htc/cs/activity/accountactivities/CSSettingActivity;)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
