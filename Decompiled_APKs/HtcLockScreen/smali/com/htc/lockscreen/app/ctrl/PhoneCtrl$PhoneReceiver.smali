.class Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v5, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, oldState:I
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #getter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "htc"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 141
    .local v4, phone:Lcom/htc/lockscreen/telephony/PhoneState;
    if-eqz v4, :cond_0

    .line 142
    iget v2, v4, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 144
    :cond_0
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->parser2PhoneState(Landroid/content/Intent;)Lcom/htc/lockscreen/telephony/PhoneState;
    invoke-static {v5, p2}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$200(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Landroid/content/Intent;)Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v4

    .line 145
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/lockscreen/telephony/PhoneState;->setFlag(I)V

    .line 146
    const-string v5, "is_video_call"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, bVideoCall:Z
    const-string v5, "PhoneCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser2PhoneState bVideoCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz v1, :cond_1

    .line 149
    iput v8, v4, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #getter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "htc"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget v5, v4, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-ne v5, v8, :cond_2

    if-eq v2, v8, :cond_2

    .line 155
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    const-string v6, "htc"

    #setter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$302(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .end local v1           #bVideoCall:Z
    .end local v2           #oldState:I
    .end local v4           #phone:Lcom/htc/lockscreen/telephony/PhoneState;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    invoke-virtual {v5}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->updateCurPhoneState()V

    .line 173
    return-void

    .line 158
    :cond_3
    const-string v5, "com.htc.lockscreen.phone.update_phoneState"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    const-string v5, "packageName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "phoneState"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 162
    .restart local v4       #phone:Lcom/htc/lockscreen/telephony/PhoneState;
    if-eqz v4, :cond_4

    .line 163
    const-string v5, "PhoneCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UPDATE_PHONE_STATE phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #setter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$302(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #getter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_4
    const-string v5, "PhoneCtrl"

    const-string v6, "ACTION_UPDATE_PHONE_STATE no phone"

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    #getter for: Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
