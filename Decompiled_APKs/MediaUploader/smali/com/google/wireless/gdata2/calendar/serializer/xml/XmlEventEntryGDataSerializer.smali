.class public Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GCAL:Ljava/lang/String; = "gCal"

.field public static final NAMESPACE_GCAL_URI:Ljava/lang/String; = "http://schemas.google.com/gCal/2005"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 35
    return-void
.end method

.method private static serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "feedLink"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const/4 v0, 0x0

    const-string v1, "href"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "feedLink"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 134
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 137
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "eventStatus"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "eventStatus"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    return-void

    .line 123
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.canceled"

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "http://schemas.google.com/g/2005#event.confirmed"

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 440
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v0, "name"

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const-string v0, "value"

    invoke-interface {p0, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    return-void
.end method

.method private static serializeGuestsCanInviteOthers(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanInviteOthers"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanInviteOthers"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    return-void

    .line 232
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeGuestsCanModify(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanModify"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanModify"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    return-void

    .line 224
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeGuestsCanSeeGuests(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanSeeGuests"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanSeeGuests"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    return-void

    .line 240
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "originalEvent"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 400
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 401
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    const-string v1, "id"

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    :cond_2
    const-string v0, "href"

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "when"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    const-string v0, "startTime"

    invoke-interface {p0, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "when"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "originalEvent"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    const-string v0, "gCal"

    const-string v1, "quickadd"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/4 v0, 0x0

    const-string v1, "value"

    const-string v2, "true"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const-string v0, "gCal"

    const-string v1, "quickadd"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    :cond_0
    return-void
.end method

.method private static serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "recurrence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "recurrence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "reminder"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMethod()B

    move-result v0

    .line 364
    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 375
    :goto_0
    if-eqz v0, :cond_0

    .line 376
    const-string v1, "method"

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMinutes()I

    move-result v0

    .line 380
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 381
    const-string v1, "minutes"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    :cond_1
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "reminder"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    return-void

    .line 366
    :pswitch_0
    const-string v0, "alert"

    goto :goto_0

    .line 369
    :pswitch_1
    const-string v0, "email"

    goto :goto_0

    .line 372
    :pswitch_2
    const-string v0, "sms"

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static serializeSendEventNotifications(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "sendEventNotifications"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "sendEventNotifications"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    return-void

    .line 216
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 171
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 175
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "transparency"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "transparency"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    return-void

    .line 161
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.opaque"

    goto :goto_0

    .line 165
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 204
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 207
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "visibility"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "visibility"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    return-void

    .line 189
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    goto :goto_0

    .line 192
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.confidential"

    goto :goto_0

    .line 196
    :pswitch_2
    const-string v0, "http://schemas.google.com/g/2005#event.private"

    goto :goto_0

    .line 199
    :pswitch_3
    const-string v0, "http://schemas.google.com/g/2005#event.public"

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "when"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string v2, "startTime"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    const-string v0, "endTime"

    invoke-interface {p0, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 349
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 351
    invoke-static {p0, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_1

    .line 354
    :cond_2
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "when"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    const-string v0, ""

    .line 419
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "where"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const/4 v1, 0x0

    const-string v2, "valueString"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "where"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 248
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "who"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "email"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    :cond_0
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const-string v1, "valueString"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    :cond_1
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v0, v3

    .line 278
    :goto_0
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    const-string v1, "rel"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    :cond_2
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 299
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.attendee"

    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "http://schemas.google.com/g/2005#event.organizer"

    goto :goto_0

    .line 270
    :pswitch_3
    const-string v0, "http://schemas.google.com/g/2005#event.performer"

    goto :goto_0

    .line 273
    :pswitch_4
    const-string v0, "http://schemas.google.com/g/2005#event.speaker"

    goto :goto_0

    :pswitch_5
    move-object v0, v3

    .line 301
    :goto_1
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "attendeeStatus"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const-string v1, "value"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "attendeeStatus"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_3
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 320
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_6
    const-string v0, "http://schemas.google.com/g/2005#event.accepted"

    goto :goto_1

    .line 290
    :pswitch_7
    const-string v0, "http://schemas.google.com/g/2005#event.declined"

    goto :goto_1

    .line 293
    :pswitch_8
    const-string v0, "http://schemas.google.com/g/2005#event.invited"

    goto :goto_1

    .line 296
    :pswitch_9
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    goto :goto_1

    :pswitch_a
    move-object v0, v3

    .line 322
    :goto_2
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 323
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "attendeeType"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string v1, "value"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "attendeeType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    :cond_4
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "who"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    return-void

    .line 314
    :pswitch_b
    const-string v0, "http://schemas.google.com/g/2005#event.required"

    goto :goto_2

    .line 317
    :pswitch_c
    const-string v0, "http://schemas.google.com/g/2005#event.optional"

    goto :goto_2

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 310
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getEventEntry()Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEventEntry()Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 55
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 56
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 57
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getSendEventNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v2, "sendEventNotifications"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const/4 v0, 0x0

    const-string v2, "value"

    const-string v3, "true"

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v2, "sendEventNotifications"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_0
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 74
    invoke-static {p1, v1, p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/Who;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 83
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 85
    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 90
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 92
    invoke-static {p1, v1, p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/When;)V

    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 105
    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 107
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-static {p1, p0, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isQuickAdd()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 113
    return-void
.end method
