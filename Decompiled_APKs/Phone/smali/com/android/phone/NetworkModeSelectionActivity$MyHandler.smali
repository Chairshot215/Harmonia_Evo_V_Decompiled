.class Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModeSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModeSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModeSelectionActivity;Lcom/android/phone/NetworkModeSelectionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;-><init>(Lcom/android/phone/NetworkModeSelectionActivity;)V

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
    iget-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    #calls: Lcom/android/phone/NetworkModeSelectionActivity;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/NetworkModeSelectionActivity;->access$300(Lcom/android/phone/NetworkModeSelectionActivity;Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
