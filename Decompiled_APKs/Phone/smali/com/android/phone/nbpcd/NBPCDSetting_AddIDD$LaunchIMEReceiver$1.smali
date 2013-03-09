.class Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddIDD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->retryCount:I

    .line 275
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$402(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 276
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$400(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    iget-object v1, v1, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$500(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 278
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver$1;->this$1:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mResultReceiver:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$500(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 279
    return-void
.end method
