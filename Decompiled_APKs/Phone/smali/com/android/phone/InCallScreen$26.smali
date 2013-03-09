.class Lcom/android/phone/InCallScreen$26;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showTurnOnRadioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 8199
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8200
    iget-object v0, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "AlertDialog: CANCEL handler..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 8201
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$4802(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 8202
    iget-object v0, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 8203
    return-void
.end method
