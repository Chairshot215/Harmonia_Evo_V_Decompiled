.class Lcom/htc/htccalendarwidgets/AgendaListWidget$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 727
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v10

    .line 728
    .local v10, index:I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v14, 0xa

    if-ne v1, v14, :cond_4

    .line 729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mListItemEventListener, index == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ItemEvenType == ITEM_CLICKED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v8, 0x0

    .line 732
    .local v8, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;
    invoke-static {v14}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getCursorPosition(I)I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    check-cast v8, Lcom/htc/htccalendarwidgets/AgendaEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .restart local v8       #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-eqz v8, :cond_3

    .line 740
    iget-wide v2, v8, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 741
    .local v2, eventId:J
    iget-wide v4, v8, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 742
    .local v4, begin:J
    iget-wide v6, v8, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 744
    .local v6, end:J
    iget-boolean v1, v8, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-eqz v1, :cond_0

    .line 745
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 746
    .local v12, time:Landroid/text/format/Time;
    const-wide/16 v14, 0x0

    invoke-static {v4, v5, v14, v15}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 750
    .end local v12           #time:Landroid/text/format/Time;
    :cond_0
    sget-object v1, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DETAIL_EVENT:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    invoke-static/range {v1 .. v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->parseUri(Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;JJJ)Landroid/net/Uri;

    move-result-object v13

    .line 752
    .local v13, uri:Landroid/net/Uri;
    if-nez v13, :cond_2

    .line 769
    .end local v2           #eventId:J
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v9

    .line 734
    .local v9, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "error when fetching arraylist"

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 755
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v2       #eventId:J
    .restart local v4       #begin:J
    .restart local v6       #end:J
    .restart local v8       #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 756
    .local v11, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 759
    .end local v2           #eventId:J
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "e == null"

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    .end local v8           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_4
    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_5

    .line 763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mListItemEventListener, index == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ItemEvenType == ITEM_DESTROYED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v1, :cond_6

    .line 765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mListItemEventListener, index == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ItemEvenType == ITEM_CREATED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 766
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v14, 0x16

    if-ne v1, v14, :cond_1

    .line 767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mListItemEventListener, index == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ItemEvenType == ANIMATE_REFRESH_UPDATE"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 725
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
