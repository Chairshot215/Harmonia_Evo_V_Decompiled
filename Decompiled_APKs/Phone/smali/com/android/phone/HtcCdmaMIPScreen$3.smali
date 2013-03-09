.class Lcom/android/phone/HtcCdmaMIPScreen$3;
.super Landroid/os/Handler;
.source "HtcCdmaMIPScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaMIPScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaMIPScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaMIPScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/HtcCdmaMIPScreen$3;->this$0:Lcom/android/phone/HtcCdmaMIPScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 153
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen$3;->this$0:Lcom/android/phone/HtcCdmaMIPScreen;

    #calls: Lcom/android/phone/HtcCdmaMIPScreen;->updateDialog(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/phone/HtcCdmaMIPScreen;->access$000(Lcom/android/phone/HtcCdmaMIPScreen;Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
