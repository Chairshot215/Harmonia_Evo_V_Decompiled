.class Lcom/android/phone/SimErrorDialog$1;
.super Landroid/os/Handler;
.source "SimErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SimErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/phone/SimErrorDialog$1;->this$0:Lcom/android/phone/SimErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog$1;->this$0:Lcom/android/phone/SimErrorDialog;

    #getter for: Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/SimErrorDialog;->access$000(Lcom/android/phone/SimErrorDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog$1;->this$0:Lcom/android/phone/SimErrorDialog;

    #getter for: Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/SimErrorDialog;->access$000(Lcom/android/phone/SimErrorDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 237
    :cond_0
    return-void
.end method
