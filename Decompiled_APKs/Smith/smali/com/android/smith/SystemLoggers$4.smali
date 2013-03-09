.class Lcom/android/smith/SystemLoggers$4;
.super Landroid/os/Handler;
.source "SystemLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/SystemLoggers;


# direct methods
.method constructor <init>(Lcom/android/smith/SystemLoggers;)V
    .locals 0
    .parameter

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1604
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1673
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->updateViews(Z)V
    invoke-static {v1, v2}, Lcom/android/smith/SystemLoggers;->access$300(Lcom/android/smith/SystemLoggers;Z)V

    .line 1674
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v6, v6}, Lcom/android/smith/SystemLoggers;->access$400(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    return-void

    .line 1607
    :pswitch_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-eqz v1, :cond_6

    .line 1609
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$800(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1624
    :goto_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1200(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1300(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1400(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1500(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1600(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    if-nez v1, :cond_9

    :cond_1
    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1631
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1700(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    if-nez v1, :cond_a

    :cond_2
    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1632
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1800(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    if-nez v1, :cond_3

    :cond_3
    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1636
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    iget-object v5, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLayoutLoggers:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/smith/SystemLoggers;->access$1900(Lcom/android/smith/SystemLoggers;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/smith/SystemLoggers$ServiceInfo;->attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z

    .line 1638
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loaded:Z

    if-nez v1, :cond_5

    .line 1641
    :cond_4
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    aput-boolean v3, v1, v0

    .line 1644
    :cond_5
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v4}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1611
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    if-eqz v1, :cond_7

    .line 1613
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$900(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1615
    :cond_7
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    if-eqz v1, :cond_8

    .line 1617
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1000(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1621
    :cond_8
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$1100(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 1630
    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 1631
    goto/16 :goto_3

    :cond_b
    move v1, v3

    .line 1632
    goto/16 :goto_4

    .line 1649
    :pswitch_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    const-string v4, "System Loggers is started"

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1653
    :pswitch_2
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    const-string v4, "System Loggers is stopped"

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1655
    invoke-static {}, Lcom/android/smith/Device;->isUserBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    const v5, 0x7f040056

    invoke-virtual {v4, v5}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    const v5, 0x7f040057

    invoke-virtual {v4, v5}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f040040

    iget-object v5, p0, Lcom/android/smith/SystemLoggers$4;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->clickListenerClear:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v5}, Lcom/android/smith/SystemLoggers;->access$2000(Lcom/android/smith/SystemLoggers;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f040041

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1604
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
