.class public Lcom/htc/Weather/data/City;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/data/City$Condition;,
        Lcom/htc/Weather/data/City$MODE;,
        Lcom/htc/Weather/data/City$TIME;,
        Lcom/htc/Weather/data/City$UNIT;
    }
.end annotation


# static fields
.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "City"


# instance fields
.field public current:Lcom/htc/Weather/data/City$Condition;

.field public mode:Lcom/htc/Weather/data/City$MODE;

.field public overdue:Z

.field public todayIndex:I

.field public unit:Lcom/htc/Weather/data/City$UNIT;

.field public update_time:J

.field public updated:Lcom/htc/Weather/data/City$Condition;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/Weather/data/City;->update_time:J

    .line 55
    sget-object v0, Lcom/htc/Weather/data/City$UNIT;->_F:Lcom/htc/Weather/data/City$UNIT;

    iput-object v0, p0, Lcom/htc/Weather/data/City;->unit:Lcom/htc/Weather/data/City$UNIT;

    .line 56
    sget-object v0, Lcom/htc/Weather/data/City$MODE;->DayLight:Lcom/htc/Weather/data/City$MODE;

    iput-object v0, p0, Lcom/htc/Weather/data/City;->mode:Lcom/htc/Weather/data/City$MODE;

    .line 57
    iput-boolean v2, p0, Lcom/htc/Weather/data/City;->overdue:Z

    .line 58
    iput v2, p0, Lcom/htc/Weather/data/City;->todayIndex:I

    .line 60
    new-instance v0, Lcom/htc/Weather/data/City$Condition;

    invoke-direct {v0, p0}, Lcom/htc/Weather/data/City$Condition;-><init>(Lcom/htc/Weather/data/City;)V

    iput-object v0, p0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    .line 61
    new-instance v0, Lcom/htc/Weather/data/City$Condition;

    invoke-direct {v0, p0}, Lcom/htc/Weather/data/City$Condition;-><init>(Lcom/htc/Weather/data/City;)V

    iput-object v0, p0, Lcom/htc/Weather/data/City;->updated:Lcom/htc/Weather/data/City$Condition;

    .line 62
    return-void
.end method

.method public static beforeToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    .line 169
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/htc/Weather/data/City;->getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v8

    .line 170
    .local v8, tObject:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 171
    .local v7, tNow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string v13, "City"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "now is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->hour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->minute:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->second:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s, timezone:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 177
    .local v5, t:J
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 178
    .local v9, tn:J
    iget v13, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->minute:I

    add-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->second:I

    add-int/2addr v13, v14

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v3, v13

    .line 179
    .local v3, r:J
    const/4 v8, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    sub-long v11, v9, v3

    .line 182
    .local v11, today:J
    sub-long v13, v11, v5

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v13

    .line 183
    .local v1, daysBetween:I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 189
    .end local v1           #daysBetween:I
    .end local v3           #r:J
    .end local v5           #t:J
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    .end local v9           #tn:J
    .end local v11           #today:J
    :cond_1
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const-string v13, "City"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "some error in compare2Today with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 13
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 138
    const/16 v9, 0x76c

    .line 139
    .local v9, y:I
    const/4 v7, 0x1

    .line 140
    .local v7, m:I
    const/4 v1, 0x1

    .line 141
    .local v1, d:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 143
    .local v4, k:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 144
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v4           #k:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 149
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 150
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v11, :cond_3

    .line 151
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 153
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 158
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 159
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 160
    .local v8, t:Landroid/text/format/Time;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 161
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 163
    :cond_5
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v1, v10, v9}, Landroid/text/format/Time;->set(III)V

    .line 164
    return-object v8

    .line 154
    .end local v8           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "City"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the format of date is not mm/dd/yy..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public changeTodayIndex(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "timezoneId"

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v4, p0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v3

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v4}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v1

    .line 115
    .local v1, nCount:I
    if-eqz v1, :cond_0

    .line 118
    iget-object v4, p0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v4, v3}, Lcom/htc/Weather/data/City$Condition;->get(I)Lcom/htc/Weather/data/DayForecast;

    move-result-object v0

    .line 119
    .local v0, forecast:Lcom/htc/Weather/data/DayForecast;
    if-eqz v0, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, nOffset:I
    iget-wide v4, p0, Lcom/htc/Weather/data/City;->update_time:J

    invoke-static {p1, v4, v5}, Lcom/htc/Weather/util/RefreshUtil;->isOverdue(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/htc/Weather/data/City;->beforeToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    iget-object v4, p0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v4}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 127
    :cond_2
    iget v4, p0, Lcom/htc/Weather/data/City;->todayIndex:I

    if-eq v4, v2, :cond_0

    .line 128
    iput v2, p0, Lcom/htc/Weather/data/City;->todayIndex:I

    .line 129
    const/4 v3, 0x1

    goto :goto_0
.end method
