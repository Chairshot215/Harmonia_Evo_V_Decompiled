.class Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ListBucketResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/ListBucketResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListBucketHandler"
.end annotation


# instance fields
.field private commonPrefixEntries:Ljava/util/List;

.field private commonPrefixEntry:Lcom/amazon/s3/CommonPrefixEntry;

.field private currText:Ljava/lang/StringBuffer;

.field private delimiter:Ljava/lang/String;

.field private isEchoedPrefix:Z

.field private isTruncated:Z

.field private iso8601Parser:Ljava/text/SimpleDateFormat;

.field private keyEntries:Ljava/util/List;

.field private keyEntry:Lcom/amazon/s3/ListEntry;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private name:Ljava/lang/String;

.field private nextMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/s3/ListBucketResponse;


# direct methods
.method public constructor <init>(Lcom/amazon/s3/ListBucketResponse;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->this$0:Lcom/amazon/s3/ListBucketResponse;

    .line 128
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->name:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->prefix:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->marker:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->delimiter:Ljava/lang/String;

    .line 116
    iput v3, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->maxKeys:I

    .line 117
    iput-boolean v3, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isTruncated:Z

    .line 118
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->nextMarker:Ljava/lang/String;

    .line 119
    iput-boolean v3, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isEchoedPrefix:Z

    .line 120
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntries:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    .line 122
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntries:Ljava/util/List;

    .line 123
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntry:Lcom/amazon/s3/CommonPrefixEntry;

    .line 124
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    .line 125
    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntries:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntries:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    .line 132
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    .line 134
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 205
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 155
    const-string v1, "Name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->name:Ljava/lang/String;

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    .line 201
    :cond_1
    return-void

    .line 159
    :cond_2
    const-string v1, "Prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isEchoedPrefix:Z

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->prefix:Ljava/lang/String;

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isEchoedPrefix:Z

    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "Marker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->marker:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_4
    const-string v1, "MaxKeys"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->maxKeys:I

    goto :goto_0

    .line 166
    :cond_5
    const-string v1, "Delimiter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->delimiter:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_6
    const-string v1, "IsTruncated"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isTruncated:Z

    goto :goto_0

    .line 170
    :cond_7
    const-string v1, "NextMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 171
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->nextMarker:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :cond_8
    const-string v1, "Contents"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    :cond_9
    const-string v1, "Key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/ListEntry;->key:Ljava/lang/String;

    goto/16 :goto_0

    .line 176
    :cond_a
    const-string v1, "LastModified"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/ListEntry;->lastModified:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected date format in list bucket output"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    .end local v0           #e:Ljava/text/ParseException;
    :cond_b
    const-string v1, "ETag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 183
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/ListEntry;->eTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    :cond_c
    const-string v1, "Size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 185
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amazon/s3/ListEntry;->size:J

    goto/16 :goto_0

    .line 186
    :cond_d
    const-string v1, "StorageClass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 187
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/ListEntry;->storageClass:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :cond_e
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 189
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v1, v1, Lcom/amazon/s3/ListEntry;->owner:Lcom/amazon/s3/Owner;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/Owner;->id:Ljava/lang/String;

    goto/16 :goto_0

    .line 190
    :cond_f
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    iget-object v1, v1, Lcom/amazon/s3/ListEntry;->owner:Lcom/amazon/s3/Owner;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/Owner;->displayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    :cond_10
    const-string v1, "CommonPrefixes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 193
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntry:Lcom/amazon/s3/CommonPrefixEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    :cond_11
    const-string v1, "Prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntry:Lcom/amazon/s3/CommonPrefixEntry;

    iget-object v2, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/CommonPrefixEntry;->prefix:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getCommonPrefixEntries()Ljava/util/List;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntries:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTruncated()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isTruncated:Z

    return v0
.end method

.method public getKeyEntries()Ljava/util/List;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntries:Ljava/util/List;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->maxKeys:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->isEchoedPrefix:Z

    .line 138
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 145
    const-string v0, "Contents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Lcom/amazon/s3/ListEntry;

    invoke-direct {v0}, Lcom/amazon/s3/ListEntry;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v0, "Owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->keyEntry:Lcom/amazon/s3/ListEntry;

    new-instance v1, Lcom/amazon/s3/Owner;

    invoke-direct {v1}, Lcom/amazon/s3/Owner;-><init>()V

    iput-object v1, v0, Lcom/amazon/s3/ListEntry;->owner:Lcom/amazon/s3/Owner;

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "CommonPrefixes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/amazon/s3/CommonPrefixEntry;

    invoke-direct {v0}, Lcom/amazon/s3/CommonPrefixEntry;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->commonPrefixEntry:Lcom/amazon/s3/CommonPrefixEntry;

    goto :goto_0
.end method
