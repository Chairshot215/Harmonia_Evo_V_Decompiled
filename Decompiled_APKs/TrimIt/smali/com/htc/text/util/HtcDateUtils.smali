.class public Lcom/htc/text/util/HtcDateUtils;
.super Landroid/text/format/DateUtils;
.source "HtcDateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    return-void
.end method

.method public static getDate(Landroid/content/ContentResolver;Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "contentresolver"
    .parameter "date"

    .prologue
    .line 55
    const-string v2, "date_format"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, format:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v1, "EE, MMM dd, yyyy"

    .line 58
    const-string v2, "date_format"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    :cond_0
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, DateString:Ljava/lang/String;
    return-object v0
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 18
    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 19
    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 21
    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 22
    const-wide/32 p5, 0x240c8400

    .line 27
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/htc/text/util/HtcDateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 31
    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_3

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 32
    invoke-static/range {v3 .. v9}, Lcom/htc/text/util/HtcDateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 34
    .local v16, relativeClause:Ljava/lang/CharSequence;
    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_2

    .line 35
    const v3, 0x104037d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 52
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 23
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 24
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 39
    .restart local v16       #relativeClause:Ljava/lang/CharSequence;
    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1

    .line 42
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .end local v17           #result:Ljava/lang/String;
    :cond_3
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_4

    .line 43
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/htc/text/util/HtcDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 45
    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x1040080

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 47
    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v10           #dateClause:Ljava/lang/CharSequence;
    .end local v17           #result:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method
