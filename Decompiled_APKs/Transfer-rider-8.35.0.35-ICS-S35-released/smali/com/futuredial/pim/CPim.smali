.class public abstract Lcom/futuredial/pim/CPim;
.super Ljava/lang/Object;
.source "CPim.java"


# instance fields
.field public WrittenUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected cr:Landroid/content/ContentResolver;

.field protected m_pim:Lcom/futuredial/pim/CPim;

.field protected sAccountName:Ljava/lang/String;

.field protected sAccountType:Ljava/lang/String;

.field protected sCfgPhoneInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/futuredial/pim/CPim;->cr:Landroid/content/ContentResolver;

    .line 22
    iput-object v1, p0, Lcom/futuredial/pim/CPim;->context:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/CPim;->WrittenUri:Ljava/util/ArrayList;

    .line 24
    iput-object v1, p0, Lcom/futuredial/pim/CPim;->m_pim:Lcom/futuredial/pim/CPim;

    .line 25
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/futuredial/pim/CPim;->sAccountType:Ljava/lang/String;

    .line 26
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/futuredial/pim/CPim;->sAccountName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/pim/CPim;->sCfgPhoneInfo:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/futuredial/pim/CPim;->context:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/CPim;->cr:Landroid/content/ContentResolver;

    .line 33
    return-void
.end method

.method protected static TimeZoneOffset(Ljava/lang/String;)J
    .locals 15
    .parameter "timezone"

    .prologue
    const-wide/16 v13, 0x3e8

    .line 100
    const-wide/16 v1, 0x0

    .line 101
    .local v1, loffset:J
    const/4 v0, 0x0

    .line 102
    .local v0, bPlus:Z
    const-string v9, "GMT([+-]?)(\\d{1,2})[:]?(\\d{1,2})?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 103
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 104
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 105
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 106
    .local v3, matchResult:Ljava/util/regex/MatchResult;
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, strSymbol:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, strHour:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v3, v9}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, strMinute:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 110
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 112
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0xe10

    mul-long/2addr v9, v11

    mul-long/2addr v9, v13

    add-long/2addr v1, v9

    .line 114
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 116
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    mul-long/2addr v9, v13

    add-long/2addr v1, v9

    .line 118
    :cond_3
    if-nez v0, :cond_4

    const-wide/16 v9, 0x0

    sub-long v1, v9, v1

    .line 124
    .end local v3           #matchResult:Ljava/util/regex/MatchResult;
    .end local v6           #strHour:Ljava/lang/String;
    .end local v7           #strMinute:Ljava/lang/String;
    .end local v8           #strSymbol:Ljava/lang/String;
    :cond_4
    :goto_0
    return-wide v1

    .line 122
    :cond_5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    int-to-long v1, v9

    goto :goto_0
.end method


# virtual methods
.method public abstract DeleteAll()I
.end method

.method public DeleteWrittenData()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v2, p0, Lcom/futuredial/pim/CPim;->cr:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 68
    :goto_0
    return v2

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/futuredial/pim/CPim;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 65
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/futuredial/pim/CPim;->cr:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v3, v3}, Lcom/futuredial/pim/SqliteWrapper;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/futuredial/pim/CPim;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public GetPIM()Lcom/futuredial/pim/CPim;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/futuredial/pim/CPim;->m_pim:Lcom/futuredial/pim/CPim;

    return-object v0
.end method

.method public InitRead()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public SetAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sType"
    .parameter "sName"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/futuredial/pim/CPim;->sAccountType:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/futuredial/pim/CPim;->sAccountName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public SetPhoneInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneinfo"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/futuredial/pim/CPim;->sCfgPhoneInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 15
    .parameter "strTime"
    .parameter "strTZ"

    .prologue
    .line 130
    const/4 v8, 0x1

    .line 131
    .local v8, bLocaltime:Z
    const/4 v1, 0x0

    .line 132
    .local v1, dttime:Landroid/text/format/Time;
    new-instance v1, Landroid/text/format/Time;

    .end local v1           #dttime:Landroid/text/format/Time;
    const-string v6, "UTC"

    invoke-direct {v1, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v1       #dttime:Landroid/text/format/Time;
    const-string v6, "Z"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 135
    const/4 v8, 0x0

    .line 142
    :goto_0
    if-eqz p2, :cond_3

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 153
    :goto_1
    const/4 v6, 0x0

    const/4 v11, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 154
    .local v7, nY:I
    const/4 v6, 0x4

    const/4 v11, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 155
    .local v10, nM:I
    const/4 v6, 0x6

    const/16 v11, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 156
    .local v5, nD:I
    const/4 v4, 0x0

    .local v4, nH:I
    const/4 v3, 0x0

    .local v3, nmin:I
    const/4 v2, 0x0

    .line 157
    .local v2, nS:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v11, 0x8

    if-le v6, v11, :cond_0

    .line 159
    const/16 v6, 0x9

    const/16 v11, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 160
    const/16 v6, 0xb

    const/16 v11, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 161
    const/16 v6, 0xd

    const/16 v11, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 163
    :cond_0
    add-int/lit8 v6, v10, -0x1

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 166
    if-eqz v8, :cond_1

    .line 167
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v6, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Lcom/futuredial/pim/CPim;->TimeZoneOffset(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v1, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v2           #nS:I
    .end local v3           #nmin:I
    .end local v4           #nH:I
    .end local v5           #nD:I
    .end local v7           #nY:I
    .end local v10           #nM:I
    :cond_1
    :goto_2
    return-object v1

    .line 140
    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v9

    .line 173
    .local v9, e:Ljava/lang/Exception;
    const-string v6, "CPIM"

    const-string v11, "parse starttime exception"

    invoke-static {v6, v11, v9}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public abstract addnewItem(Lcom/futuredial/publicobj/Item;Z)I
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/futuredial/pim/CPim;->sAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/pim/CPim;->sAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCounts()I
.end method

.method public getPhoneMemCounts()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/futuredial/pim/CPim;->getCounts()I

    move-result v0

    return v0
.end method
