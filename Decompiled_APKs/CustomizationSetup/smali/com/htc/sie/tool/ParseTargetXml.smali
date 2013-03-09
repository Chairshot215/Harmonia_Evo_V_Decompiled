.class public Lcom/htc/sie/tool/ParseTargetXml;
.super Ljava/lang/Object;
.source "ParseTargetXml.java"


# static fields
.field protected static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field protected static final ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final FORCE_CHANGE:Ljava/lang/String; = "force_change"

.field private static final TAG:Ljava/lang/String; = null

.field protected static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field protected static final TAG_CUSTOMIZATION_FORM:Ljava/lang/String; = "customization_form"

.field protected static final TAG_FUNCTION:Ljava/lang/String; = "function"

.field protected static final TAG_ITEM:Ljava/lang/String; = "item"

.field protected static final TAG_MODULE:Ljava/lang/String; = "module"

.field protected static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mParser:Lorg/xmlpull/v1/XmlPullParser;

.field protected mRunXUtil:Lcom/htc/sie/tool/RunXUtility;

.field protected mSaveAll:Z

.field protected mSetCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/sie/tool/ParseTargetXml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/htc/sie/tool/ParseTargetXml;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/htc/sie/tool/RunXUtility;

    invoke-direct {v0, p1}, Lcom/htc/sie/tool/RunXUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sie/tool/ParseTargetXml;->mRunXUtil:Lcom/htc/sie/tool/RunXUtility;

    .line 42
    return-void
.end method

