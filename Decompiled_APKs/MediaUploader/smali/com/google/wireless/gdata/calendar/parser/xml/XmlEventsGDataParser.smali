.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 49
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 406
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 408
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "originalEvent"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <originalEvent>: Actual element: <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    const-string v1, "href"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 420
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 421
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 422
    packed-switch v1, :pswitch_data_0

    .line 439
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string v2, "when"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    const-string v1, "startTime"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 432
    const-string v2, "originalEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    :cond_3
    return-void

    .line 422
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/google/wireless/gdata/calendar/data/Reminder;

    invoke-direct {v1}, Lcom/google/wireless/gdata/calendar/data/Reminder;-><init>()V

    .line 364
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    .line 366
    const-string v2, "method"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    const-string v3, "minutes"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    const-string v4, "hours"

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    const-string v5, "days"

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 376
    const-string v5, "alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    .line 386
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 387
    invoke-static {v3, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 394
    :goto_1
    if-gez v0, :cond_1

    move v0, v7

    .line 397
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMinutes(I)V

    .line 398
    return-void

    .line 378
    :cond_2
    const-string v5, "email"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 380
    :cond_3
    const-string v5, "sms"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 388
    :cond_4
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 389
    invoke-static {v4, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_1

    .line 390
    :cond_5
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 391
    invoke-static {v0, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x5a0

    goto :goto_1

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method private handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 310
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 312
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "when"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <when>: Actual element: <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    const-string v1, "startTime"

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v2, "endTime"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    new-instance v3, Lcom/google/wireless/gdata/calendar/data/When;

    invoke-direct {v3, v1, v2}, Lcom/google/wireless/gdata/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V

    .line 328
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    .line 332
    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v1, :cond_4

    move v1, v4

    .line 334
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 335
    :goto_2
    if-eq v2, v4, :cond_5

    .line 336
    packed-switch v2, :pswitch_data_0

    .line 356
    :cond_2
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    :cond_3
    move v1, v5

    .line 328
    goto :goto_0

    :cond_4
    move v1, v5

    .line 332
    goto :goto_1

    .line 338
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 339
    const-string v3, "reminder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    if-eqz v1, :cond_2

    .line 343
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto :goto_3

    .line 348
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 349
    const-string v3, "when"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    :cond_5
    return-void

    .line 336
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 210
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 212
    if-ne v1, v7, :cond_0

    const-string v3, "who"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <who>: Actual element: <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    const-string v2, "email"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const-string v3, "rel"

    invoke-interface {v0, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    const-string v4, "valueString"

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    new-instance v5, Lcom/google/wireless/gdata/calendar/data/Who;

    invoke-direct {v5}, Lcom/google/wireless/gdata/calendar/data/Who;-><init>()V

    .line 229
    invoke-virtual {v5, v2}, Lcom/google/wireless/gdata/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5, v4}, Lcom/google/wireless/gdata/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 232
    const-string v2, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    .line 245
    :goto_0
    invoke-virtual {v5, v2}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    .line 247
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V

    .line 249
    :goto_1
    if-eq v1, v6, :cond_11

    .line 250
    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 234
    :cond_3
    const-string v2, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    .line 235
    goto :goto_0

    .line 236
    :cond_4
    const-string v2, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v10

    .line 237
    goto :goto_0

    .line 238
    :cond_5
    const-string v2, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v9

    .line 239
    goto :goto_0

    .line 240
    :cond_6
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v6

    .line 241
    goto :goto_0

    .line 243
    :cond_7
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v2, "attendeeStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 254
    const-string v1, "value"

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v6

    .line 274
    :goto_3
    invoke-virtual {v5, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_2

    .line 260
    :cond_8
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v7

    .line 262
    goto :goto_3

    .line 263
    :cond_9
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v10

    .line 265
    goto :goto_3

    .line 266
    :cond_a
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v9

    .line 268
    goto :goto_3

    .line 269
    :cond_b
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v1, v9

    .line 270
    goto :goto_3

    .line 272
    :cond_c
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_d
    const-string v2, "attendeeType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v6

    .line 288
    :goto_4
    invoke-virtual {v5, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto/16 :goto_2

    .line 280
    :cond_e
    const-string v2, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v7

    .line 282
    goto :goto_4

    .line 283
    :cond_f
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v1, v7

    .line 284
    goto :goto_4

    .line 286
    :cond_10
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v2, "who"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    :cond_11
    return-void

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 71
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 72
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 99
    instance-of v1, p1, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    if-nez v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected EventEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    .line 107
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v2, "eventStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "http://schemas.google.com/g/2005#event.canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 121
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 202
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    const-string v1, "http://schemas.google.com/g/2005#event.confirmed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v5

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const-string v1, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    .line 119
    goto :goto_0

    .line 122
    :cond_4
    const-string v2, "recurrence"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_5
    const-string v2, "transparency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 126
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "http://schemas.google.com/g/2005#event.opaque"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v4

    .line 135
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_1

    .line 131
    :cond_6
    const-string v1, "http://schemas.google.com/g/2005#event.transparent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v5

    .line 133
    goto :goto_2

    .line 136
    :cond_7
    const-string v2, "visibility"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 137
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "http://schemas.google.com/g/2005#event.confidential"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v5

    .line 152
    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setVisibility(B)V

    goto :goto_1

    .line 142
    :cond_8
    const-string v1, "http://schemas.google.com/g/2005#event.default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v0, v4

    .line 144
    goto :goto_3

    .line 145
    :cond_9
    const-string v1, "http://schemas.google.com/g/2005#event.private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v6

    .line 147
    goto :goto_3

    .line 148
    :cond_a
    const-string v1, "http://schemas.google.com/g/2005#event.public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 150
    const/4 v0, 0x3

    goto :goto_3

    .line 153
    :cond_b
    const-string v2, "who"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 154
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 155
    :cond_c
    const-string v2, "sendEventNotifications"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 157
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    goto/16 :goto_1

    .line 159
    :cond_d
    const-string v2, "guestsCanModify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 161
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    goto/16 :goto_1

    .line 163
    :cond_e
    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 165
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    goto/16 :goto_1

    .line 167
    :cond_f
    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 169
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    goto/16 :goto_1

    .line 171
    :cond_10
    const-string v2, "when"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 172
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 173
    :cond_11
    const-string v2, "reminder"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 174
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v0, :cond_12

    .line 177
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->clearReminders()V

    .line 178
    iput-boolean v5, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 180
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 181
    :cond_13
    const-string v2, "originalEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 182
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 183
    :cond_14
    const-string v2, "where"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 184
    const-string v1, "valueString"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v2, "rel"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "http://schemas.google.com/g/2005#event"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_15
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_16
    const-string v2, "feedLink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 195
    const-string v1, "href"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_17
    const-string v2, "extendedProperty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "name"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string v2, "value"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v1, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    move v0, v4

    goto/16 :goto_3

    :cond_19
    move v0, v4

    goto/16 :goto_2

    :cond_1a
    move v0, v4

    goto/16 :goto_0
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 77
    instance-of v1, p1, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected EventsFeed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    .line 81
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "timezone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method
