.class Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;
.super Ljava/lang/Object;
.source "HtcSIPController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIPRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;->this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;Lcom/android/settings/framework/util/HtcSIPController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;-><init>(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;->this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    #getter for: Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->access$300(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 352
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;->this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    #getter for: Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->access$400(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;->this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 360
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;->this$1:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->send(ILandroid/os/Bundle;)V

    .line 362
    return-void
.end method
