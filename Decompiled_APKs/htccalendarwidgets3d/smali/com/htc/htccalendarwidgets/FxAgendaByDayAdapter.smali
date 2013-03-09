.class public Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;
.super Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.source "FxAgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/FxArrayAdapter",
        "<",
        "Lcom/htc/htccalendarwidgets/RowInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final FX_CONTROL_NAME:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "textlabel.date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.week"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->FX_CONTROL_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htccalendarwidgets/FxAgendaAdapter;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;",
            "Lcom/htc/htccalendarwidgets/FxAgendaAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htccalendarwidgets/RowInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mTime:Landroid/text/format/Time;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iput-object p3, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    .line 47
    return-void
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/RowInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->setDataSource(Ljava/util/List;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 119
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 120
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 121
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 122
    .local v7, minIndex:I
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getCount()I

    move-result v3

    .line 123
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 124
    invoke-virtual {p0, v1}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/RowInfo;

    move-result-object v8

    .line 125
    .local v8, row:Lcom/htc/htccalendarwidgets/RowInfo;
    iget v9, v8, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    if-nez v9, :cond_2

    .line 126
    iget v9, v8, Lcom/htc/htccalendarwidgets/RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 127
    .local v0, distance:I
    if-eqz v0, :cond_0

    .line 130
    if-ge v0, v6, :cond_2

    .line 131
    move v6, v0

    .line 132
    move v7, v1

    .line 123
    .end local v0           #distance:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v8           #row:Lcom/htc/htccalendarwidgets/RowInfo;
    :cond_3
    move v1, v7

    .line 139
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCursorPosition(I)I
    .locals 3
    .parameter "listPos"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/RowInfo;

    move-result-object v0

    .line 152
    .local v0, row:Lcom/htc/htccalendarwidgets/RowInfo;
    iget v1, v0, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 153
    iget p1, v0, Lcom/htc/htccalendarwidgets/RowInfo;->mData:I

    .line 156
    .end local v0           #row:Lcom/htc/htccalendarwidgets/RowInfo;
    .end local p1
    :cond_0
    return p1
.end method

.method public getItem(I)Lcom/htc/htccalendarwidgets/RowInfo;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/RowInfo;

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 30
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/RowInfo;

    move-result-object v0

    return-object v0
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 12
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/RowInfo;

    move-result-object v5

    .line 56
    .local v5, row:Lcom/htc/htccalendarwidgets/RowInfo;
    if-eqz v5, :cond_0

    .line 59
    iget v8, v5, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    if-nez v8, :cond_6

    .line 60
    sget-object v8, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->FX_CONTROL_NAME:[Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    .line 61
    .local v4, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    aget-object v1, v4, v10

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    .local v1, dayLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    aget-object v6, v4, v11

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 64
    .local v6, weekLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mContext:Landroid/content/Context;

    iget v9, v5, Lcom/htc/htccalendarwidgets/RowInfo;->mData:I

    invoke-static {v8, v9}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, dstring:Ljava/lang/String;
    const-string v8, "#"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, endpos:I
    const-string v7, ""

    .line 67
    .local v7, weekday:Ljava/lang/String;
    const-string v0, ""

    .line 70
    .local v0, dateString:Ljava/lang/String;
    if-ltz v3, :cond_5

    .line 71
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 72
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 74
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v8, v3, :cond_4

    .line 76
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_1
    move-object v0, v2

    .line 88
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v11}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 92
    :cond_3
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v11}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 78
    :cond_4
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 83
    :cond_5
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 84
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 85
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 97
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #dayLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #dstring:Ljava/lang/String;
    .end local v3           #endpos:I
    .end local v4           #fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    .end local v6           #weekLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v7           #weekday:Ljava/lang/String;
    :cond_6
    iget v8, v5, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    if-ne v8, v11, :cond_0

    .line 98
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    iget v9, v5, Lcom/htc/htccalendarwidgets/RowInfo;->mData:I

    invoke-virtual {v8, v9, p2}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V

    goto/16 :goto_0
.end method
