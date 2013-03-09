.class public Lcom/htc/demoflopackageinstaller/net/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/xml; charset=utf-8"

.field private static final SUBTAG:Ljava/lang/String; = "[HttpHelper]"

.field private static final TAG:Ljava/lang/String; = "DFPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DownloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "pathLocal"
    .parameter "strURL"

    .prologue
    .line 57
    const-string v9, "DFPI"

    const-string v10, "HttptHelper.DownloadFile()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 65
    .local v2, connection:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 66
    .local v7, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v9, 0x400

    invoke-direct {v0, v9}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 68
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 69
    .local v3, current:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    .line 71
    int-to-byte v9, v3

    invoke-virtual {v0, v9}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v3           #current:I
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 81
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    const-string v9, "DFPI"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v9, 0x0

    .end local v4           #e:Ljava/io/IOException;
    :goto_1
    return v9

    .line 73
    .restart local v0       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #connection:Ljava/net/URLConnection;
    .restart local v3       #current:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v6, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 75
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public static QueryData(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .parameter "requestXML"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/demoflopackageinstaller/net/QueryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v18, "DFPI"

    const-string v19, "HttptHelper.QueryData()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez p0, :cond_1

    .line 92
    const/4 v6, 0x0

    .line 138
    :cond_0
    :goto_0
    return-object v6

    .line 93
    :cond_1
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 94
    const/4 v6, 0x0

    goto :goto_0

    .line 96
    :cond_2
    const/4 v5, 0x0

    .line 98
    .local v5, downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    const-string v18, "http://demoflo.htc.com/demo-flo-ws/rws/check-in/update/"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/demoflopackageinstaller/net/HttpHelper;->postMethod(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 100
    .local v15, response:Lorg/apache/http/HttpResponse;
    if-nez v15, :cond_3

    .line 101
    const/4 v6, 0x0

    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 103
    .local v16, responsecode:I
    const/16 v18, 0xc8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 107
    :try_start_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, xmlString:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 109
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10}, Lorg/xml/sax/InputSource;-><init>()V

    .line 110
    .local v10, inStream:Lorg/xml/sax/InputSource;
    new-instance v18, Ljava/io/StringReader;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 111
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 112
    .local v4, doc:Lorg/w3c/dom/Document;
    const-string v14, "Deployment"

    .line 113
    .local v14, playcount:Ljava/lang/String;
    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 114
    .local v13, nodelist:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    move-object v6, v5

    .end local v5           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .local v6, downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    :goto_1
    :try_start_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 116
    invoke-interface {v13, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 118
    invoke-interface {v13, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 119
    .local v12, nameElement:Lorg/w3c/dom/Element;
    const-string v18, "featureURL"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    .line 120
    .local v2, address:Lorg/w3c/dom/Attr;
    const-string v18, "featureId"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 121
    .local v9, id:Lorg/w3c/dom/Attr;
    const-string v18, "featureName"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 122
    .local v11, name:Lorg/w3c/dom/Attr;
    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 124
    if-nez v6, :cond_5

    .line 125
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v6           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v5       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    :goto_2
    :try_start_2
    new-instance v18, Lcom/htc/demoflopackageinstaller/net/QueryResult;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/htc/demoflopackageinstaller/net/QueryResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .end local v2           #address:Lorg/w3c/dom/Attr;
    .end local v9           #id:Lorg/w3c/dom/Attr;
    .end local v11           #name:Lorg/w3c/dom/Attr;
    .end local v12           #nameElement:Lorg/w3c/dom/Element;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object v6, v5

    .end local v5           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v6       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    goto :goto_1

    .line 131
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v6           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .end local v8           #i:I
    .end local v10           #inStream:Lorg/xml/sax/InputSource;
    .end local v13           #nodelist:Lorg/w3c/dom/NodeList;
    .end local v14           #playcount:Ljava/lang/String;
    .end local v17           #xmlString:Ljava/lang/String;
    .restart local v5       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    :catch_0
    move-exception v7

    .line 133
    .local v7, e:Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 138
    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 131
    .end local v5           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v3       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v6       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v8       #i:I
    .restart local v10       #inStream:Lorg/xml/sax/InputSource;
    .restart local v13       #nodelist:Lorg/w3c/dom/NodeList;
    .restart local v14       #playcount:Ljava/lang/String;
    .restart local v17       #xmlString:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v5       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    goto :goto_4

    .end local v5           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v2       #address:Lorg/w3c/dom/Attr;
    .restart local v6       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v9       #id:Lorg/w3c/dom/Attr;
    .restart local v11       #name:Lorg/w3c/dom/Attr;
    .restart local v12       #nameElement:Lorg/w3c/dom/Element;
    :cond_5
    move-object v5, v6

    .end local v6           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v5       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    goto :goto_2

    .end local v2           #address:Lorg/w3c/dom/Attr;
    .end local v5           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .end local v9           #id:Lorg/w3c/dom/Attr;
    .end local v11           #name:Lorg/w3c/dom/Attr;
    .end local v12           #nameElement:Lorg/w3c/dom/Element;
    .restart local v6       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    :cond_6
    move-object v5, v6

    .end local v6           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    .restart local v5       #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    goto :goto_3
.end method

.method public static UploadFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/16 v7, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const-string v2, "DFPI"

    const-string v5, "HttptHelper.UploadFile()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v2, "http://demoflo.htc.com/demo-flo-ws/rws/extra-msg/feature-usage/"

    invoke-static {p0, v2}, Lcom/htc/demoflopackageinstaller/net/HttpHelper;->postMethod(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 47
    .local v0, response:Lorg/apache/http/HttpResponse;
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return v4

    .line 49
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 50
    .local v1, responsecode:I
    const-string v5, "DFPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; return code is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; Upload success = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v7, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-ne v1, v7, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 50
    goto :goto_1

    :cond_2
    move v3, v4

    .line 51
    goto :goto_2
.end method

.method private static postMethod(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter "path"
    .parameter "url"

    .prologue
    .line 143
    const-string v5, "DFPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttptHelper.postMethod(), path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, file:Ljava/io/File;
    new-instance v4, Lorg/apache/http/entity/FileEntity;

    const-string v5, "application/xml; charset=utf-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v4, reqEntity:Lorg/apache/http/entity/FileEntity;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 150
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 151
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.protocol.version"

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 154
    :try_start_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 160
    :goto_0
    return-object v5

    .line 156
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DFPI"

    const-string v6, "[HttpHelper] HTTP Client post failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v5, "DFPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HttpHelper]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v5, 0x0

    goto :goto_0
.end method
