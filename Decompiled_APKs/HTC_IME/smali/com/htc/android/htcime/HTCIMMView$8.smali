.class Lcom/htc/android/htcime/HTCIMMView$8;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;


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
    .line 2646
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventProcess_I(II)V
    .locals 5
    .parameter "event"
    .parameter "arg0"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 2648
    packed-switch p1, :pswitch_data_0

    .line 2682
    .end local p2
    :goto_0
    return-void

    .line 2650
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->setPressAtBottomLine(Z)V

    .line 2651
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(I)V

    goto :goto_0

    .line 2656
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v2, 0x710

    if-ne p2, v4, :cond_0

    move p2, v1

    .end local p2
    :cond_0
    or-int v1, v2, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    .line 2659
    .restart local p2
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/htc/android/htcime/HTCIMMView;->updateWCLWin_ID(II)V

    goto :goto_0

    .line 2662
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v2, 0x70b

    if-ne p2, v4, :cond_1

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    .line 2665
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v2, 0x712

    if-ne p2, v4, :cond_2

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    :cond_2
    move v1, p2

    goto :goto_2

    .line 2668
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v2, 0x723

    if-ne p2, v4, :cond_3

    :goto_3
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_3

    .line 2673
    :pswitch_6
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-ne v0, v2, :cond_5

    .line 2675
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v0, Landroid/view/View;

    check-cast v0, Lcom/htc/android/htcime/Intf/IHandwritingSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHandwritingSIP;->resetStrokeView()V

    .line 2677
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$8;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v2, 0x749

    if-ne p2, v4, :cond_6

    :goto_4
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_6
    move v1, p2

    goto :goto_4

    .line 2648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
