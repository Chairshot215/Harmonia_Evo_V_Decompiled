.class public Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlContactEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 45
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getHRef()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 388
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 175
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->getStartDate()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EVENT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 402
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EVENT:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 419
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v1

    .line 320
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "the group must not be empty"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    const-string v2, "http://schemas.google.com/contact/2008"

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-interface {p0, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    return-void

    .line 326
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
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
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 185
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    :goto_1
    :sswitch_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 194
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v0

    .line 195
    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the protocol is custom, but the custom string is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getType()B

    move-result v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 450
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    :cond_0
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    .line 458
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    :goto_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    return-void

    .line 463
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgDepartment()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgJobDescription()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgSymbol()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getWhere()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 217
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getText()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 474
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    :cond_0
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 260
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getStreet()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPobox()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPostcode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    .line 482
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    :cond_1
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 499
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getXmlBlob()Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    :cond_0
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v5, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    :cond_1
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-static {p0, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 346
    :cond_2
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    return-void
.end method

.method private static serializeBirthday(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    return-void
.end method

.method private static serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V
    .locals 3
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
    .line 309
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 310
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    const-string v2, "true"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_0
    return-void
.end method

.method private static serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    invoke-static {p0, p1, p3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 527
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 509
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeGenderElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeHobby(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeName(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 532
    if-nez p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 533
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNamePrefix()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 553
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    :cond_1
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V
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
    .line 303
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    return-void
.end method

.method private static serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V
    .locals 5
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
    .line 285
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getType()B

    move-result v1

    .line 287
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    .line 290
    :goto_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->validate()V

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    :cond_0
    if-eqz v2, :cond_1

    .line 296
    invoke-static {p0, v1, p2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 298
    :cond_1
    return-void

    .line 287
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getType()B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 376
    :goto_0
    return v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 371
    goto :goto_0

    .line 373
    :cond_1
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 374
    goto :goto_0

    .line 376
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
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
    .line 48
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 49
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected getContactEntry()Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getContactEntry()Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->validate()V

    .line 65
    const-string v1, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 74
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 79
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 84
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 89
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto :goto_5

    .line 98
    :cond_5
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 99
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto :goto_6

    .line 103
    :cond_6
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 104
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto :goto_7

    .line 108
    :cond_7
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 109
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 110
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto :goto_8

    .line 113
    :cond_8
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 114
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 115
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto :goto_9

    .line 118
    :cond_9
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 119
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto :goto_a

    .line 123
    :cond_a
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 124
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 125
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeHobby(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_b

    .line 128
    :cond_b
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 129
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 130
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto :goto_c

    .line 133
    :cond_c
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 134
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto :goto_d

    .line 138
    :cond_d
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 139
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 140
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto :goto_e

    .line 143
    :cond_e
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 144
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 145
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto :goto_f

    .line 148
    :cond_f
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBirthday(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getDirectoryServer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGenderElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getInitials()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMaidenName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMileage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getNickname()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOccupation()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getShortName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSubject()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBillingInformation()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPriority()B

    move-result v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    invoke-static {p1, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V

    .line 164
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSensitivity()B

    move-result v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    invoke-static {p1, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V

    .line 167
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeName(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Name;)V

    .line 168
    return-void
.end method
