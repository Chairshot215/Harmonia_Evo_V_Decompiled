.class Lcom/htc/android/psclient/SwitchUsbSettings$5;
.super Ljava/lang/Object;
.source "SwitchUsbSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings;->setListViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/SwitchUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v7, 0x7f070020

    const v6, 0x7f07001c

    const/4 v3, 0x0

    .line 494
    const-string v1, ""

    .line 495
    .local v1, type:Ljava/lang/String;
    add-int/lit8 p3, p3, -0x1

    .line 496
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    .line 497
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1200(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 498
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_right_1:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1300(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 499
    sput-boolean v3, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 500
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #type:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 506
    .restart local v1       #type:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "HTC Sync"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 508
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 509
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v3, "HTC Sync"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Internet Sharing"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Position >= itemlist size."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$800(Lcom/htc/android/psclient/SwitchUsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, ""

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 519
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #calls: Lcom/htc/android/psclient/SwitchUsbSettings;->getSelectedDunIndex()I
    invoke-static {v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1500(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v3

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1402(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 520
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1600(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 521
    move v0, p3

    .line 522
    .local v0, net_position:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1600(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I
    invoke-static {v4}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1400(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v4

    new-instance v5, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/psclient/SwitchUsbSettings$5$2;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$5;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/psclient/SwitchUsbSettings$5$1;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$5$1;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$5;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 548
    .end local v0           #net_position:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v3, "Internet Sharing"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    :cond_4
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Modem link"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$800(Lcom/htc/android/psclient/SwitchUsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ""

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 558
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #calls: Lcom/htc/android/psclient/SwitchUsbSettings;->getSelectedDunIndex()I
    invoke-static {v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1500(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v3

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1402(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 559
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1600(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 560
    move v0, p3

    .line 561
    .restart local v0       #net_position:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1600(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I
    invoke-static {v4}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1400(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v4

    new-instance v5, Lcom/htc/android/psclient/SwitchUsbSettings$5$4;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/psclient/SwitchUsbSettings$5$4;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$5;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/psclient/SwitchUsbSettings$5$3;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$5$3;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$5;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 587
    .end local v0           #net_position:I
    :goto_2
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v3, "Modem link"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    :cond_5
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Media Sync"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 591
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 592
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 593
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v3, "Media Sync"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    :cond_6
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Internet Pass Through"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 597
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 598
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 599
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    const-string v3, "Internet Pass Through"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    :cond_7
    sget-boolean v2, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 541
    :cond_8
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 542
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    goto/16 :goto_1

    .line 545
    :cond_9
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 546
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    goto/16 :goto_1

    .line 580
    :cond_a
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 581
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    goto/16 :goto_2

    .line 584
    :cond_b
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 585
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$5;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    goto/16 :goto_2
.end method
