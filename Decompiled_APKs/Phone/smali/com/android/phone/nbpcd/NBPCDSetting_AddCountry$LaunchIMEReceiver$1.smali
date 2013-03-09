.class Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddCountry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->retryCount:I

    .line 299
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$402(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 300
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$400(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v1, v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mCountryNameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$500(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 302
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$500(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 303
    return-void
.end method
