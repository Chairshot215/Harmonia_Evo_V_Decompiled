.class Lcom/android/settings/MobileDataEnabler$1;
.super Landroid/os/Handler;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$1;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$1;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$1;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 112
    .end local v0           #ni:Landroid/net/NetworkInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$1;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v1}, Lcom/android/settings/MobileDataEnabler;->checkMobileNetworkDisplayPolicy()V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
