.class public Lcom/htc/android/htcsetupwizard/ParseXml;
.super Ljava/lang/Object;
.source "ParseXml.java"


# static fields
.field private static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FORCE_CHANGE:Ljava/lang/String; = "force_change"

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
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method private parseCategory(Ljava/lang/String;)V
    .locals 9
    .parameter "category"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 157
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 168
    .local v3, eventType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, name:Ljava/lang/String;
    const-string v6, "module"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, module:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseModule(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0, p1, v4, v1}, Lcom/htc/android/htcsetupwizard/ParseXml;->saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #module:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 190
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_1

    .line 162
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_1

    .line 180
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 181
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5       #name:Ljava/lang/String;
    const-string v6, "category"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseCustomziationForm()V
    .locals 8

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 118
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 129
    .local v3, eventType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 130
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, name:Ljava/lang/String;
    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, category:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseCategory(Ljava/lang/String;)V

    .line 148
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 149
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 121
    const/4 v0, 0x1

    .line 122
    goto :goto_1

    .line 123
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_1

    .line 139
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 142
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseFunction(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, bEnd:Z
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSetCount:I

    .line 246
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 257
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 258
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, name:Ljava/lang/String;
    const-string v5, "set"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, set:Ljava/lang/String;
    iget v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSetCount:I

    .line 263
    invoke-direct {p0, p1, v4}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseSet(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 274
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #set:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 275
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_1

    .line 251
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 252
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    const/4 v0, 0x1

    .line 254
    goto :goto_1

    .line 265
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 266
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3       #name:Ljava/lang/String;
    const-string v5, "function"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseItem(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "item"
    .parameter "bundle"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 344
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 355
    .local v2, eventType:I
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 356
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 372
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 347
    const/4 v0, 0x1

    .line 348
    goto :goto_1

    .line 349
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 350
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    const/4 v0, 0x1

    .line 352
    goto :goto_1

    .line 362
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 363
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseModule(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 198
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 209
    .local v2, eventType:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 210
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, name:Ljava/lang/String;
    const-string v6, "function"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, function:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 216
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_1
    if-eqz v3, :cond_3

    .line 220
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v5, subBundle:Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseFunction(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #subBundle:Landroid/os/Bundle;
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 237
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 201
    const/4 v0, 0x1

    .line 202
    goto :goto_1

    .line 203
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 204
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    const/4 v0, 0x1

    .line 206
    goto :goto_1

    .line 224
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    .restart local v3       #function:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseFunction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 227
    .end local v3           #function:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    .line 228
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 230
    .restart local v4       #name:Ljava/lang/String;
    const-string v6, "module"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseSet(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "bundle"
    .parameter "set"

    .prologue
    .line 278
    if-nez p2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v2, "single"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseSetSingle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 282
    :cond_2
    const-string v2, "plenty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v1, subBundle:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plenty_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, setName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseSetSingle(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private parseSetSingle(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    .line 292
    const/4 v1, 0x0

    .line 296
    .local v1, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 307
    .local v3, eventType:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 308
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, name:Ljava/lang/String;
    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 311
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "name"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, item:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "extra"

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, extra:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 316
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

    .line 318
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

    .line 319
    .local v0, attrExtra:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0           #attrExtra:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 323
    invoke-direct {p0, v5, p1}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseItem(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    .end local v4           #extra:Ljava/lang/String;
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 336
    .end local v3           #eventType:I
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 299
    const/4 v1, 0x1

    .line 300
    goto :goto_1

    .line 301
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 302
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    const/4 v1, 0x1

    .line 304
    goto :goto_1

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventType:I
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 327
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 329
    .restart local v6       #name:Ljava/lang/String;
    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 330
    const/4 v1, 0x1

    goto :goto_0

    .line 332
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 333
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "category"
    .parameter "module"
    .parameter "bundle"

    .prologue
    .line 398
    const-string v4, "force_change"

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSaveAll:Z

    if-nez v4, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 404
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

    .line 405
    .local v1, key:Ljava/lang/String;
    const-string v4, "key"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v4, "value"

    invoke-static {p3}, Lcom/htc/android/htcsetupwizard/ParseXml;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 407
    const-string v4, "content://customization_settings/SettingTable"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 408
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

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

    .line 41
    const-string v7, "ParseXml"

    const-string v8, "Start parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 45
    .local v1, eventType:I
    iput-boolean p2, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mSaveAll:Z

    .line 49
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_0

    move-object v2, v3

    .line 108
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return v5

    .line 56
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 67
    :cond_1
    if-nez v1, :cond_4

    .line 84
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 92
    if-ne v1, v6, :cond_1

    .line 95
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 97
    if-eqz v3, :cond_3

    .line 98
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

    .line 108
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    :goto_5
    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    goto :goto_0

    .line 69
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v6, :cond_2

    .line 71
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 72
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseXml;->parseCustomziationForm()V

    goto :goto_1

    .line 77
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 79
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 85
    :catch_3
    move-exception v0

    .line 86
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 88
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 101
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 60
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 58
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
