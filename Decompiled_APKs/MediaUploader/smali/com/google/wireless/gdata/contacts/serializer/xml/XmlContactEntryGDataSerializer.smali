.class public Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlContactEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 34
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "email"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 106
    const/4 v0, 0x0

    const-string v1, "address"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "email"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v1

    .line 212
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "the group must not be empty"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-string v2, "http://schemas.google.com/contact/2008"

    const-string v3, "groupMembershipInfo"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v2, "href"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v0, "deleted"

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-interface {p0, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v0, "http://schemas.google.com/contact/2008"

    const-string v1, "groupMembershipInfo"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    return-void

    .line 218
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ImAddress;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "im"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 116
    const-string v0, "address"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 134
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    const-string v1, "protocol"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    :goto_1
    :sswitch_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "im"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 125
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the protocol is custom, but the custom string is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    const-string v1, "protocol"

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/Organization;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "organization"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    sget-object v2, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v2}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 162
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "orgName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v2, "orgName"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    :cond_1
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v2, "orgTitle"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "orgTitle"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_2
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "organization"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "phoneNumber"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 148
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "phoneNumber"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "postalAddress"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 181
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    :cond_1
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "postalAddress"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/data/ExtendedProperty;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getXmlBlob()Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "extendedProperty"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const-string v3, "name"

    invoke-interface {p0, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    :cond_0
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    const-string v0, "value"

    invoke-interface {p0, v5, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    :cond_1
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-static {p0, v2}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 238
    :cond_2
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    return-void
.end method

.method private static serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    return-void
.end method

.method private static serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getType()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    .line 191
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 192
    :cond_1
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "exactly one of label or rel must be set"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 195
    :cond_3
    if-eqz v0, :cond_4

    .line 196
    const-string v2, "label"

    invoke-interface {p0, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    :cond_4
    if-eqz v1, :cond_5

    .line 199
    const-string v1, "rel"

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getType()B

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_5
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    const-string v0, "primary"

    const-string v1, "true"

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    :cond_6
    return-void
.end method

.method private static serializeYomiName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    const-string v1, "yomiName"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v0, "http://schemas.google.com/contact/2008"

    const-string v1, "yomiName"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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
    .line 38
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 39
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected getContactEntry()Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getContactEntry()Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->validate()V

    .line 55
    const-string v1, "http://schemas.google.com/contacts/2008/rel#edit-photo"

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkEditPhotoHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkEditPhotoType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkPhotoType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ImAddress;)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 74
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 79
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V

    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 84
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/Organization;)V

    goto :goto_4

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 89
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/data/ExtendedProperty;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/data/ExtendedProperty;)V

    goto :goto_5

    .line 93
    :cond_5
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-static {p1, p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V

    goto :goto_6

    .line 98
    :cond_6
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getYomiName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeYomiName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 99
    return-void
.end method
