.class public Lcom/futuredial/pim/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, 0x2

    iput v0, p0, Lcom/futuredial/pim/EventRecurrence;->wkst:I

    .line 41
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->count:I

    .line 42
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->bysecondCount:I

    .line 43
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->byminuteCount:I

    .line 44
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->byhourCount:I

    .line 45
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 46
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthdayCount:I

    .line 47
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->byyeardayCount:I

    .line 48
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthCount:I

    .line 49
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->bysetposCount:I

    .line 50
    iput v1, p0, Lcom/futuredial/pim/EventRecurrence;->byweeknoCount:I

    .line 51
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 254
    .local v0, n:I
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/futuredial/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 240
    if-lez p2, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 p2, p2, -0x1

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 244
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static calendarDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 112
    packed-switch p0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    const/high16 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 117
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 119
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 121
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 123
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 125
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 127
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 185
    sparse-switch p0, :sswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :sswitch_0
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 190
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 192
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 194
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 196
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 198
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 200
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .parameter "day"

    .prologue
    .line 217
    sparse-switch p0, :sswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :sswitch_0
    const-string v0, "SU"

    .line 231
    :goto_0
    return-object v0

    .line 221
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 223
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 225
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 227
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 229
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 231
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 157
    sparse-switch p0, :sswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :sswitch_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 162
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 168
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 170
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 172
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    const/high16 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 140
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 142
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 144
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 146
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 148
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 150
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 135
    nop

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


# virtual methods
.method public native parse(Ljava/lang/String;)V
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 409
    iget v2, p0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    iget v2, p0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthdayCount:I

    if-nez v2, :cond_0

    move v0, v1

    .line 417
    goto :goto_0
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 389
    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    if-eq v4, v5, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v3

    .line 393
    :cond_1
    iget v0, p0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 394
    .local v0, count:I
    if-ne v0, v5, :cond_0

    .line 398
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 399
    iget-object v4, p0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    aget v1, v4, v2

    .line 400
    .local v1, day:I
    const/high16 v4, 0x1

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x40

    if-eq v1, v4, :cond_0

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    .end local v1           #day:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 293
    :goto_0
    iget-object v3, p0, Lcom/futuredial/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v3, p0, Lcom/futuredial/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    .line 299
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 304
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    :cond_2
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 309
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget v3, p0, Lcom/futuredial/pim/EventRecurrence;->wkst:I

    invoke-static {v3}, Lcom/futuredial/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_3
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 314
    const-string v3, ";BYMINUTE="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 315
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 319
    iget v0, p0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 320
    .local v0, count:I
    if-lez v0, :cond_5

    .line 321
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v0, v0, -0x1

    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 324
    invoke-direct {p0, v2, v1}, Lcom/futuredial/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 325
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_0
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :pswitch_2
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 280
    :pswitch_3
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 283
    :pswitch_4
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 286
    :pswitch_5
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 289
    :pswitch_6
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 327
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/futuredial/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 330
    .end local v1           #i:I
    :cond_5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 331
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 332
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 333
    const-string v3, ";BYMONTH="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 334
    const-string v3, ";BYSETPOS="

    iget v4, p0, Lcom/futuredial/pim/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/futuredial/pim/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
