.class Lcom/android/settings/wimax/WimaxEnabler$uiThread;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "uiThread"
.end annotation


# instance fields
.field NetworkState:Landroid/net/NetworkInfo$DetailedState;

.field curWimaxState:I

.field error:I

.field preWimaxState:I

.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;

.field uiEvent:I


# direct methods
.method public constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter
    .parameter "event"
    .parameter "err"
    .parameter "curState"
    .parameter "preState"
    .parameter "netState"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->uiEvent:I

    .line 156
    iput p3, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->error:I

    .line 157
    iput p5, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->preWimaxState:I

    .line 158
    iput p4, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->curWimaxState:I

    .line 159
    iput-object p6, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->NetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->uiEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->uiEvent:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->NetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->handleNetworkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget v1, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->error:I

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleError(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;I)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->updatePreferenceEnable()V
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$400(Lcom/android/settings/wimax/WimaxEnabler;)V

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget v1, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->curWimaxState:I

    iget v2, p0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;->preWimaxState:I

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxEnabledChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wimax/WimaxEnabler;->access$500(Lcom/android/settings/wimax/WimaxEnabler;II)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
