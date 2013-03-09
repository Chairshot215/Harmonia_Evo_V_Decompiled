.class Lcom/htc/android/psclient/UsbConnectionSettings$4;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings;->setListViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectionSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

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

    .line 541
    const-string v1, ""

    .line 542
    .local v1, type:Ljava/lang/String;
    add-int/lit8 p3, p3, -0x1

    .line 543
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 545
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_right_1:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 546
    sput-boolean v3, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 547
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #type:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 553
    .restart local v1       #type:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "HTC Sync"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 555
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 556
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v3, "HTC Sync"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Internet Sharing"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Position >= itemlist size."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_3
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$800(Lcom/htc/android/psclient/UsbConnectionSettings;)Z

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

    .line 566
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #calls: Lcom/htc/android/psclient/UsbConnectionSettings;->getSelectedDunIndex()I
    invoke-static {v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1600(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v3

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1502(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 568
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1700(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 569
    move v0, p3

    .line 571
    .local v0, net_position:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1700(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I
    invoke-static {v4}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1500(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v4

    new-instance v5, Lcom/htc/android/psclient/UsbConnectionSettings$4$2;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/psclient/UsbConnectionSettings$4$2;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/psclient/UsbConnectionSettings$4$1;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$4$1;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 597
    .end local v0           #net_position:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v3, "Internet Sharing"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    :cond_4
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Modem link"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 602
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$800(Lcom/htc/android/psclient/UsbConnectionSettings;)Z

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

    .line 607
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #calls: Lcom/htc/android/psclient/UsbConnectionSettings;->getSelectedDunIndex()I
    invoke-static {v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1600(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v3

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1502(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 609
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1700(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 610
    move v0, p3

    .line 612
    .restart local v0       #net_position:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1700(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I
    invoke-static {v4}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1500(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v4

    new-instance v5, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/psclient/UsbConnectionSettings$4$4;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/psclient/UsbConnectionSettings$4$3;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$4$3;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 638
    .end local v0           #net_position:I
    :goto_2
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v3, "Modem link"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    :cond_5
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Media Sync"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 643
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 644
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v3, "Media Sync"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    :cond_6
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Internet Pass Through"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 649
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 650
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    const-string v3, "Internet Pass Through"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    :cond_7
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "INTENT_OPTION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    sget-boolean v2, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

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

    .line 590
    :cond_8
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 591
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    goto/16 :goto_1

    .line 594
    :cond_9
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 595
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    goto/16 :goto_1

    .line 631
    :cond_a
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 632
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    goto/16 :goto_2

    .line 635
    :cond_b
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 636
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2, p3}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    goto/16 :goto_2
.end method
