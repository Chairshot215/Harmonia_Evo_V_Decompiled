.class Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1374
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-ge p3, v5, :cond_0

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1000(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v5

    if-ne p3, v5, :cond_1

    .line 1376
    :cond_0
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #setter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I
    invoke-static {v5, p3}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1102(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;I)I

    .line 1377
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #setter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z
    invoke-static {v5, v7}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$102(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z

    .line 1380
    :cond_1
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$1200(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1381
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1000(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 1383
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #setter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z
    invoke-static {v5, v7}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1302(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, defaultUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1403
    :goto_0
    if-eqz v0, :cond_2

    .line 1406
    new-instance v2, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {v2, v5, v6, v0}, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1407
    .local v2, openFDThread:Ljava/lang/Thread;
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->getId()J

    move-result-wide v6

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J
    invoke-static {v5, v6, v7}, Lcom/htc/sdm/activity/SoundSetList;->access$1402(Lcom/htc/sdm/activity/SoundSetList;J)J

    .line 1408
    invoke-virtual {v2, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 1409
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1464
    .end local v0           #defaultUri:Landroid/net/Uri;
    .end local v2           #openFDThread:Ljava/lang/Thread;
    :cond_2
    :goto_1
    return-void

    .line 1388
    .restart local v0       #defaultUri:Landroid/net/Uri;
    :pswitch_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1389
    goto :goto_0

    .line 1391
    :pswitch_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 1392
    goto :goto_0

    .line 1400
    :pswitch_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1419
    .end local v0           #defaultUri:Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z
    invoke-static {v5, v6}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1302(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z

    .line 1420
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    sub-int v1, v5, v6

    .line 1421
    .local v1, itemIdx:I
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 1423
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v7, v7, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v7, v7, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7, v1}, Lcom/htc/sdm/util/SDMUtil;->gotoDetailPage(Landroid/content/Context;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 1425
    :cond_4
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1428
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1500(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v7, v7, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/SoundSetParcelable;

    .line 1430
    .local v3, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    const/4 v4, 0x0

    .line 1431
    .local v4, soundUri:Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://drm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1433
    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 1446
    :goto_2
    if-eqz v4, :cond_2

    .line 1452
    new-instance v2, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {v2, v5, v6, v4}, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1453
    .restart local v2       #openFDThread:Ljava/lang/Thread;
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;->getId()J

    move-result-wide v6

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J
    invoke-static {v5, v6, v7}, Lcom/htc/sdm/activity/SoundSetList;->access$1402(Lcom/htc/sdm/activity/SoundSetList;J)J

    .line 1454
    invoke-virtual {v2, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 1455
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1437
    .end local v2           #openFDThread:Ljava/lang/Thread;
    :cond_5
    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 1439
    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 1443
    :cond_6
    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 1385
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
