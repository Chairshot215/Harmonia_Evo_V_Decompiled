.class Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcSIPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcSIPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcSIPReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/util/HtcSIPController;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/util/HtcSIPController;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/util/HtcSIPController;Lcom/android/settings/framework/util/HtcSIPController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;-><init>(Lcom/android/settings/framework/util/HtcSIPController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 235
    const-string v3, "SIP_VISIBLE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 236
    .local v2, sipVisible:Z
    const-string v3, "SIP_HEIGHT"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 240
    .local v1, sipHeight:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v0, outMetrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    #getter for: Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcSIPController;->access$100(Lcom/android/settings/framework/util/HtcSIPController;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    if-eqz v2, :cond_0

    .line 250
    iget-object v3, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    #getter for: Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcSIPController;->access$100(Lcom/android/settings/framework/util/HtcSIPController;)Landroid/view/Window;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    #getter for: Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcSIPController;->access$100(Lcom/android/settings/framework/util/HtcSIPController;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
