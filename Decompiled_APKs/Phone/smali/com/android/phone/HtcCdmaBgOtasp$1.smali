.class Lcom/android/phone/HtcCdmaBgOtasp$1;
.super Landroid/os/Handler;
.source "HtcCdmaBgOtasp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaBgOtasp;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaBgOtasp;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaBgOtasp;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBgOtasp$1;->this$0:Lcom/android/phone/HtcCdmaBgOtasp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/phone/HtcCdmaBgOtasp$1;->this$0:Lcom/android/phone/HtcCdmaBgOtasp;

    #getter for: Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I
    invoke-static {v1}, Lcom/android/phone/HtcCdmaBgOtasp;->access$000(Lcom/android/phone/HtcCdmaBgOtasp;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp$1;->this$0:Lcom/android/phone/HtcCdmaBgOtasp;

    #getter for: Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaBgOtasp;->access$100(Lcom/android/phone/HtcCdmaBgOtasp;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp$1;->this$0:Lcom/android/phone/HtcCdmaBgOtasp;

    #getter for: Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaBgOtasp;->access$100(Lcom/android/phone/HtcCdmaBgOtasp;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 102
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp$1;->this$0:Lcom/android/phone/HtcCdmaBgOtasp;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaBgOtasp;->access$102(Lcom/android/phone/HtcCdmaBgOtasp;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
