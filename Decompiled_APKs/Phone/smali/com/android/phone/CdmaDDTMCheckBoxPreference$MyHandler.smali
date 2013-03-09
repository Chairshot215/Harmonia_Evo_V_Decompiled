.class Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaDDTMCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaDDTMCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_DDTM:I = 0x3e8

.field private static final MESSAGE_SET_DDTM:I = 0x3e9


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaDDTMCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaDDTMCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaDDTMCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaDDTMCheckBoxPreference;Lcom/android/phone/CdmaDDTMCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaDDTMCheckBoxPreference;)V

    return-void
.end method

.method private handleGetDDTMResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaDDTMCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->setEnabled(Z)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 85
    .local v1, enable:I
    iget-object v4, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaDDTMCheckBoxPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private handleSetDDTMResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 98
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaDDTMCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->handleGetDDTMResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->handleSetDDTMResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
