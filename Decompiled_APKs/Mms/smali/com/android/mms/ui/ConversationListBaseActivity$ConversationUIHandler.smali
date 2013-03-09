.class public Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;
.super Landroid/os/Handler;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConversationUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public childHandleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2683
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 2687
    const-string v20, "ConversationListBaseActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UIhandle message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 2817
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->childHandleMessage(Landroid/os/Message;)V

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2694
    :pswitch_0
    const-string v20, "ConversationListBaseActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cancel notification> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", what:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    goto :goto_0

    .line 2700
    :pswitch_1
    const-string v20, "ConversationListBaseActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cancel notification> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", what:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2702
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeMessages(I)V

    .line 2703
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2704
    .local v3, Newmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x10

    :goto_1
    move/from16 v0, v20

    iput v0, v3, Landroid/os/Message;->what:I

    .line 2705
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 2706
    const-wide/16 v20, 0x7d0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2704
    :cond_1
    const/16 v20, 0x11

    goto :goto_1

    .line 2712
    .end local v3           #Newmsg:Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/Menu;

    const/16 v21, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2713
    .local v12, item:Landroid/view/MenuItem;
    if-eqz v12, :cond_0

    .line 2714
    invoke-interface {v12}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 2715
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 2716
    const-string v20, "hasPhoto"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2720
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #item:Landroid/view/MenuItem;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/Menu;

    const/16 v21, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2721
    .restart local v12       #item:Landroid/view/MenuItem;
    if-eqz v12, :cond_0

    .line 2722
    invoke-interface {v12}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 2723
    .restart local v11       #intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 2724
    const-string v20, "hasPhoto"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2730
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #item:Landroid/view/MenuItem;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2731
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    .line 2732
    .local v7, ch:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderView()Landroid/view/View;

    move-result-object v19

    .line 2733
    .local v19, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v10

    .line 2734
    .local v10, hCnt:I
    if-lez v10, :cond_2

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2738
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e000f

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ConversationListBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2739
    .local v8, emptyView:Landroid/view/View;
    iget-boolean v0, v7, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->visible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2740
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/ConversationHeader;

    .line 2741
    .local v6, cache:Lcom/android/mms/ui/ConversationHeader;
    iget-object v9, v6, Lcom/android/mms/ui/ConversationHeader;->mGroupView:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 2742
    .local v9, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v13, v9, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    .line 2743
    .local v13, listItemView:Lcom/htc/widget/HtcListItemMessageBody;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    .line 2744
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBubbleCount(Ljava/lang/String;)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v20

    iget-wide v0, v7, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->time:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 2747
    .local v17, timeStr:Ljava/lang/String;
    iget-object v0, v7, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(Ljava/lang/String;)V

    .line 2748
    iget-object v0, v7, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->subTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 2749
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v13}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v15

    .line 2751
    .local v15, photoV:Landroid/widget/ImageView;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2752
    const v20, 0x7f020173

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 2754
    .local v4, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ConversationListBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2757
    if-eqz v8, :cond_0

    .line 2758
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_0

    .line 2759
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2763
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #cache:Lcom/android/mms/ui/ConversationHeader;
    .end local v9           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .end local v13           #listItemView:Lcom/htc/widget/HtcListItemMessageBody;
    .end local v15           #photoV:Landroid/widget/ImageView;
    .end local v17           #timeStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v5

    .line 2764
    .local v5, cAdapter:Landroid/widget/CursorAdapter;
    const/4 v14, 0x0

    .line 2765
    .local v14, msgCnt:I
    if-eqz v5, :cond_4

    .line 2766
    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v14

    .line 2768
    :cond_4
    if-nez v14, :cond_0

    .line 2769
    if-eqz v8, :cond_0

    .line 2770
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2771
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2779
    .end local v5           #cAdapter:Landroid/widget/CursorAdapter;
    .end local v7           #ch:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    .end local v8           #emptyView:Landroid/view/View;
    .end local v10           #hCnt:I
    .end local v14           #msgCnt:I
    .end local v19           #v:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDeleteDialog()V

    goto/16 :goto_0

    .line 2782
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissDeleteDialog()V

    goto/16 :goto_0

    .line 2786
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->showBackupRestoreDialog()V

    goto/16 :goto_0

    .line 2789
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2790
    .local v18, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissBackupRestoreDialog(I)V

    goto/16 :goto_0

    .line 2795
    .end local v18           #type:I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2796
    .restart local v18       #type:I
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/android/mms/ui/BackupActivity;->getBackupStatus()Z

    move-result v16

    .line 2797
    .local v16, success:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->displayBackupRestoreResultDialog(IZ)V

    goto/16 :goto_0

    .line 2796
    .end local v16           #success:Z
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/RestoreActivity;->getRestoreStatus()Z

    move-result v16

    goto :goto_2

    .line 2802
    .end local v18           #type:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->showSeparatingDialog()V

    goto/16 :goto_0

    .line 2805
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissSeparatingDialog()V

    goto/16 :goto_0

    .line 2810
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDBUpgradeDialog()V

    goto/16 :goto_0

    .line 2813
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissDBUpgradeDialog()V

    goto/16 :goto_0

    .line 2690
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method
