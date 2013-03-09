.class Lcom/android/phone/HtcIncallControlPanel$EventHandler;
.super Landroid/os/Handler;
.source "HtcIncallControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcIncallControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcIncallControlPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcIncallControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel$EventHandler;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcIncallControlPanel;Lcom/android/phone/HtcIncallControlPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel$EventHandler;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 844
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 858
    :goto_0
    return-void

    .line 846
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    .line 847
    .local v0, on:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel$EventHandler;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    #calls: Lcom/android/phone/HtcIncallControlPanel;->requestSpeakerStateChange(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/HtcIncallControlPanel;->access$100(Lcom/android/phone/HtcIncallControlPanel;Z)V

    goto :goto_0

    .end local v0           #on:Z
    :cond_0
    move v0, v1

    .line 846
    goto :goto_1

    .line 851
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 852
    .restart local v0       #on:Z
    :goto_2
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel$EventHandler;->this$0:Lcom/android/phone/HtcIncallControlPanel;

    #calls: Lcom/android/phone/HtcIncallControlPanel;->requestMuteStateChange(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/HtcIncallControlPanel;->access$200(Lcom/android/phone/HtcIncallControlPanel;Z)V

    goto :goto_0

    .end local v0           #on:Z
    :cond_1
    move v0, v1

    .line 851
    goto :goto_2

    .line 844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
