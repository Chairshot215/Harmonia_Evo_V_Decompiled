.class Lcom/htc/android/htcime/HTCIMMView$2;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


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
    .line 1548
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1633
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1640
    return-void
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 11
    .parameter "v"

    .prologue
    const/high16 v10, 0x74d

    const/high16 v9, 0x712

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1554
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    if-eqz v3, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #calls: Lcom/htc/android/htcime/HTCIMMView;->feedbackEffect()V
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$200(Lcom/htc/android/htcime/HTCIMMView;)V

    .line 1557
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/FullWCL;->getTotalVisibleCandPage()I

    move-result v0

    .line 1558
    .local v0, TotalPage:I
    const/4 v2, 0x0

    .line 1560
    .local v2, nCurrentPage:I
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$400(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 1561
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->handleFullWCLClose()V

    goto :goto_0

    .line 1562
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$500(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 1564
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 1565
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    const-string v4, ""

    invoke-virtual {v3, v4, v6, v6}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(Ljava/lang/String;II)V

    .line 1566
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    const/high16 v4, 0x71a

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1568
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1570
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.htcime"

    const-string v4, "com.htc.android.htcime.ui.AddWordDialog"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1574
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1576
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$700(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 1579
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    if-gt v3, v4, :cond_4

    if-ge v2, v0, :cond_4

    .line 1580
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1584
    :cond_4
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    if-ne v3, v4, :cond_5

    .line 1585
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/FullWCL;->nextPage()V

    .line 1589
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v5

    aput v5, v3, v4

    .line 1591
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v8, v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v3

    if-ne v7, v3, :cond_6

    .line 1593
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    or-int/2addr v4, v10

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1597
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-nez v3, :cond_0

    .line 1598
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLSelByIndex_ID(I)V

    goto/16 :goto_0

    .line 1595
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    or-int/2addr v4, v9

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_2

    .line 1601
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$900(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 1604
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    if-gt v3, v4, :cond_8

    if-ge v2, v0, :cond_8

    .line 1605
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1607
    :cond_8
    add-int/lit8 v3, v2, -0x1

    if-gtz v3, :cond_9

    .line 1608
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v4

    aput v6, v3, v4

    .line 1610
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/FullWCL;->prePage()V

    .line 1616
    :goto_4
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v8, v3, :cond_a

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v3

    if-ne v7, v3, :cond_a

    .line 1618
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    or-int/2addr v4, v10

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1622
    :goto_5
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-nez v3, :cond_0

    .line 1623
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLSelByIndex_ID(I)V

    goto/16 :goto_0

    .line 1613
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;

    move-result-object v5

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v5

    aput v5, v3, v4

    goto :goto_4

    .line 1620
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMMView;->access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView$2;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMMView;->access$800(Lcom/htc/android/htcime/HTCIMMView;)I

    move-result v5

    aget v4, v4, v5

    or-int/2addr v4, v9

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_5
.end method
