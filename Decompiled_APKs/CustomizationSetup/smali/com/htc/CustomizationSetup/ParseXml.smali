.class public Lcom/htc/CustomizationSetup/ParseXml;
.super Ljava/lang/Object;
.source "ParseXml.java"


# static fields
.field private static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FORCE_CHANGE:Ljava/lang/String; = "force_change"

.field private static final STRING_CRASHREPORT_MODULENAME:Ljava/lang/String; = "Crash_Report"

.field private static final STRING_OOBE_MODULENAME:Ljava/lang/String; = "OOBE"

.field private static final TAG:Ljava/lang/String; = "ParseXml"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_CUSTOMIZATION_FORM:Ljava/lang/String; = "customization_form"

.field private static final TAG_FUNCTION:Ljava/lang/String; = "function"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MODULE:Ljava/lang/String; = "module"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mSaveAll:Z

.field private mSetCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/CustomizationSetup/ParseXml;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private addSieOOBELogs(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "moduleName"
    .parameter "bundle"

    .prologue
    .line 399
    const-string v0, "ParseXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log for SIE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v0, "OOBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Crash_Report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/CustomizationSetup/ParseXml;->printModuleFunctions(Landroid/os/Bundle;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v0, "ParseXml"

    const-string v1, "Log for SIE : no need"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method private parseCategory(Ljava/lang/String;)V
    .locals 9
    .parameter "category"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 163
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 174
    .local v3, eventType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 175
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, name:Ljava/lang/String;
    const-string v6, "module"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, module:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v1, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/htc/CustomizationSetup/ParseXml;->parseModule(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0, p1, v4, v1}, Lcom/htc/CustomizationSetup/ParseXml;->saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #module:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 166
    const/4 v0, 0x1

    .line 167
    goto :goto_1

    .line 168
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 169
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_1

    .line 186
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 187
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 189
    .restart local v5       #name:Ljava/lang/String;
    const-string v6, "category"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseCustomziationForm()V
    .locals 8

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 124
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 135
    .local v3, eventType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 136
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, name:Ljava/lang/String;
    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, category:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, v1}, Lcom/htc/CustomizationSetup/ParseXml;->parseCategory(Ljava/lang/String;)V

    .line 154
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_1

    .line 129
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 130
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_1

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseFunction(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, bEnd:Z
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSetCount:I

    .line 252
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 263
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, name:Ljava/lang/String;
    const-string v5, "set"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, set:Ljava/lang/String;
    iget v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSetCount:I

    .line 269
    invoke-direct {p0, p1, v4}, Lcom/htc/CustomizationSetup/ParseXml;->parseSet(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 280
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #set:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 255
    const/4 v0, 0x1

    .line 256
    goto :goto_1

    .line 257
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    const/4 v0, 0x1

    .line 260
    goto :goto_1

    .line 271
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3       #name:Ljava/lang/String;
    const-string v5, "function"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseItem(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "item"
    .parameter "bundle"

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 350
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 361
    .local v2, eventType:I
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 362
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 366
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 378
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 353
    const/4 v0, 0x1

    .line 354
    goto :goto_1

    .line 355
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 356
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 357
    const/4 v0, 0x1

    .line 358
    goto :goto_1

    .line 368
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 369
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseModule(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 204
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 215
    .local v2, eventType:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 216
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, name:Ljava/lang/String;
    const-string v6, "function"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    const/4 v3, 0x0

    .line 221
    .local v3, function:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    :cond_1
    if-eqz v3, :cond_3

    .line 226
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v5, subBundle:Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/htc/CustomizationSetup/ParseXml;->parseFunction(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #subBundle:Landroid/os/Bundle;
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 243
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 207
    const/4 v0, 0x1

    .line 208
    goto :goto_1

    .line 209
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    const/4 v0, 0x1

    .line 212
    goto :goto_1

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    .restart local v3       #function:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/ParseXml;->parseFunction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 233
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    .line 234
    iget-object v6, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    .restart local v4       #name:Ljava/lang/String;
    const-string v6, "module"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseSet(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "bundle"
    .parameter "set"

    .prologue
    .line 284
    if-nez p2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v2, "single"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/ParseXml;->parseSetSingle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 288
    :cond_2
    const-string v2, "plenty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v1, subBundle:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plenty_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, setName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/CustomizationSetup/ParseXml;->parseSetSingle(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private parseSetSingle(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    .line 298
    const/4 v1, 0x0

    .line 302
    .local v1, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 313
    .local v3, eventType:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 314
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, name:Ljava/lang/String;
    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "name"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, item:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "extra"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, extra:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 322
    const-string v7, "ParseXml"

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

    .line 324
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

    .line 325
    .local v0, attrExtra:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v0           #attrExtra:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 329
    invoke-direct {p0, v5, p1}, Lcom/htc/CustomizationSetup/ParseXml;->parseItem(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 341
    .end local v4           #extra:Ljava/lang/String;
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 342
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 305
    const/4 v1, 0x1

    .line 306
    goto :goto_1

    .line 307
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 308
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    const/4 v1, 0x1

    .line 310
    goto :goto_1

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 333
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    .restart local v6       #name:Ljava/lang/String;
    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 336
    const/4 v1, 0x1

    goto :goto_0

    .line 338
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 339
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private printFunctionSettings(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "bundle"
    .parameter "functionName"

    .prologue
    .line 437
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 444
    .local v2, itemNameKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 446
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "items of functionName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_2
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_OOBE functionName =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, itemName:Ljava/lang/String;
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 457
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, sieValue:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 460
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_OOBE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private printModuleFunctions(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 413
    .local v2, functionNameKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, functionName:Ljava/lang/String;
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "functionName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 419
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-nez v0, :cond_3

    .line 420
    const-string v4, "ParseXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no customized data support, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0           #childbundle:Landroid/os/Bundle;
    .end local v1           #functionName:Ljava/lang/String;
    :cond_1
    return-void

    .line 417
    .restart local v1       #functionName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 424
    .restart local v0       #childbundle:Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/htc/CustomizationSetup/ParseXml;->printFunctionSettings(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "category"
    .parameter "moduleName"
    .parameter "bundle"

    .prologue
    .line 382
    const-string v4, "force_change"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSaveAll:Z

    if-nez v4, :cond_0

    .line 396
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/htc/CustomizationSetup/ParseXml;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 388
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

    .line 389
    .local v1, key:Ljava/lang/String;
    const-string v4, "key"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v4, "value"

    invoke-static {p3}, Lcom/htc/CustomizationSetup/ParseXml;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 391
    const-string v4, "content://customization_settings/SettingTable"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 392
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 394
    invoke-direct {p0, p2, p3}, Lcom/htc/CustomizationSetup/ParseXml;->addSieOOBELogs(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "path"
    .parameter "bSaveAll"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    const-string v7, "ParseXml"

    const-string v8, "Start parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 51
    .local v1, eventType:I
    iput-boolean p2, p0, Lcom/htc/CustomizationSetup/ParseXml;->mSaveAll:Z

    .line 55
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 56
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_0

    move-object v2, v3

    .line 114
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return v5

    .line 62
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    iget-object v7, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 73
    :cond_1
    if-nez v1, :cond_4

    .line 90
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 98
    if-ne v1, v6, :cond_1

    .line 101
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 103
    if-eqz v3, :cond_3

    .line 104
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

    .line 114
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :goto_5
    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    goto :goto_0

    .line 75
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v6, :cond_2

    .line 77
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 78
    iget-object v5, p0, Lcom/htc/CustomizationSetup/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/ParseXml;->parseCustomziationForm()V

    goto :goto_1

    .line 83
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 85
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 91
    :catch_3
    move-exception v0

    .line 92
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 107
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 109
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 66
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 64
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
