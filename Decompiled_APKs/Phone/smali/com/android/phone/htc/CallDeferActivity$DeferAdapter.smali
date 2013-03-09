.class Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDeferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/htc/CallDeferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferAdapter"
.end annotation


# static fields
.field private static final ITEM_SIZE:I = 0x3

.field private static final ITEM_TYPE_ACTION:I = 0x1

.field private static final ITEM_TYPE_LABEL:I = 0x0

.field private static final POS_LABEL:I = 0x0

.field private static final POS_MESSAGE:I = 0x1

.field private static final POS_REMINDER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/CallDeferActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/htc/CallDeferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/htc/CallDeferActivity;Lcom/android/phone/htc/CallDeferActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;-><init>(Lcom/android/phone/htc/CallDeferActivity;)V

    return-void
.end method

.method private bindLabel(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_0
    const v1, 0x2020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 627
    .local v0, label:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 628
    const-string v1, "CallDefer"

    const-string v2, "find no label view"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    :cond_1
    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private bindMessage(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const v9, 0x7f0e00b7

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 636
    if-nez p1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 639
    :cond_0
    const v4, 0x7f0800d7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 640
    .local v1, label:Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 641
    const-string v4, "CallDefer"

    const-string v5, "find no item_label view"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_1
    const v4, 0x7f0800d8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 653
    .local v3, messageBtn:Landroid/widget/Button;
    if-nez v3, :cond_3

    .line 654
    const-string v4, "CallDefer"

    const-string v5, "find no item_button view"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    .end local v3           #messageBtn:Landroid/widget/Button;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    iget-object v4, v4, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    const v7, 0x7f0e022b

    invoke-virtual {v6, v7}, Lcom/android/phone/htc/CallDeferActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Lcom/android/phone/htc/CallDeferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, labelString:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 643
    .end local v2           #labelString:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    iget-object v6, v6, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Lcom/android/phone/htc/CallDeferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 656
    .restart local v3       #messageBtn:Landroid/widget/Button;
    :cond_3
    new-instance v4, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$1;-><init>(Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->getCustomMsgIndex()I
    invoke-static {v4}, Lcom/android/phone/htc/CallDeferActivity;->access$000(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I
    invoke-static {v5}, Lcom/android/phone/htc/CallDeferActivity;->access$100(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/phone/htc/CallDeferActivity;->access$500(Lcom/android/phone/htc/CallDeferActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 669
    .local v0, deferMsg:Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 664
    .end local v0           #deferMsg:Ljava/lang/CharSequence;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    invoke-static {v4}, Lcom/android/phone/htc/CallDeferActivity;->access$900(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I
    invoke-static {v5}, Lcom/android/phone/htc/CallDeferActivity;->access$100(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private bindReminder(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 678
    :cond_0
    const v3, 0x7f0800d7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 679
    .local v0, label:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 680
    const-string v3, "CallDefer"

    const-string v4, "find no item_label view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_1
    const v3, 0x7f0800d8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 686
    .local v1, reminderBtn:Landroid/widget/Button;
    if-nez v1, :cond_2

    .line 687
    const-string v3, "CallDefer"

    const-string v4, "find no item_button view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    .end local v1           #reminderBtn:Landroid/widget/Button;
    :cond_1
    const v3, 0x7f0e00b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 689
    .restart local v1       #reminderBtn:Landroid/widget/Button;
    :cond_2
    new-instance v3, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$2;-><init>(Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object v3, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I
    invoke-static {v4}, Lcom/android/phone/htc/CallDeferActivity;->access$1000(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I
    invoke-static {v5}, Lcom/android/phone/htc/CallDeferActivity;->access$1100(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I
    invoke-static {v6}, Lcom/android/phone/htc/CallDeferActivity;->access$1200(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v6

    #calls: Lcom/android/phone/htc/CallDeferActivity;->generateReminderText(III)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/htc/CallDeferActivity;->access$1300(Lcom/android/phone/htc/CallDeferActivity;III)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, reminderText:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 600
    packed-switch p3, :pswitch_data_0

    .line 617
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->bindLabel(Landroid/view/View;)V

    .line 620
    :goto_0
    return-void

    .line 607
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->bindMessage(Landroid/view/View;)V

    goto :goto_0

    .line 612
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->bindReminder(Landroid/view/View;)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, view:Landroid/view/View;
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 578
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 579
    const v2, 0x2090026

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 583
    const-string v2, "section_divider_top"

    invoke-static {v1, v2}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/android/phone/htc/CallDeferActivity;->access$700()Lcom/htc/widget/SimpleHtcListItemSeparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 596
    :goto_0
    return-object v1

    .line 585
    :cond_0
    if-lez p2, :cond_1

    const/4 v2, 0x3

    if-ge p2, v2, :cond_1

    .line 587
    const v2, 0x7f03002b

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 590
    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "common_pulldown"

    invoke-static {v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/android/phone/htc/CallDeferActivity;->access$800()Lcom/htc/widget/SimpleHtcListItemSeparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 543
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 524
    if-nez p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    if-le v1, p1, :cond_2

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 528
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-virtual {v2}, Lcom/android/phone/htc/CallDeferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 550
    .local v0, context:Landroid/content/Context;
    if-nez p2, :cond_0

    .line 551
    invoke-direct {p0, v0, p1, p3}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 558
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    .line 560
    return-object v1

    .line 555
    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 564
    const/4 v0, 0x1

    .line 565
    .local v0, enabled:Z
    if-nez p1, :cond_1

    .line 566
    const/4 v0, 0x0

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    const/4 v1, 0x3

    if-gt v1, p1, :cond_0

    .line 568
    const/4 v0, 0x0

    goto :goto_0
.end method
