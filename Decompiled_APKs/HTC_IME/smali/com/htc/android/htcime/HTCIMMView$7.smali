.class Lcom/htc/android/htcime/HTCIMMView$7;
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
    .line 2598
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

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

    const/4 v2, 0x0

    .line 2600
    packed-switch p1, :pswitch_data_0

    .line 2643
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2602
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/FullWCL;->setPressAtBottomLine(Z)V

    .line 2603
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, p2}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(I)V

    goto :goto_0

    .line 2608
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v3, 0x710

    if-ne p2, v4, :cond_1

    move p2, v2

    .end local p2
    :cond_1
    or-int v2, v3, p2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    .line 2611
    .restart local p2
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->updateWCLWin_ID(II)V

    goto :goto_0

    .line 2618
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/htc/android/htcime/PPIME/PPInputMethod;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2619
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v1, Landroid/view/View;

    check-cast v1, Lcom/htc/android/htcime/Intf/IHandwritingSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHandwritingSIP;->resetStrokeView()V

    .line 2621
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v3, 0x70b

    if-ne p2, v4, :cond_4

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 2624
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_3

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v1, :cond_0

    .line 2626
    :cond_3
    const-string v0, ",\t"

    .line 2627
    .local v0, delimeter:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentText(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .end local v0           #delimeter:Ljava/lang/String;
    :cond_4
    move v2, p2

    .line 2621
    goto :goto_1

    .line 2632
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v3, 0x712

    if-ne p2, v4, :cond_5

    :goto_2
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_5
    move v2, p2

    goto :goto_2

    .line 2635
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v3, 0x723

    if-ne p2, v4, :cond_6

    :goto_3
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_6
    move v2, p2

    goto :goto_3

    .line 2638
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$7;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v3, 0x749

    if-ne p2, v4, :cond_7

    :goto_4
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_7
    move v2, p2

    goto :goto_4

    .line 2600
    nop

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
