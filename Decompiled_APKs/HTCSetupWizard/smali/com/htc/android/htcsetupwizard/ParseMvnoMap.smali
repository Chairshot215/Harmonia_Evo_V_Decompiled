.class public Lcom/htc/android/htcsetupwizard/ParseMvnoMap;
.super Ljava/lang/Object;
.source "ParseMvnoMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
    }
.end annotation


# static fields
.field private static final ATTR_GID1:Ljava/lang/String; = "GID1"

.field private static final ATTR_Menu:Ljava/lang/String; = "Menu"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_displayname:Ljava/lang/String; = "displayname"

.field private static final ATTR_mapfile:Ljava/lang/String; = "mapfile"

.field private static final ATTR_operator:Ljava/lang/String; = "operator"

.field private static final TAG:Ljava/lang/String; = "CustomizeSetup_ParseMvnoMap"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MAP:Ljava/lang/String; = "map"

.field private static final TAG_MCCMNC:Ljava/lang/String; = "MCCMNC"

.field private static final TAG_PROFILES:Ljava/lang/String; = "profiles"


# instance fields
.field private mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field private mDefaultIndex:I

.field private mFilename:Ljava/lang/String;

.field private mGID:Ljava/lang/String;

.field private mGIDmatched:Z

.field private mItemYMenuCount:I

.field private mMap:Ljava/lang/String;

.field private mMccMnc:Ljava/lang/String;

.field private mMccMncmatched:Z

.field private mNullGIDFilename:Ljava/lang/String;

.field private mNullGIDOperatorName:Ljava/lang/String;

.field private mOperatorFilenameToShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorName:Ljava/lang/String;

.field private mOperatorNameToShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorToShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMap:Ljava/lang/String;

    .line 93
    iput v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    .line 110
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    .line 113
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMncmatched:Z

    .line 114
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGIDmatched:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorNameToShowList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorFilenameToShowList:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMnc:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGID:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMap:Ljava/lang/String;

    .line 128
    iput v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    .line 129
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    .line 131
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMncmatched:Z

    .line 132
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGIDmatched:Z

    .line 133
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mFilename:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorName:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorNameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorFilenameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    return-void
.end method

