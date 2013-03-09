.class Lcom/android/providers/telephony/TelephonyProvider$1;
.super Landroid/os/Handler;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->createCarriersCache()V
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$100(Lcom/android/providers/telephony/TelephonyProvider;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
