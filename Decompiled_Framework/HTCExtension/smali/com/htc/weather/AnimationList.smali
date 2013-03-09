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

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/weather/AnimationList;->mCurrentGroupIndex:I

    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->mAnimationParsered:Z

    iput v1, p0, Lcom/htc/weather/AnimationList;->mUpdatedAnimationIndex:I

    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mHeapUsage:J

    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mRamUsage:J

    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/weather/AnimationList;->mCurrentGroupIndex:I

    iput-boolean v1, p0, Lcom/htc/weather/AnimationList;->mAnimationParsered:Z

    iput v1, p0, Lcom/htc/weather/AnimationList;->mUpdatedAnimationIndex:I

    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mHeapUsage:J

    iput-wide v2, p0, Lcom/htc/weather/AnimationList;->mRamUsage:J

    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/htc/weather/AnimationList;->mThis:Lcom/htc/weather/AnimationList;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/weather/AnimationList;[Lcom/htc/weather/animations/WeatherAnimationData;)[Lcom/htc/weather/animations/WeatherAnimationData;
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/AnimationList$AnimationParseListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;

    return-object v0
.end method

.method private fromXML(I)V
    .locals 8

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    iget-object v5, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v6, :cond_0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/htc/weather/AnimationList;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-boolean v5, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v5, :cond_1

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

    :catch_1
    move-exception v4

    iget-boolean v5, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v5, :cond_1

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    if-ne v1, v9, :cond_0

    move-object v4, v5

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_2
    iget-boolean v8, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v8, :cond_1

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

    :pswitch_1
    :try_start_4
    invoke-direct {p0, v6}, Lcom/htc/weather/AnimationList;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v7

    :goto_3
    iget-boolean v8, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v8, :cond_1

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

    :catch_4
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v1, :cond_0

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

    :cond_0
    const-string v1, "AnimationGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/weather/AnimationList;->parseListItem(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1
    return-void
.end method

.method private parseListItem(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    new-instance v0, Lcom/htc/weather/AnimationList$ListMap;

    invoke-direct {v0, p0}, Lcom/htc/weather/AnimationList$ListMap;-><init>(Lcom/htc/weather/AnimationList;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/weather/AnimationList$ListMap;->template_:Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->name_:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->link_:Ljava/lang/String;

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

    :cond_3
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/weather/AnimationList$ListMap;->path_:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/htc/weather/AnimationList;->localLOG:Z

    if-eqz v2, :cond_5

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

    :cond_5
    iget-object v2, p0, Lcom/htc/weather/AnimationList;->mListMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getParent()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;
    .locals 2

    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    array-length v0, v1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;

    aget-object v1, v1, p1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFileExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/weather/AnimationList;->mboolFileExist:Z

    return v0
.end method

.method public reloadAnimaitonDatas(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 4

    const-string v1, "AnimationList"

    const-string v2, "reloadAnimationDatas(env)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "AnimationList"

    const-string v2, "env is null, stop to load animation data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/weather/AnimationList$1;

    invoke-direct {v1, p0}, Lcom/htc/weather/AnimationList$1;-><init>(Lcom/htc/weather/AnimationList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAnimationParseListener(Lcom/htc/weather/AnimationList$AnimationParseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;

    return-void
.end method
