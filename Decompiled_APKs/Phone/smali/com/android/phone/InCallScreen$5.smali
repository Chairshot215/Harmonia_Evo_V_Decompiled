.class Lcom/android/phone/InCallScreen$5;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3873
    iput-object p1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$5;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3875
    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1

    .line 3878
    :cond_0
    const/4 v0, 0x0

    .line 3889
    :goto_0
    return v0

    .line 3883
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    .line 3884
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3885
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3886
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3887
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 3889
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
