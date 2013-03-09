.class Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailMessageActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAdapter"
.end annotation


# instance fields
.field private listItemPxSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    .line 483
    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 484
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 485
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 486
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->listItemPxSize:I

    .line 487
    return-void
.end method

.method private bindMmsMessage(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 19
    .parameter "parent"
    .parameter "cursor"

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v16, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v17, "sub"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v15 .. v17}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 611
    .local v8, sub_index:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v16, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v17, "sub_cs"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v15 .. v17}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 612
    .local v1, cs_index:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v16, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v17, "date"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v15 .. v17}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 613
    .local v3, date_index:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v16, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v17, "read"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v15 .. v17}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 614
    .local v6, readIndex:I
    const v15, 0x7f070056

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 615
    .local v13, unreadIndicator:Landroid/widget/ImageView;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, encodedSubject:Ljava/lang/String;
    const v15, 0x7f070053

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 619
    .local v10, subjectView:Landroid/widget/TextView;
    const v15, 0x7f070055

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 620
    .local v2, dateView:Landroid/widget/TextView;
    const v15, 0x7f070054

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 622
    .local v12, typeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const v16, 0x7f0a011d

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 623
    .local v11, type:Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 627
    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 632
    .local v14, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    .line 633
    .local v9, subject:Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    .end local v9           #subject:Ljava/lang/String;
    .end local v14           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$400(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, relativeDayString:Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 658
    .local v5, read:I
    if-lez v5, :cond_1

    .line 659
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 667
    :goto_1
    return-void

    .line 635
    .end local v5           #read:I
    .end local v7           #relativeDayString:Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 663
    .restart local v5       #read:I
    .restart local v7       #relativeDayString:Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private bindSmsMessage(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 17
    .parameter "parent"
    .parameter "cursor"

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v14, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v15, "sub"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v13, v14, v15}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 671
    .local v8, sub_index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v14, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v15, "date"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v13, v14, v15}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 672
    .local v3, date_index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    sget-object v14, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v15, "read"

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v13, v14, v15}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 673
    .local v6, readIndex:I
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, encodedSubject:Ljava/lang/String;
    const v13, 0x7f070053

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 677
    .local v9, subjectView:Landroid/widget/TextView;
    const v13, 0x7f070055

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 678
    .local v2, dateView:Landroid/widget/TextView;
    const v13, 0x7f070054

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 679
    .local v11, typeView:Landroid/widget/TextView;
    const v13, 0x7f070056

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 681
    .local v12, unreadIndicator:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const v14, 0x7f0a011e

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, type:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, body:Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$500(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, relativeDayString:Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 709
    .local v5, read:I
    if-lez v5, :cond_0

    .line 710
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 711
    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    :goto_0
    return-void

    .line 714
    :cond_0
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 715
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 607
    return-void
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 722
    const v1, 0x2020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 723
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f0a0141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 725
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-object p1
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 729
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$100(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/HtcContactInfoBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 730
    .local v2, size:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ContactDetailMessageActivity;->showDialog(I)V

    .line 749
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->canCompose(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$600(Lcom/android/htccontacts/ContactDetailMessageActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 745
    .local v0, actionIntent:Landroid/content/Intent;
    :goto_1
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 741
    .end local v0           #actionIntent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const-string v5, ""

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #actionIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method
