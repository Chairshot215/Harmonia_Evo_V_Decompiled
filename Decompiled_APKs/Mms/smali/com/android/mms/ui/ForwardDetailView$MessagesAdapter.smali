.class Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ForwardDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ForwardDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;,
        Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    }
.end annotation


# static fields
.field public static final TYPE_LAST:I = 0x2

.field public static final TYPE_MESSAGE:I = 0x1

.field public static final TYPE_TIMESTAMP:I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ForwardDetailView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ForwardDetailView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    .line 454
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 455
    invoke-virtual {p1}, Lcom/android/mms/ui/ForwardDetailView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    .local v0, r:Landroid/content/res/Resources;
    return-void
.end method


# virtual methods
.method public bindCompactView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 618
    instance-of v2, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    iget-object v2, v2, Lcom/android/mms/ui/ForwardDetailView;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, type:Ljava/lang/String;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem;->setCaller(Landroid/app/Activity;)V

    .line 623
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    invoke-virtual {v2}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    iget-object v5, v4, Lcom/android/mms/ui/ForwardDetailView;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v6, 0x0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V

    .line 624
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    .line 625
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    .line 626
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v3       #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 629
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bindTimestampView(ILandroid/view/View;J)V
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 649
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    .line 651
    .local v1, holder:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, currentFormat:Ljava/lang/CharSequence;
    invoke-static {v0, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, timeString:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 606
    return-void
.end method

.method public calculateTimestamp()V
    .locals 15

    .prologue
    .line 666
    iget-object v11, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
    invoke-static {v11}, Lcom/android/mms/ui/ForwardDetailView;->access$300(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 667
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 668
    :cond_0
    const-string v11, "----"

    const-string v12, "calculateTimestamp cursor is null or zero!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->clearDayHeaderInfo()V

    .line 711
    :goto_0
    return-void

    .line 673
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v3, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;>;"
    const-wide/16 v8, -0x1

    .line 676
    .local v8, timestamp:J
    const-wide/16 v1, -0x1

    .line 677
    .local v1, preMill:J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 678
    .local v4, sPrevTime:Landroid/text/format/Time;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 680
    .local v5, sThenTime:Landroid/text/format/Time;
    const-string v10, ""

    .line 682
    .local v10, type:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 685
    :cond_2
    sget-object v11, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iget v11, v11, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 686
    const-string v11, "mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 687
    sget-object v11, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iget v11, v11, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v8, v11, v13

    .line 691
    :goto_1
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-nez v11, :cond_5

    .line 693
    move-wide v1, v8

    .line 694
    new-instance v11, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12, v8, v9}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;-><init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IJ)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_3
    :goto_2
    new-instance v11, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    const/4 v12, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    int-to-long v13, v13

    invoke-direct {v11, p0, v12, v13, v14}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;-><init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IJ)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 710
    iput-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto :goto_0

    .line 689
    :cond_4
    sget-object v11, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iget v11, v11, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_1

    .line 696
    :cond_5
    sub-long v6, v8, v1

    .line 697
    .local v6, span:J
    invoke-virtual {v4, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 698
    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 700
    const-wide/32 v11, 0x5265c00

    cmp-long v11, v6, v11

    if-gez v11, :cond_6

    iget v11, v4, Landroid/text/format/Time;->weekDay:I

    iget v12, v5, Landroid/text/format/Time;->weekDay:I

    if-eq v11, v12, :cond_3

    .line 702
    :cond_6
    new-instance v11, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12, v8, v9}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;-><init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IJ)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    move-wide v1, v8

    goto :goto_2
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 663
    :cond_0
    return-void
.end method

.method public getCompactView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    const-string v2, "ForwardDetailView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-nez p2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newCompactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 600
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v2}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->bindCompactView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 601
    return-object p2

    .line 586
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 588
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newCompactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    .line 592
    .local v1, holder:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
    iget v2, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-nez v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newCompactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 489
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    .line 496
    .local v0, row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    iget v1, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 502
    .end local v0           #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 499
    .restart local v0       #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_0
    iget-wide v1, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    long-to-int v1, v1

    invoke-super {p0, v1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 502
    .end local v0           #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 508
    iget-object v4, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 510
    iget-object v4, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    .line 511
    .local v3, row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    iget v4, v3, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    if-nez v4, :cond_0

    .line 512
    int-to-long v1, p1

    .line 524
    .end local v3           #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 514
    .restart local v3       #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_0
    const-wide/16 v1, -0x1

    .line 516
    .local v1, lReturn:J
    :try_start_0
    iget-wide v4, v3, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    long-to-int v4, v4

    invoke-super {p0, v4}, Landroid/widget/ResourceCursorAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    const-string v4, "ForwardDetailView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #lReturn:J
    .end local v3           #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    .line 476
    .local v0, row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    iget v2, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    if-nez v2, :cond_1

    .line 481
    .end local v0           #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 479
    .restart local v0       #row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getTimestampView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 550
    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    .line 551
    .local v1, row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    if-nez p2, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .line 569
    .local v2, view:Landroid/view/View;
    :goto_0
    iget-wide v3, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->bindTimestampView(ILandroid/view/View;J)V

    .line 570
    return-object v2

    .line 555
    .end local v2           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 559
    .end local v2           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    .line 561
    .local v0, holder:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
    iget v3, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-eqz v3, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 565
    .end local v2           #view:Landroid/view/View;
    :cond_2
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 531
    :cond_0
    const-string v2, "ForwardDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRowInfo is not initiate, or position error.> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCompactView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, returnView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 534
    .end local v0           #returnView:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;

    .line 535
    .local v1, row:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;
    iget v2, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    if-nez v2, :cond_2

    .line 536
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getTimestampView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_0

    .line 537
    .end local v0           #returnView:Landroid/view/View;
    :cond_2
    iget v2, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 538
    iget-wide v2, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    long-to-int v2, v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCompactView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_0

    .line 540
    .end local v0           #returnView:Landroid/view/View;
    :cond_3
    iget-wide v2, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    long-to-int v2, v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCompactView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 541
    .restart local v0       #returnView:Landroid/view/View;
    const-string v2, "ForwardDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView> Unknown view type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v2, "ForwardDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView> Unknown view data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$RowInfo;->mData:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x2

    return v0
.end method

.method public newCompactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 609
    new-instance v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    invoke-direct {v0, p0, v3, v2}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IZ)V

    .line 610
    .local v0, holder:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
    iput v3, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mMsgViewType:I

    .line 611
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 612
    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 614
    return-object v1
.end method

.method protected newTimestampView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 635
    new-instance v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    invoke-direct {v1, p0, v6, v6}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IZ)V

    .line 636
    .local v1, holder:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 638
    .local v2, view:Landroid/view/View;
    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 639
    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 642
    .local v0, hieght:I
    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 643
    const v3, 0x2020085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    .line 644
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 645
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "ForwardDetailView"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ForwardDetailView;->access$000(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->cancelOperation(I)V

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ForwardDetailView;->access$102(Lcom/android/mms/ui/ForwardDetailView;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #calls: Lcom/android/mms/ui/ForwardDetailView;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ForwardDetailView;->access$200(Lcom/android/mms/ui/ForwardDetailView;)V

    .line 465
    return-void
.end method