.method protected static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "path"
    .parameter "bSaveAll"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    sget-object v7, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    const-string v8, "Start parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 111
    .local v1, eventType:I
    iput-boolean p2, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSaveAll:Z

    .line 114
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 115
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 117
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_0

    move-object v2, v3

    .line 173
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return v5

    .line 121
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 132
    :cond_1
    if-nez v1, :cond_4

    .line 149
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 157
    if-ne v1, v6, :cond_1

    .line 160
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 162
    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_3
    :goto_3
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move v5, v6

    .line 173
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    :goto_5
    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    goto :goto_0

    .line 134
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v6, :cond_2

    .line 136
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 137
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/htc/sie/tool/ParseTargetXml;->parseCustomziationForm()V

    goto :goto_1

    .line 142
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 144
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 150
    :catch_3
    move-exception v0

    .line 151
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 153
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 166
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 168
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 125
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 123
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method protected parseCategory(Ljava/lang/String;)V
    .locals 9
    .parameter "category"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 222
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 233
    .local v3, eventType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, name:Ljava/lang/String;
    const-string v6, "module"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    iget-object v6, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, module:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 241
    iget-object v6, p0, Lcom/htc/sie/tool/ParseTargetXml;->mRunXUtil:Lcom/htc/sie/tool/RunXUtility;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/sie/tool/RunXUtility;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 242
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 243
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #bundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/sie/tool/ParseTargetXml;->parseModule(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0, p1, v4, v1}, Lcom/htc/sie/tool/ParseTargetXml;->saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 258
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #module:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 259
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 225
    const/4 v0, 0x1

    .line 226
    goto :goto_1

    .line 227
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const/4 v0, 0x1

    .line 230
    goto :goto_1

    .line 249
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_3
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 250
    iget-object v6, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5       #name:Ljava/lang/String;
    const-string v6, "category"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    const/4 v0, 0x1

    goto :goto_0

    .line 255
    .end local v5           #name:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseCustomziationForm()V
    .locals 8

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 183
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 194
    .local v3, eventType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 195
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, name:Ljava/lang/String;
    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, category:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p0, v1}, Lcom/htc/sie/tool/ParseTargetXml;->parseCategory(Ljava/lang/String;)V

    .line 213
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 214
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 186
    const/4 v0, 0x1

    .line 187
    goto :goto_1

    .line 188
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 189
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    const/4 v0, 0x1

    .line 191
    goto :goto_1

    .line 204
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 205
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseFunction(Landroid/os/Bundle;)V
    .locals 18
    .parameter "bundle"

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, bEnd:Z
    const/4 v4, 0x0

    .line 320
    .local v4, bIsPlenty:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    .line 322
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v5, cwbundle:Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 324
    .local v11, mergerule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-lez v15, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/16 v16, 0x0

    const-string v17, "mergerule"

    invoke-interface/range {v15 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 327
    :cond_0
    if-nez v11, :cond_1

    .line 328
    const-string v11, "append"

    .line 330
    :cond_1
    sget-object v15, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "parseFunction, mergerule="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 344
    .local v8, eventType:I
    const/4 v15, 0x2

    if-ne v8, v15, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 347
    .local v12, name:Ljava/lang/String;
    const-string v15, "set"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/16 v16, 0x0

    const-string v17, "name"

    invoke-interface/range {v15 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, set:Ljava/lang/String;
    const-string v15, "plenty"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 350
    const/4 v4, 0x1

    .line 352
    :cond_3
    sget-object v15, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bPlenty="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    .line 354
    if-eqz v4, :cond_5

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/htc/sie/tool/ParseTargetXml;->parseSet(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 370
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #set:Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v3, :cond_2

    .line 373
    .end local v8           #eventType:I
    :goto_1
    if-eqz v4, :cond_b

    .line 374
    const-string v15, "insert"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 375
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v6

    .line 376
    .local v6, cwsize:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->size()I

    move-result v14

    .line 377
    .local v14, size:I
    const/4 v9, 0x1

    .local v9, i:I
    :goto_2
    if-gt v9, v14, :cond_8

    .line 378
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 379
    .local v2, b:Landroid/os/Bundle;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int v16, v9, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 377
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 334
    .end local v2           #b:Landroid/os/Bundle;
    .end local v6           #cwsize:I
    .end local v9           #i:I
    .end local v14           #size:I
    :catch_0
    move-exception v7

    .line 335
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 336
    const/4 v3, 0x1

    .line 337
    goto :goto_1

    .line 338
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v7

    .line 339
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    const/4 v3, 0x1

    .line 341
    goto :goto_1

    .line 357
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #eventType:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #set:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/htc/sie/tool/ParseTargetXml;->parseSet(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #set:Ljava/lang/String;
    :cond_6
    const/4 v15, 0x3

    if-ne v8, v15, :cond_7

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 364
    .restart local v12       #name:Ljava/lang/String;
    const-string v15, "function"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 365
    const/4 v3, 0x1

    goto :goto_0

    .line 367
    .end local v12           #name:Ljava/lang/String;
    :cond_7
    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    .line 368
    const/4 v3, 0x1

    goto :goto_0

    .line 381
    .end local v8           #eventType:I
    .restart local v6       #cwsize:I
    .restart local v9       #i:I
    .restart local v14       #size:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->clear()V

    .line 382
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v14

    .line 383
    const/4 v9, 0x1

    :goto_3
    if-gt v9, v14, :cond_b

    .line 384
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 385
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 387
    .end local v6           #cwsize:I
    .end local v9           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #size:I
    :cond_9
    const-string v15, "overwrite"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->clear()V

    .line 389
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v14

    .line 390
    .restart local v14       #size:I
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_4
    if-gt v9, v14, :cond_b

    .line 391
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 392
    .restart local v10       #key:Ljava/lang/String;
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 390
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 394
    .end local v9           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #size:I
    :cond_a
    const-string v15, "append"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 395
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v6

    .line 396
    .restart local v6       #cwsize:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->size()I

    move-result v14

    .line 397
    .restart local v14       #size:I
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_5
    if-gt v9, v6, :cond_b

    .line 398
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 399
    .restart local v2       #b:Landroid/os/Bundle;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plenty_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int v16, v9, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 403
    .end local v2           #b:Landroid/os/Bundle;
    .end local v6           #cwsize:I
    .end local v9           #i:I
    .end local v14           #size:I
    :cond_b
    return-void
.end method

.method protected parseItem(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "item"
    .parameter "bundle"

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 472
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 483
    .local v2, eventType:I
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 484
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 487
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 499
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 475
    const/4 v0, 0x1

    .line 476
    goto :goto_1

    .line 477
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 478
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 479
    const/4 v0, 0x1

    .line 480
    goto :goto_1

    .line 489
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 490
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    const/4 v0, 0x1

    goto :goto_0

    .line 496
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseModule(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/4 v9, 0x0

    .line 263
    const/4 v0, 0x0

    .line 267
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 278
    .local v2, eventType:I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 279
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, name:Ljava/lang/String;
    const-string v7, "function"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, function:Ljava/lang/String;
    const/4 v5, 0x0

    .line 285
    .local v5, purgesetting:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 286
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "name"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "purge"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    if-nez v5, :cond_1

    .line 289
    const-string v5, "false"

    .line 293
    :cond_1
    if-eqz v3, :cond_5

    .line 294
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 295
    .local v6, subBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 296
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #subBundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 298
    .restart local v6       #subBundle:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/htc/sie/tool/ParseTargetXml;->parseFunction(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 313
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #purgesetting:Ljava/lang/String;
    .end local v6           #subBundle:Landroid/os/Bundle;
    :cond_4
    :goto_0
    if-eqz v0, :cond_0

    .line 314
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 270
    const/4 v0, 0x1

    .line 271
    goto :goto_1

    .line 272
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 273
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    const/4 v0, 0x1

    .line 275
    goto :goto_1

    .line 301
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    .restart local v3       #function:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #purgesetting:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/sie/tool/ParseTargetXml;->parseFunction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #purgesetting:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x3

    if-ne v2, v7, :cond_7

    .line 305
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 307
    .restart local v4       #name:Ljava/lang/String;
    const-string v7, "module"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    .end local v4           #name:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    .line 311
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseSet(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "bundle"
    .parameter "set"

    .prologue
    .line 406
    if-nez p2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v2, "single"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {p0, p1}, Lcom/htc/sie/tool/ParseTargetXml;->parseSetSingle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 410
    :cond_2
    const-string v2, "plenty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v1, subBundle:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plenty_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, setName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/sie/tool/ParseTargetXml;->parseSetSingle(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected parseSetSingle(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    .line 420
    const/4 v1, 0x0

    .line 424
    .local v1, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 435
    .local v3, eventType:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 436
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, name:Ljava/lang/String;
    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "name"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, item:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "extra"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, extra:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 444
    sget-object v7, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extra = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "extra"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, attrExtra:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .end local v0           #attrExtra:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 451
    invoke-virtual {p0, v5, p1}, Lcom/htc/sie/tool/ParseTargetXml;->parseItem(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 463
    .end local v4           #extra:Ljava/lang/String;
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 464
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 427
    const/4 v1, 0x1

    .line 428
    goto :goto_1

    .line 429
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 430
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    const/4 v1, 0x1

    .line 432
    goto :goto_1

    .line 454
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 455
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 457
    .restart local v6       #name:Ljava/lang/String;
    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 458
    const/4 v1, 0x1

    goto :goto_0

    .line 460
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 461
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseString(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "xmlstring"
    .parameter "bSaveAll"

    .prologue
    const/4 v4, 0x1

    .line 45
    sget-object v5, Lcom/htc/sie/tool/ParseTargetXml;->TAG:Ljava/lang/String;

    const-string v6, "Start parsing"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 50
    .local v1, eventType:I
    iput-boolean p2, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSaveAll:Z

    .line 53
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 54
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 55
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :cond_0
    if-nez v1, :cond_3

    .line 78
    :cond_1
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 86
    if-ne v1, v4, :cond_0

    .line 89
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 91
    if-eqz v2, :cond_2

    .line 92
    throw v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 102
    :cond_2
    :goto_2
    return v4

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v4, 0x0

    goto :goto_2

    .line 63
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    if-eq v1, v4, :cond_1

    .line 65
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 66
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/htc/sie/tool/ParseTargetXml;->parseCustomziationForm()V

    goto :goto_0

    .line 71
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    .line 73
    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 95
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "category"
    .parameter "module"
    .parameter "bundle"

    .prologue
    .line 525
    const-string v4, "force_change"

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSaveAll:Z

    if-nez v4, :cond_0

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v4, p0, Lcom/htc/sie/tool/ParseTargetXml;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v3, values:Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, key:Ljava/lang/String;
    const-string v4, "key"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v4, "value"

    invoke-static {p3}, Lcom/htc/sie/tool/ParseTargetXml;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 534
    const-string v4, "content://customization_settings/SettingTable"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 535
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
