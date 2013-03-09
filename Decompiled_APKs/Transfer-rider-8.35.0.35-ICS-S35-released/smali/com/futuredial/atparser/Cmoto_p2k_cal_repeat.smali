.class Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method

.method private translateWeekMask(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "mask"
    .parameter "startdate"

    .prologue
    const/4 v12, 0x2

    const/4 v0, 0x0

    .line 197
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 198
    .local v7, st:Landroid/text/format/Time;
    const/4 v8, 0x0

    .line 199
    .local v8, strRet:Ljava/lang/String;
    const-string v10, "(\\d+)-(\\d+)-(\\d+)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 200
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 201
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 202
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 203
    .local v1, matchResult:Ljava/util/regex/MatchResult;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x3

    invoke-interface {v1, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    .end local v1           #matchResult:Ljava/util/regex/MatchResult;
    :cond_0
    if-eqz v8, :cond_1

    .line 206
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 207
    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 211
    iget v3, v7, Landroid/text/format/Time;->weekDay:I

    .line 212
    .local v3, nWeekDay:I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, sMask:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, stsb:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .end local v3           #nWeekDay:I
    .end local v5           #sMask:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v9           #stsb:Ljava/lang/String;
    :cond_1
    return v0
.end method


# virtual methods
.method moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "_startDate"
    .parameter "_weekMap"

    .prologue
    .line 103
    move-object/from16 v9, p1

    .line 104
    .local v9, startDate:Ljava/lang/String;
    move-object/from16 v10, p2

    .line 105
    .local v10, weekMap:Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v11, "MM-dd-yyyy"

    invoke-direct {v5, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, f:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 110
    .local v2, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 112
    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 115
    .local v3, dayOfWeek:I
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, bin:Ljava/lang/String;
    const-string v11, "%7s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const/16 v11, 0x20

    const/16 v12, 0x30

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    rsub-int/lit8 v12, v3, 0x7

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    rsub-int/lit8 v13, v3, 0x7

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 124
    .local v7, lExeWeekMask:Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 126
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_0

    .line 127
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-wide/high16 v12, 0x4000

    int-to-double v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    or-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 124
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 137
    .end local v0           #bin:Ljava/lang/String;
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #dayOfWeek:I
    .end local v6           #i:I
    .end local v7           #lExeWeekMask:Ljava/lang/Integer;
    :goto_1
    return-object v8

    .line 132
    :catch_0
    move-exception v4

    .line 133
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 134
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public procValue(Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    move v7, v8

    .line 192
    :goto_0
    return v7

    .line 144
    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, recuType:I
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    .local v4, startDate:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0xa

    if-ge v7, v10, :cond_1

    move v7, v8

    goto :goto_0

    .line 147
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, Bitmask:Ljava/lang/String;
    const-string v5, "0"

    .line 150
    .local v5, val:Ljava/lang/String;
    new-instance v3, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v3}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 152
    .local v3, rpt:Lcom/futuredial/atparser/FieldValue;
    packed-switch v2, :pswitch_data_0

    .line 190
    :goto_1
    iput-object v5, v3, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 191
    iget-object v7, p0, Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    .line 192
    goto :goto_0

    .line 155
    :pswitch_0
    const-string v5, "0"

    goto :goto_1

    .line 157
    :pswitch_1
    const-string v5, "1"

    goto :goto_1

    .line 159
    :pswitch_2
    const-string v5, "2"

    .line 163
    invoke-direct {p0, v0, v4}, Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat;->translateWeekMask(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, iMask:I
    new-instance v6, Lcom/futuredial/publicobj/Field;

    const/16 v7, 0xd4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 165
    .local v6, weekmask:Lcom/futuredial/publicobj/Field;
    iget-object v7, v3, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v1           #iMask:I
    .end local v6           #weekmask:Lcom/futuredial/publicobj/Field;
    :pswitch_3
    const-string v5, "3"

    .line 173
    goto :goto_1

    .line 175
    :pswitch_4
    const-string v5, "3"

    .line 178
    goto :goto_1

    .line 180
    :pswitch_5
    const-string v5, "4"

    .line 183
    goto :goto_1

    .line 185
    :pswitch_6
    const-string v5, "4"

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
