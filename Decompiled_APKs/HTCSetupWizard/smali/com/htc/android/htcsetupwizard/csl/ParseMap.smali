.class public Lcom/htc/android/htcsetupwizard/csl/ParseMap;
.super Ljava/lang/Object;
.source "ParseMap.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ParseMap"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MAP:Ljava/lang/String; = "map"

.field private static final TAG_PROFILES:Ljava/lang/String; = "profiles"


# instance fields
.field private mItemName:Ljava/lang/String;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mProfileItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilePathName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesCount:I

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfileItemName:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilePathName:Ljava/util/ArrayList;

    .line 29
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    return-void
.end method

.method private parseItem()V
    .locals 7

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 199
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 210
    .local v2, eventType:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 211
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    .line 212
    const-string v4, "ParseMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapped item path name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilePathName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 223
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 202
    const/4 v0, 0x1

    .line 203
    goto :goto_1

    .line 204
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 205
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    const/4 v0, 0x1

    .line 207
    goto :goto_1

    .line 214
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 215
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, name:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseMap()V
    .locals 5

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 122
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 133
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, name:Ljava/lang/String;
    const-string v4, "profiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->parseProfiles()V

    .line 148
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 149
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_1

    .line 127
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3       #name:Ljava/lang/String;
    const-string v4, "map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseProfiles()V
    .locals 8

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 157
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 168
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, item:Ljava/lang/String;
    const-string v5, "ParseMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mProfilesCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v3, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->parseItem()V

    .line 177
    iget v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    .line 178
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfileItemName:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3           #item:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 191
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_1

    .line 162
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_1

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 182
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 184
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "profiles"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getProfileDisplayName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfileItemName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProfilePathName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilePathName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProfilesCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mProfilesCount:I

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 48
    .local v1, eventType:I
    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mItemName:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 53
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    .line 112
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 60
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 61
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 71
    :cond_1
    if-nez v1, :cond_4

    .line 88
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 96
    if-ne v1, v8, :cond_1

    .line 99
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 101
    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 112
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mValue:Ljava/lang/String;

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    goto :goto_0

    .line 64
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_5
    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :goto_6
    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v8, :cond_2

    .line 75
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 76
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, name:Ljava/lang/String;
    const-string v5, "map"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->parseMap()V

    goto :goto_1

    .line 81
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 83
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 89
    :catch_3
    move-exception v0

    .line 90
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 92
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 105
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 107
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 64
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 62
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
