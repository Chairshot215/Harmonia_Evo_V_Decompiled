.class Lcom/htc/android/mail/eassvc/util/EASTimeZone;
.super Ljava/lang/Object;
.source "TimeZoneParser.java"


# static fields
.field static DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

.field static StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

.field static mTimeZone:Ljava/util/TimeZone;

.field static mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(Ljava/util/TimeZone;I)[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    .locals 14
    .parameter "tz"
    .parameter "year"

    .prologue
    .line 217
    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mYear:I

    if-ne v1, p1, :cond_0

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "find match"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x2

    new-array v9, v1, [Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    aput-object v2, v9, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    aput-object v2, v9, v1

    .line 283
    :goto_0
    return-object v9

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    sput-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mTimeZone:Ljava/util/TimeZone;

    .line 225
    sput p1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->mYear:I

    .line 226
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 227
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 228
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 229
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 231
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_1

    .line 232
    const/4 v9, 0x0

    goto :goto_0

    .line 235
    :cond_1
    const/4 v10, 0x0

    .line 237
    .local v10, flag:Z
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 238
    .local v7, date:Ljava/util/Date;
    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    .line 240
    .local v8, daylight:Z
    if-eqz v8, :cond_7

    if-nez v10, :cond_7

    .line 241
    const/4 v10, 0x1

    .line 245
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 246
    .local v11, temp:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v11, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 248
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 249
    const/4 v12, 0x5

    .line 252
    .local v12, wDay:I
    :goto_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .line 254
    .local v13, wDayOfWeek:I
    new-instance v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v13, v12, v3}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(IIII)V

    sput-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 272
    .end local v11           #temp:Ljava/util/Calendar;
    .end local v12           #wDay:I
    .end local v13           #wDayOfWeek:I
    :cond_3
    :goto_2
    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 276
    const/4 v1, 0x2

    new-array v9, v1, [Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 277
    .local v9, dst:[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    if-nez v1, :cond_5

    .line 278
    :cond_4
    new-instance v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    sput-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 279
    new-instance v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    sput-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 281
    :cond_5
    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->DaylightTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    aput-object v2, v9, v1

    .line 282
    const/4 v1, 0x1

    sget-object v2, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    aput-object v2, v9, v1

    goto/16 :goto_0

    .line 251
    .end local v9           #dst:[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    .restart local v11       #temp:Ljava/util/Calendar;
    :cond_6
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v12, v1, 0x1

    .restart local v12       #wDay:I
    goto :goto_1

    .line 256
    .end local v11           #temp:Ljava/util/Calendar;
    .end local v12           #wDay:I
    :cond_7
    if-nez v8, :cond_3

    if-eqz v10, :cond_3

    .line 257
    const/4 v10, 0x0

    .line 261
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 262
    .restart local v11       #temp:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 263
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v11, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 264
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 265
    const/4 v12, 0x5

    .line 268
    .restart local v12       #wDay:I
    :goto_3
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .line 270
    .restart local v13       #wDayOfWeek:I
    new-instance v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v13, v12, v3}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(IIII)V

    sput-object v1, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->StandardTime:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    goto :goto_2

    .line 267
    .end local v12           #wDay:I
    .end local v13           #wDayOfWeek:I
    :cond_8
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v12, v1, 0x1

    .restart local v12       #wDay:I
    goto :goto_3
.end method
