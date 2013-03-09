.class public Lcom/htc/weather/AnimationList;
.super Ljava/lang/Object;
.source "AnimationList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weather/AnimationList$AnimationParseListener;,
        Lcom/htc/weather/AnimationList$ListMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationList"


# instance fields
.field private localLOG:Z

.field private mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;

.field private mAnimationParsered:Z

.field private mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

.field private mContext:Landroid/content/Context;

.field private mCurrentGroupIndex:I

.field private mEnv:Lcom/htc/weather/EnvSetting$Env;

.field private mHeapUsage:J

.field private mListMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/weather/AnimationList$ListMap;",
            ">;"
        }
    .end annotation
.end field

.field private mRamUsage:J

.field private mThis:Lcom/htc/weather/AnimationList;

.field private mUpdatedAnimationIndex:I

.field private mboolFileExist:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/weather/AnimationList;->mCurrentGroupIndex:I

    .line 86
    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->mAnimationParsered:Z

    .line 87
    iput v1, p0, Lcom/htc/weather/AnimationList;->mUpdatedAnimationIndex:I

    .line 90
    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mHeapUsage:J

    .line 93
    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mRamUsage:J

    .line 594
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    .line 595
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resid"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/weather/AnimationList;->mCurrentGroupIndex:I

    .line 86
    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->mAnimationParsered:Z

    .line 87
    iput v1, p0, Lcom/htc/weather/AnimationList;->mUpdatedAnimationIndex:I

    .line 90
    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mHeapUsage:J

    .line 93
    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mRamUsage:J

    .line 111
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    .line 125
    iput-object p0, p0, Lcom/htc/weather/AnimationList;->mThis:Lcom/htc/weather/AnimationList;

    .line 126
    return-void
.end method

.method static synthetic access$002(Lcom/htc/weather/AnimationList;[Lcom/htc/weather/animations/WeatherAnimationData;)[Lcom/htc/weather/animations/WeatherAnimationData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/AnimationList$AnimationParseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;

    return-object v0
.end method

.method private fromXML(I)V
    .locals 8
    .parameter "resid"

    .prologue
    const/4 v6, 0x1

    .line 142
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 143
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 144
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    .line 146
    iget-object v5, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 149
    .local v0, eventType:I
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 161
    if-ne v0, v6, :cond_0

    .line 171
    .end local v0           #eventType:I
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    return-void

    .line 154
    .restart local v0       #eventType:I
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/htc/weather/AnimationList;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    .end local v0           #eventType:I
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 164
    .local v2, ioe:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v5, :cond_1

    .line 165
    const-string v5, "AnimationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading XML data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 167
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 168
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    iget-boolean v5, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v5, :cond_1

    .line 169
    const-string v5, "AnimationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading XML data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 11
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    .line 174
    const/4 v4, 0x0

    .line 176
    .local v4, reader:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 177
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 179
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 182
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 188
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    .line 190
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 191
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 193
    .local v1, eventType:I
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 205
    if-ne v1, v9, :cond_0

    move-object v4, v5

    .line 215
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #reader:Ljava/io/FileReader;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 183
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 207
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 208
    .local v3, ioe:Ljava/io/IOException;
    :goto_2
    iget-boolean v8, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v8, :cond_1

    .line 209
    const-string v8, "AnimationList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 198
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #reader:Ljava/io/FileReader;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v6}, Lcom/htc/weather/AnimationList;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 207
    .end local v1           #eventType:I
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 211
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v7

    .line 212
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    iget-boolean v8, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v8, :cond_1

    .line 213
    const-string v8, "AnimationList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 211
    .end local v4           #reader:Ljava/io/FileReader;
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #reader:Ljava/io/FileReader;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_3

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "xpp"

    .prologue
    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, tagName:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "AnimationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const-string v1, "AnimationGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lcom/htc/weather/AnimationList;->parseListItem(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 224
    :cond_1
    return-void
.end method

.method private parseListItem(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "xpp"

    .prologue
    .line 227
    new-instance v0, Lcom/htc/weather/AnimationList$ListMap;

    invoke-direct {v0, p0}, Lcom/htc/weather/AnimationList$ListMap;-><init>(Lcom/htc/weather/AnimationList;)V

    .line 228
    .local v0, data:Lcom/htc/weather/AnimationList$ListMap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 229
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/weather/AnimationList$ListMap;->template_:Z

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->name_:Ljava/lang/String;

    goto :goto_1

    .line 233
    :cond_2
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->link_:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/weather/AnimationList$ListMap;->link_:Ljava/lang/String;

    const-string v4, "xml/"

    iget-object v5, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/weather/AnimationList$ListMap;->resid_:I

    goto :goto_1

    .line 236
    :cond_3
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->path_:Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_4
    iget-boolean v2, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v2, :cond_5

    .line 241
    const-string v2, "AnimationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/weather/AnimationList$ListMap;->name_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", link : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/weather/AnimationList$ListMap;->link_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/htc/weather/AnimationList$ListMap;->resid_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is template? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/htc/weather/AnimationList$ListMap;->template_:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    iget-object v2, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method


# virtual methods
.method public getParent()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;
    .locals 2
    .parameter "index"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    array-length v0, v1

    .line 651
    .local v0, size:I
    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    aget-object v1, v1, p1

    .line 655
    .end local v0           #size:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFileExist()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    return v0
.end method

.method public reloadAnimaitonDatas(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 4
    .parameter "env"

    .prologue
    .line 598
    const-string v1, "AnimationList"

    const-string v2, "reloadAnimationDatas(env)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez p1, :cond_0

    .line 600
    const-string v1, "AnimationList"

    const-string v2, "env is null, stop to load animation data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 603
    :cond_0
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 604
    const-string v1, "AnimationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnv("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/weather/AnimationList$1;

    invoke-direct {v1, p0}, Lcom/htc/weather/AnimationList$1;-><init>(Lcom/htc/weather/AnimationList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    .local v0, loadDataThreaed:Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 634
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAnimationParseListener(Lcom/htc/weather/AnimationList$AnimationParseListener;)V
    .locals 0
    .parameter "animationParseListener"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;

    .line 644
    return-void
.end method
