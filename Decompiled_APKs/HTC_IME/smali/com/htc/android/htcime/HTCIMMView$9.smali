.class Lcom/htc/android/htcime/HTCIMMView$9;
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
    .line 2685
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventProcess_I(II)V
    .locals 4
    .parameter "event"
    .parameter "arg0"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 2687
    packed-switch p1, :pswitch_data_0

    .line 2722
    .end local p2
    :goto_0
    return-void

    .line 2689
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/android/htcime/ui/FullWCL;->setWCLID(I)V

    .line 2690
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ui/FullWCL;->setPressAtBottomLine(Z)V

    .line 2691
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    .line 2692
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLTopText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->handleWCLDropDown(Ljava/lang/String;II)V

    goto :goto_0

    .line 2695
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    .line 2696
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(I)V

    goto :goto_0

    .line 2702
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v2, 0x710

    if-ne p2, v3, :cond_0

    move p2, v0

    .end local p2
    :cond_0
    or-int v0, v2, p2

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    .line 2705
    .restart local p2
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/htc/android/htcime/HTCIMMView;->updateWCLWin_ID(II)V

    goto :goto_0

    .line 2708
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v2, 0x70b

    if-ne p2, v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1

    .line 2711
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v2, 0x712

    if-ne p2, v3, :cond_2

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_2

    .line 2714
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v2, 0x723

    if-ne p2, v3, :cond_3

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_3
    move v0, p2

    goto :goto_3

    .line 2717
    :pswitch_7
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$9;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    const/high16 v2, 0x749

    if-ne p2, v3, :cond_4

    :goto_4
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    :cond_4
    move v0, p2

    goto :goto_4

    .line 2687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
