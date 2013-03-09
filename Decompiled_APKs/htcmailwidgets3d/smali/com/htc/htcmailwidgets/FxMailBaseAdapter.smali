.class public Lcom/htc/htcmailwidgets/FxMailBaseAdapter;
.super Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.source "FxMailBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/FxArrayAdapter",
        "<",
        "Lcom/htc/htcmailwidgets/MailData;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_LINES:I = 0x5

.field protected static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Request:I = 0x6

.field private static final localLOGV:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected bUniversalInbox:Z

.field protected fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

.field protected fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

.field protected mContext:Landroid/content/Context;

.field protected mMaxLines:I

.field protected mResolution:I

.field protected mTotalCounts:I

.field protected mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Lcom/htc/htcmailwidgets/Components$WidgetInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, arraylist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 18
    const-string v2, "FxMailBaseAdpater"

    iput-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v2, 0x5

    iput v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mMaxLines:I

    .line 29
    iput-object v3, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mContext:Landroid/content/Context;

    .line 30
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mResolution:I

    .line 31
    iput-boolean v4, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->bUniversalInbox:Z

    .line 32
    iput-object v3, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 34
    iput-object v3, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 35
    iput-object v3, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 37
    iput v4, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mTotalCounts:I

    .line 41
    iput-object p1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 45
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/Components;->getResolution(II)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mResolution:I

    .line 49
    iput-object p3, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 50
    return-void
.end method


# virtual methods
.method protected changeAdapter(Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter
    .parameter "addonly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 82
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 85
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->addList(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->setDataSource(Ljava/util/List;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v2

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->setDataSource(Ljava/util/List;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 101
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 104
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mTotalCounts:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 102
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method protected getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/htcmailwidgets/MailData;
    .locals 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v2

    .line 130
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 132
    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v0

    return-object v0
.end method

.method public getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;
    .locals 4
    .parameter "in"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 153
    .local v0, inString_:Landroid/text/Spannable;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p2, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {v0, p3, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method protected getTotalMailCounts()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mTotalCounts:I

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setAccountID(J)V
    .locals 2
    .parameter "account_id"

    .prologue
    .line 67
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->bUniversalInbox:Z

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->bUniversalInbox:Z

    goto :goto_0
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 0
    .parameter "position"
    .parameter "item"

    .prologue
    .line 77
    return-void
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 0
    .parameter "position"
    .parameter "item"
    .parameter "messageEventType"

    .prologue
    .line 74
    return-void
.end method

.method protected setTotalMailCounts(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mTotalCounts:I

    .line 60
    return-void
.end method

.method protected updateMaxLines(I)V
    .locals 0
    .parameter "lines"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;->mMaxLines:I

    .line 55
    return-void
.end method
