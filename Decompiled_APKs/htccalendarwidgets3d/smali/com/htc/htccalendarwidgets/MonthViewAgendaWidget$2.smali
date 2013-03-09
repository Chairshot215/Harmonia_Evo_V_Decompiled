.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MonthViewAgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;
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
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 14
    .parameter "message"

    .prologue
    .line 356
    iget-object v0, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v8

    .line 357
    .local v8, index:I
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v12, 0xa

    if-ne v0, v12, :cond_3

    .line 358
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mListItemEventListener, index == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ItemEvenType == ITEM_CLICKED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 360
    .local v7, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v1, v7, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 361
    .local v1, eventId:J
    iget-wide v3, v7, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 362
    .local v3, begin:J
    iget-wide v5, v7, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 364
    .local v5, end:J
    iget-boolean v0, v7, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 366
    .local v10, time:Landroid/text/format/Time;
    const-wide/16 v12, 0x0

    invoke-static {v3, v4, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 367
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 370
    .end local v10           #time:Landroid/text/format/Time;
    :cond_0
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DETAIL_EVENT:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/CalendarConstants;->parseUri(Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;JJJ)Landroid/net/Uri;

    move-result-object v11

    .line 372
    .local v11, uri:Landroid/net/Uri;
    if-nez v11, :cond_2

    .line 385
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 375
    .restart local v1       #eventId:J
    .restart local v3       #begin:J
    .restart local v5       #end:J
    .restart local v7       #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v9, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$100(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_3
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 379
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mListItemEventListener, index == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ItemEvenType == ITEM_DESTROYED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v0, :cond_5

    .line 381
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mListItemEventListener, index == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ItemEvenType == ITEM_CREATED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_5
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v12, 0x16

    if-ne v0, v12, :cond_1

    .line 383
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mListItemEventListener, index == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ItemEvenType == ANIMATE_REFRESH_UPDATE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
