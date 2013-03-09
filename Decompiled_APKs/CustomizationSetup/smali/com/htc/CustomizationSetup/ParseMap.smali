.class public Lcom/htc/CustomizationSetup/ParseMap;
.super Ljava/lang/Object;
.source "ParseMap.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MAP:Ljava/lang/String; = "map"

.field private static final TAG_PROFILES:Ljava/lang/String; = "profiles"


# instance fields
.field private mItemName:Ljava/lang/String;

.field private mMap:Ljava/lang/String;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mProfilesCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/ParseMap;->mMap:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/CustomizationSetup/ParseMap;->mProfilesCount:I

    .line 23
    return-void
.end method

.method private parseItem()V
    .locals 5

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 184
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 195
    .local v2, eventType:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mMap:Ljava/lang/String;

    .line 206
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 207
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_1

    .line 189
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    const/4 v0, 0x1

    .line 192
    goto :goto_1

    .line 197
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 198
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, name:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseMap()V
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 109
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 120
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, name:Ljava/lang/String;
    const-string v4, "profiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/ParseMap;->parseProfiles()V

    .line 135
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 136
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_1

    .line 114
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    const/4 v0, 0x1

    .line 117
    goto :goto_1

    .line 126
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3       #name:Ljava/lang/String;
    const-string v4, "map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseProfiles()V
    .locals 8

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 144
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 155
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 156
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, item:Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mItemName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/ParseMap;->parseItem()V

    .line 164
    :cond_1
    iget v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mProfilesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mProfilesCount:I

    .line 175
    .end local v3           #item:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 176
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 147
    const/4 v0, 0x1

    .line 148
    goto :goto_1

    .line 149
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    const/4 v0, 0x1

    .line 152
    goto :goto_1

    .line 166
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 167
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 169
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "profiles"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getProfilesCount(Ljava/lang/String;)I
    .locals 1
    .parameter "xml"

    .prologue
    .line 26
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    iget v0, p0, Lcom/htc/CustomizationSetup/ParseMap;->mProfilesCount:I

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/CustomizationSetup/ParseMap;->mProfilesCount:I

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 35
    .local v1, eventType:I
    iput-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mMap:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/htc/CustomizationSetup/ParseMap;->mItemName:Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 43
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    .line 99
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 47
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 58
    :cond_1
    if-nez v1, :cond_4

    .line 75
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 83
    if-ne v1, v8, :cond_1

    .line 86
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 88
    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 99
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mMap:Ljava/lang/String;

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    goto :goto_0

    .line 51
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_5
    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    :goto_6
    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v8, :cond_2

    .line 62
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 63
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, name:Ljava/lang/String;
    const-string v5, "map"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/ParseMap;->parseMap()V

    goto :goto_1

    .line 68
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 70
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 76
    :catch_3
    move-exception v0

    .line 77
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 92
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 94
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 51
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 49
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
