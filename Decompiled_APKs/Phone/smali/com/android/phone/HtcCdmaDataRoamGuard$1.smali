.class Lcom/android/phone/HtcCdmaDataRoamGuard$1;
.super Landroid/os/Handler;
.source "HtcCdmaDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaDataRoamGuard;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaDataRoamGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaDataRoamGuard;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuard;

    #getter for: Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogIndex:I
    invoke-static {v1}, Lcom/android/phone/HtcCdmaDataRoamGuard;->access$000(Lcom/android/phone/HtcCdmaDataRoamGuard;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuard;

    #getter for: Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->access$100(Lcom/android/phone/HtcCdmaDataRoamGuard;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuard;

    #getter for: Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->access$100(Lcom/android/phone/HtcCdmaDataRoamGuard;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