.method private parseMap()V
    .locals 5

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 251
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 262
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, name:Ljava/lang/String;
    const-string v4, "profiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->parseProfiles()V

    .line 277
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 278
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 254
    const/4 v0, 0x1

    .line 255
    goto :goto_1

    .line 256
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    const/4 v0, 0x1

    .line 259
    goto :goto_1

    .line 268
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3       #name:Ljava/lang/String;
    const-string v4, "map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 274
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseMccMnc()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, bEnd:Z
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "GID1"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, strGID1:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "operator"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, strOperator:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "displayname"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, strDisplaynamer:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "Menu"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, strMenu:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "mapfile"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, strMapFile:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 340
    .local v2, eventType:I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_7

    .line 341
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, name:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 344
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "GID1"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "operator"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "displayname"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "Menu"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "mapfile"

    invoke-interface {v9, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    const-string v9, "CustomizeSetup_ParseMvnoMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GID1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | operator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | displayname : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | menu : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | mapfile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGID:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 359
    const-string v9, "CustomizeSetup_ParseMvnoMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GID1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Match!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-boolean v13, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGIDmatched:Z

    .line 362
    const-string v9, "N"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 365
    sget-object v9, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 366
    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mFilename:Ljava/lang/String;

    .line 367
    iput-object v8, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorName:Ljava/lang/String;

    .line 368
    const-string v9, "CustomizeSetup_ParseMvnoMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mCaseNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x1

    .line 407
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 332
    const/4 v0, 0x1

    .line 333
    goto :goto_0

    .line 334
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 336
    const/4 v0, 0x1

    .line 337
    goto :goto_0

    .line 371
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    sget-object v10, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    if-eq v9, v10, :cond_2

    .line 373
    sget-object v9, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 374
    iget v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    iput v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    .line 375
    const-string v9, "CustomizeSetup_ParseMvnoMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mCaseNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , defaultIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    const-string v9, "Y"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 388
    const-string v9, "CustomizeSetup_ParseMvnoMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add to list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorNameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorFilenameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    .line 406
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    goto :goto_0

    .line 378
    .restart local v3       #name:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    const-string v9, "null"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_5
    if-eqz v7, :cond_6

    const-string v9, "n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_6
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDFilename:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 382
    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDFilename:Ljava/lang/String;

    .line 383
    iput-object v8, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDOperatorName:Ljava/lang/String;

    goto :goto_1

    .line 395
    .end local v3           #name:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x4

    if-ne v2, v9, :cond_8

    .line 396
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMap:Ljava/lang/String;

    goto :goto_2

    .line 397
    :cond_8
    const/4 v9, 0x3

    if-ne v2, v9, :cond_9

    .line 398
    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .restart local v3       #name:Ljava/lang/String;
    const-string v9, "MCCMNC"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 401
    const/4 v0, 0x1

    goto :goto_2

    .line 403
    .end local v3           #name:Ljava/lang/String;
    :cond_9
    if-ne v2, v13, :cond_3

    .line 404
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private parseProfiles()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 282
    const/4 v0, 0x0

    .line 285
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 296
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 297
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, name:Ljava/lang/String;
    const-string v5, "MCCMNC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, mccmnc:Ljava/lang/String;
    const-string v5, "CustomizeSetup_ParseMvnoMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mccmnc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mMccMnc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    iput-boolean v8, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMncmatched:Z

    .line 303
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->parseMccMnc()V

    .line 315
    .end local v3           #mccmnc:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 316
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 288
    const/4 v0, 0x1

    .line 289
    goto :goto_1

    .line 290
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    const/4 v0, 0x1

    .line 293
    goto :goto_1

    .line 306
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 307
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 309
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "profiles"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    if-ne v2, v8, :cond_1

    .line 313
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postParse()V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    if-ne v0, v1, :cond_0

    .line 150
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMncmatched:Z

    if-eqz v0, :cond_0

    .line 151
    iget v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mItemYMenuCount:I

    if-lez v0, :cond_1

    .line 152
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 162
    :cond_0
    :goto_0
    const-string v0, "CustomizeSetup_ParseMvnoMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postParse mCaseNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , operatorlist.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , defaultIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mFilename:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mNullGIDOperatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorName:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NULL_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    goto :goto_0
.end method


# virtual methods
.method public getCaseNumber()Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    return-object v0
.end method

.method public getDefaultIndex()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mDefaultIndex:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorFilenameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorFilenameToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const-string v0, "CustomizeSetup_ParseMvnoMap"

    const-string v1, "getFileNameByIndex: index out of range, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpDisplayNamelist()Ljava/util/ArrayList;
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
    .line 68
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorNameToShowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOperatorByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorToShowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v0, "CustomizeSetup_ParseMvnoMap"

    const-string v1, "getOperatorByIndex: index out of range, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public isMvnoPageShow()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGIDmatched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
    .locals 9
    .parameter "path"
    .parameter "id"
    .parameter "gid"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->init()V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 175
    .local v1, eventType:I
    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMap:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mMccMnc:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGID:Ljava/lang/String;

    .line 178
    const-string v5, "CustomizeSetup_ParseMvnoMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse() mGID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mGID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 182
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_0

    .line 185
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 186
    const-string v5, "CustomizeSetup_ParseMvnoMap"

    const-string v6, "fis.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v5, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-object v2, v3

    .line 241
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 190
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 201
    :cond_1
    if-nez v1, :cond_4

    .line 218
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 226
    if-ne v1, v8, :cond_1

    .line 229
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 230
    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 240
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->postParse()V

    .line 241
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mCaseNumber:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    sget-object v5, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    goto :goto_0

    .line 194
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_5
    sget-object v5, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    :goto_6
    sget-object v5, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v8, :cond_2

    .line 205
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 206
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, name:Ljava/lang/String;
    const-string v5, "map"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap;->parseMap()V

    goto :goto_1

    .line 211
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 213
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 219
    :catch_3
    move-exception v0

    .line 220
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 222
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 234
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 236
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 237
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 194
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 192
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
