.class Lcom/android/settings/wimax/WimaxSettings$1;
.super Landroid/os/Handler;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
