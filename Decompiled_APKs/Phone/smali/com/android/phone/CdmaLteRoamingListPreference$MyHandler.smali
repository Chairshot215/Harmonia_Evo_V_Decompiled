.class Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaLteRoamingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaLteRoamingListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_GET_PREFERRED_NETWORKTYPE:I = 0x0

.field public static final MESSAGE_SET_PREFERRED_NETWORKTYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaLteRoamingListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaLteRoamingListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaLteRoamingListPreference;Lcom/android/phone/CdmaLteRoamingListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaLteRoamingListPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkType(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 150
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v3, Lcom/android/phone/CdmaLteRoamingListPreference;->request:Ljava/lang/Integer;

    .line 151
    const/4 v1, 0x3

    .line 152
    .local v1, type:I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 153
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget v2, v2, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    if-eq v2, v1, :cond_1

    .line 157
    const-string v2, "CdmaLteRoamingListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIL and Secure was not sync, networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget v4, v4, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/CdmaLteRoamingListPreference;->checkingUpdate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaLteRoamingListPreference;->updateGUI(I)V

    .line 166
    :cond_1
    return-void
.end method

.method private handleSetPreferredNetworkType(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v2, Lcom/android/phone/CdmaLteRoamingListPreference;->request:Ljava/lang/Integer;

    .line 170
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 171
    const-string v1, "CdmaLteRoamingListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set networkType success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget v3, v3, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->handleGetPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->handleSetPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
