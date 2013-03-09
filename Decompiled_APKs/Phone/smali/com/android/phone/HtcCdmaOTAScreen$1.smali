.class Lcom/android/phone/HtcCdmaOTAScreen$1;
.super Landroid/os/Handler;
.source "HtcCdmaOTAScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaOTAScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaOTAScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaOTAScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/HtcCdmaOTAScreen$1;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$1;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    #calls: Lcom/android/phone/HtcCdmaOTAScreen;->initOTADialog()V
    invoke-static {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->access$000(Lcom/android/phone/HtcCdmaOTAScreen;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen$1;->this$0:Lcom/android/phone/HtcCdmaOTAScreen;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaOTAScreen;->finish()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
