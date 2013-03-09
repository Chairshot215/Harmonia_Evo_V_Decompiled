.class public Lcom/htc/util/backup/ExternalSharedPreferences;
.super Ljava/lang/Object;
.source "ExternalSharedPreferences.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private map:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ExternalSharedPreferences"

    sput-object v0, Lcom/htc/util/backup/ExternalSharedPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/backup/ExternalSharedPreferences;
    .locals 15
    .parameter "filepath"

    .prologue
    .line 20
    new-instance v8, Lcom/htc/util/backup/ExternalSharedPreferences;

    invoke-direct {v8}, Lcom/htc/util/backup/ExternalSharedPreferences;-><init>()V

    .line 21
    .local v8, sp:Lcom/htc/util/backup/ExternalSharedPreferences;
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    iput-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    .line 25
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 26
    .local v11, xpp:Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Lcom/htc/util/backup/ExternalSharedPreferences;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "External SharedPreferences File Path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 29
    .local v5, in:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    invoke-interface {v11, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 34
    .local v2, eventType:I
    :goto_0
    const/4 v12, 0x1

    if-eq v2, v12, :cond_2

    .line 35
    const/4 v12, 0x2

    if-ne v2, v12, :cond_0

    .line 36
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, tag:Ljava/lang/String;
    const-string v12, "string"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 38
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, key:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 40
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, value:Ljava/lang/String;
    iget-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 43
    .restart local v9       #tag:Ljava/lang/String;
    :cond_1
    const-string v12, "int"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 44
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .restart local v6       #key:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    .restart local v10       #value:Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 47
    .local v4, i:Ljava/lang/Integer;
    iget-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 70
    .end local v2           #eventType:I
    .end local v4           #i:Ljava/lang/Integer;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    .end local v11           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 78
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-object v8

    .line 48
    .restart local v2       #eventType:I
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v11       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    const-string v12, "long"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 49
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    .restart local v6       #key:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 51
    .restart local v10       #value:Ljava/lang/String;
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 52
    .local v7, l:Ljava/lang/Long;
    iget-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 72
    .end local v2           #eventType:I
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #l:Ljava/lang/Long;
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    .end local v11           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 73
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #eventType:I
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v11       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_2
    const-string v12, "float"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 54
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 55
    .restart local v6       #key:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 56
    .restart local v10       #value:Ljava/lang/String;
    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v10}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, f:Ljava/lang/Float;
    iget-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 74
    .end local v2           #eventType:I
    .end local v3           #f:Ljava/lang/Float;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    .end local v11           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v11       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_3
    const-string v12, "boolean"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 59
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .restart local v6       #key:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 61
    .restart local v10       #value:Ljava/lang/String;
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v10}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, b:Ljava/lang/Boolean;
    iget-object v12, v8, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 113
    .end local p2
    :cond_0
    return p2

    .line 109
    .restart local p2
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Object -> Boolean"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 125
    .end local p2
    :cond_0
    return p2

    .line 121
    .restart local p2
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Object -> Float"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 101
    .end local p2
    :cond_0
    return p2

    .line 97
    .restart local p2
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Object -> Integer"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 137
    .end local p2
    :cond_0
    return-wide p2

    .line 133
    .restart local p2
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Object -> Long"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/backup/ExternalSharedPreferences;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Object -> String"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    move-object v1, p2

    .line 89
    goto :goto_0
.end method
