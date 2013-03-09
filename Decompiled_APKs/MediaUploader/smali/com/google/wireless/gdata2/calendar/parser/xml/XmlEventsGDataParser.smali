.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# static fields
.field private static GCAL_NAMESPACE:Ljava/lang/String;

.field private static GD_NAMESPACE:Ljava/lang/String;


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "http://schemas.google.com/g/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GD_NAMESPACE:Ljava/lang/String;

    .line 29
    const-string v0, "http://schemas.google.com/gCal/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 52
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
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

    .line 401
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 404
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 406
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "originalEvent"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
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

    .line 415
    :cond_1
    const-string v1, "href"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 418
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 419
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 420
    packed-switch v1, :pswitch_data_0

    .line 437
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 422
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 423
    const-string v2, "when"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const-string v1, "startTime"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 430
    const-string v2, "originalEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    :cond_3
    return-void

    .line 420
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;-><init>()V

    .line 362
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    .line 364
    const-string v2, "method"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    const-string v3, "minutes"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    const-string v4, "hours"

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    const-string v5, "days"

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    const-string v5, "alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 375
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    .line 384
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 385
    invoke-static {v3, v7}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 392
    :goto_1
    if-gez v0, :cond_1

    move v0, v7

    .line 395
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMinutes(I)V

    .line 396
    return-void

    .line 376
    :cond_2
    const-string v5, "email"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 378
    :cond_3
    const-string v5, "sms"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 387
    invoke-static {v4, v7}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_1

    .line 388
    :cond_5
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 389
    invoke-static {v0, v7}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x5a0

    goto :goto_1

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method private handleWhen(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
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

    .line 305
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 308
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 310
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "when"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
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

    .line 319
    :cond_1
    const-string v1, "startTime"

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "endTime"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    new-instance v3, Lcom/google/wireless/gdata2/calendar/data/When;

    invoke-direct {v3, v1, v2}, Lcom/google/wireless/gdata2/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V

    .line 326
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    .line 330
    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v1, :cond_4

    move v1, v4

    .line 332
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 333
    :goto_2
    if-eq v2, v4, :cond_5

    .line 334
    packed-switch v2, :pswitch_data_0

    .line 354
    :cond_2
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    :cond_3
    move v1, v5

    .line 326
    goto :goto_0

    :cond_4
    move v1, v5

    .line 330
    goto :goto_1

    .line 336
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 337
    const-string v3, "reminder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    if-eqz v1, :cond_2

    .line 341
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto :goto_3

    .line 346
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 347
    const-string v3, "when"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    :cond_5
    return-void

    .line 334
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 208
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 210
    if-ne v1, v7, :cond_0

    const-string v3, "who"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
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

    .line 219
    :cond_1
    const-string v2, "email"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, "rel"

    invoke-interface {v0, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    const-string v4, "valueString"

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    new-instance v5, Lcom/google/wireless/gdata2/calendar/data/Who;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/calendar/data/Who;-><init>()V

    .line 227
    invoke-virtual {v5, v2}, Lcom/google/wireless/gdata2/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v5, v4}, Lcom/google/wireless/gdata2/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 230
    const-string v2, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    .line 243
    :goto_0
    invoke-virtual {v5, v2}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    .line 245
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V

    .line 247
    :goto_1
    if-eq v1, v6, :cond_11

    .line 248
    packed-switch v1, :pswitch_data_0

    .line 298
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 232
    :cond_3
    const-string v2, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    .line 233
    goto :goto_0

    .line 234
    :cond_4
    const-string v2, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v10

    .line 235
    goto :goto_0

    .line 236
    :cond_5
    const-string v2, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v9

    .line 237
    goto :goto_0

    .line 238
    :cond_6
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v6

    .line 239
    goto :goto_0

    .line 241
    :cond_7
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v2, "attendeeStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 252
    const-string v1, "value"

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v6

    .line 272
    :goto_3
    invoke-virtual {v5, v1}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_2

    .line 258
    :cond_8
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v7

    .line 260
    goto :goto_3

    .line 261
    :cond_9
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v10

    .line 263
    goto :goto_3

    .line 264
    :cond_a
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v9

    .line 266
    goto :goto_3

    .line 267
    :cond_b
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v1, v9

    .line 268
    goto :goto_3

    .line 270
    :cond_c
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_d
    const-string v2, "attendeeType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v6

    .line 286
    :goto_4
    invoke-virtual {v5, v1}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto/16 :goto_2

    .line 278
    :cond_e
    const-string v2, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v7

    .line 280
    goto :goto_4

    .line 281
    :cond_f
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v1, v7

    .line 282
    goto :goto_4

    .line 284
    :cond_10
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v2, "who"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    :cond_11
    return-void

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 73
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 74
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 101
    instance-of v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-nez v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected EventEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 106
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GD_NAMESPACE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 109
    const-string v2, "eventStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "http://schemas.google.com/g/2005#event.canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 122
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 200
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    const-string v1, "http://schemas.google.com/g/2005#event.confirmed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v5

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const-string v1, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    .line 120
    goto :goto_0

    .line 123
    :cond_4
    const-string v2, "recurrence"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_5
    const-string v2, "transparency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "http://schemas.google.com/g/2005#event.opaque"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v4

    .line 136
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_1

    .line 132
    :cond_6
    const-string v1, "http://schemas.google.com/g/2005#event.transparent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v5

    .line 134
    goto :goto_2

    .line 137
    :cond_7
    const-string v2, "visibility"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 138
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "http://schemas.google.com/g/2005#event.confidential"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v5

    .line 153
    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    goto :goto_1

    .line 143
    :cond_8
    const-string v1, "http://schemas.google.com/g/2005#event.default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v0, v4

    .line 145
    goto :goto_3

    .line 146
    :cond_9
    const-string v1, "http://schemas.google.com/g/2005#event.private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v6

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    const-string v1, "http://schemas.google.com/g/2005#event.public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 151
    const/4 v0, 0x3

    goto :goto_3

    .line 154
    :cond_b
    const-string v2, "who"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 155
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 156
    :cond_c
    const-string v2, "when"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 157
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 158
    :cond_d
    const-string v2, "reminder"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 159
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v0, :cond_e

    .line 162
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->clearReminders()V

    .line 163
    iput-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 165
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 166
    :cond_f
    const-string v2, "originalEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 167
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 168
    :cond_10
    const-string v2, "where"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 169
    const-string v1, "valueString"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "rel"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "http://schemas.google.com/g/2005#event"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_11
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    :cond_12
    const-string v2, "feedLink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 178
    const-string v1, "href"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_13
    const-string v2, "extendedProperty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "name"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, "value"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_14
    sget-object v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string v2, "sendEventNotifications"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 187
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    goto/16 :goto_1

    .line 189
    :cond_15
    const-string v2, "guestsCanModify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 190
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    goto/16 :goto_1

    .line 192
    :cond_16
    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 193
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    goto/16 :goto_1

    .line 195
    :cond_17
    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v1, "value"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

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

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 79
    instance-of v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected EventsFeed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    .line 83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "timezone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method
