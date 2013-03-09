.class public Lcom/google/android/voicesearch/masf/MasfSender;
.super Ljava/lang/Object;
.source "MasfSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/masf/MasfSender$Response;
    }
.end annotation


# instance fields
.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/util/CookieStore;)V
    .locals 0
    .parameter "cookieStore"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 48
    return-void
.end method

.method public static createHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "serverUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 187
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 191
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 192
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 193
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 194
    const-string v2, "Content-Type"

    const-string v3, "application/binary"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method private readCookieResponse(Ljava/io/DataInputStream;)J
    .locals 8
    .parameter "dis"

    .prologue
    .line 156
    const-wide/16 v1, 0x0

    .line 159
    .local v1, cookie:J
    :try_start_0
    new-instance v4, Lcom/google/android/voicesearch/masf/MasfSender$Response;

    invoke-direct {v4, p0, p1}, Lcom/google/android/voicesearch/masf/MasfSender$Response;-><init>(Lcom/google/android/voicesearch/masf/MasfSender;Ljava/io/DataInputStream;)V

    .line 161
    .local v4, response:Lcom/google/android/voicesearch/masf/MasfSender$Response;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, v4, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v5, tmpDis:Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 164
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 165
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 166
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 167
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :cond_0
    move-wide v6, v1

    .line 175
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #response:Lcom/google/android/voicesearch/masf/MasfSender$Response;
    .end local v5           #tmpDis:Ljava/io/DataInputStream;
    :goto_0
    return-wide v6

    .line 169
    :catch_0
    move-exception v3

    .line 171
    .local v3, exception:Ljava/io/IOException;
    const-wide/16 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public send(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "clientString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    const-string v0, "http://www.google.com/m/appreq/vs"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/MasfSender;->createHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/voicesearch/masf/MasfSender;->send(Ljava/util/ArrayList;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/util/ArrayList;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/util/ArrayList;
    .locals 23
    .parameter
    .parameter "clientString"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    const/4 v5, 0x0

    .line 81
    .local v5, hasCookieRequest:Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1

    .line 82
    :cond_0
    const/4 v12, 0x0

    .line 148
    :goto_0
    return-object v12

    .line 84
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v15, rawRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v8, 0x0

    .line 86
    .local v8, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v19

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/masf/LiteRequest;->createHeaderRequest(Ljava/lang/String;J)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v19

    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .local v9, index:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v8}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_b

    .line 89
    const/4 v5, 0x1

    .line 90
    const-string v19, "g:c"

    invoke-static/range {v19 .. v19}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v19

    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v9}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    .line 92
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 93
    .local v16, request:Lcom/google/android/voicesearch/masf/LiteRequest;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .restart local v9       #index:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v8}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    move v8, v9

    .end local v9           #index:I
    .restart local v8       #index:I
    goto :goto_2

    .line 95
    .end local v16           #request:Lcom/google/android/voicesearch/masf/LiteRequest;
    :cond_2
    const/4 v11, 0x0

    .line 96
    .local v11, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_3

    .line 97
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v11, v11, v19

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 99
    :cond_3
    const-string v19, "Content-Length"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v13, os:Ljava/io/OutputStream;
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 105
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 113
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 115
    .local v18, responseCode:I
    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 116
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bad response code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 120
    :cond_5
    const-string v19, "Content-Type"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, contentType:Ljava/lang/String;
    const-string v19, "application/binary"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 123
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bad content type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 127
    :cond_6
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    .local v4, dis:Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v14

    .line 130
    .local v14, protocolVersion:I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v14, v0, :cond_7

    .line 131
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bad protocol version: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 133
    :cond_7
    if-eqz v5, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/masf/MasfSender;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/voicesearch/masf/MasfSender;->readCookieResponse(Ljava/io/DataInputStream;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/voicesearch/util/CookieStore;->setCookie(J)V

    .line 136
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v12, nonRespondedRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 140
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 141
    .restart local v16       #request:Lcom/google/android/voicesearch/masf/LiteRequest;
    new-instance v17, Lcom/google/android/voicesearch/masf/MasfSender$Response;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/google/android/voicesearch/masf/MasfSender$Response;-><init>(Lcom/google/android/voicesearch/masf/MasfSender;Ljava/io/DataInputStream;)V

    .line 142
    .local v17, response:Lcom/google/android/voicesearch/masf/MasfSender$Response;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->type:I

    move/from16 v19, v0

    const v20, 0x8100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 143
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 144
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setResponse(Ljava/lang/Object;)V

    goto :goto_5

    .line 147
    .end local v16           #request:Lcom/google/android/voicesearch/masf/LiteRequest;
    .end local v17           #response:Lcom/google/android/voicesearch/masf/MasfSender$Response;
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .end local v3           #contentType:Ljava/lang/String;
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #index:I
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    .end local v11           #length:I
    .end local v12           #nonRespondedRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    .end local v13           #os:Ljava/io/OutputStream;
    .end local v14           #protocolVersion:I
    .end local v18           #responseCode:I
    .restart local v9       #index:I
    :cond_b
    move v8, v9

    .end local v9           #index:I
    .restart local v8       #index:I
    goto/16 :goto_1
.end method
