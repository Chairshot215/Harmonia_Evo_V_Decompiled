.class Lcom/android/phone/CdmaOperatingListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaOperatingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaOperatingListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_OPERATING_PREFERENCE:I = 0x0

.field private static final MESSAGE_SET_OPERATING_PREFERENCE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOperatingListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaOperatingListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaOperatingListPreference;Lcom/android/phone/CdmaOperatingListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaOperatingListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 143
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 144
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 147
    .local v1, statusCdmaOperatingMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOperatingListPreference;->setValue(Ljava/lang/String;)V

    .line 164
    .end local v1           #statusCdmaOperatingMode:I
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v1       #statusCdmaOperatingMode:I
    :cond_2
    const-string v2, "CdmaRoamingListPreference"

    const-string v3, "OoO reset cdma roaming mode to default"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->resetCdmaOperatingModeToDefault()V

    goto :goto_0
.end method

.method private handleSetCdmaOperatingPreference(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    invoke-virtual {v1}, Lcom/android/phone/CdmaOperatingListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    #getter for: Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaOperatingListPreference;->access$100(Lcom/android/phone/CdmaOperatingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->requesthTcGetHybridMode(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetCdmaOperatingModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOperatingListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaOperatingListPreference;

    #getter for: Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaOperatingListPreference;->access$100(Lcom/android/phone/CdmaOperatingListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->handleSetCdmaOperatingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
