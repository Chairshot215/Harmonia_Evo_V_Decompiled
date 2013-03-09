.class Lcom/htc/android/htcime/HTCIMMView$6;
.super Landroid/os/Handler;
.source "HTCIMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/HTCIMMView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMMView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2303
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2306
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 2307
    .local v0, keyboardPadding:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$1500(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2308
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$1500(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v3

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/ui/Bubble;->showAtCenterVertical(I)V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 2313
    .end local v0           #keyboardPadding:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->showProtectionError()V

    goto :goto_0

    .line 2316
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$1600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/tutorial/TipSystem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$1600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/tutorial/TipSystem;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$6;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/tutorial/TipSystem;->showTip(ILandroid/view/View;)V

    goto :goto_0

    .line 2303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
