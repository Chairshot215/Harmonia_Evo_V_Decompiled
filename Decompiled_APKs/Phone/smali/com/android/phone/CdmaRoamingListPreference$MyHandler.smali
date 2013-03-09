.class Lcom/android/phone/CdmaRoamingListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaRoamingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaRoamingListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_ROAMING_PREFERENCE:I = 0x0

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x1


# instance fields
.field private final EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

.field private final INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CdmaRoamingListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaRoamingListPreference;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    const-string v0, "intent_of_roaming_preference_updated"

    iput-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

    .line 174
    const-string v0, "roaming_mode_key"

    iput-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaRoamingListPreference;Lcom/android/phone/CdmaRoamingListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaRoamingListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 130
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 131
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 140
    :cond_0
    if-eq v2, v1, :cond_1

    .line 141
    move v1, v2

    .line 143
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaRoamingListPreference;->setValue(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v2}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->notifyRoamingModeChanged(I)V

    .line 158
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    :goto_0
    return-void

    .line 154
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_3
    const-string v3, "CdmaRoamingListPreference"

    const-string v4, "reset cdma roaming mode to default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_0
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 179
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaRoamingListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaRoamingListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    .end local v1           #cdmaRoamingMode:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 187
    return-void
.end method

.method private notifyRoamingModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent_of_roaming_preference_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "roaming_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaRoamingListPreference;

    #getter for: Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaRoamingListPreference;->access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
