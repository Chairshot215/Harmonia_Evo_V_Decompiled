.class public Lcom/htc/weather/EnvSetting;
.super Ljava/lang/Object;
.source "EnvSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weather/EnvSetting$Env;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Env_Setting"


# instance fields
.field private localLOG:Z

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/htc/weather/EnvSetting$Env;

.field private mEnvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/weather/EnvSetting$Env;",
            ">;"
        }
    .end annotation
.end field

.field private mboolFileExist:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    iput-boolean v0, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    iput-object p1, p0, Lcom/htc/weather/EnvSetting;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/htc/weather/EnvSetting;->fromXML(I)V

    return-void
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

    iput-boolean v5, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    iget-object v5, p0, Lcom/htc/weather/EnvSetting;->mContext:Landroid/content/Context;

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
    invoke-direct {p0, v3}, Lcom/htc/weather/EnvSetting;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-boolean v5, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v5, :cond_1

    const-string v5, "Env_Setting"

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

    iget-boolean v5, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v5, :cond_1

    const-string v5, "Env_Setting"

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

.method private getValue(Ljava/lang/String;)F
    .locals 4

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Env_Setting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before getValue() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method private next(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "Env_Setting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading XML data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Env_Setting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading XML data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private parseAnimationOffset(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset_x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset_y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale_x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/weather/EnvSetting;->getValue(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale_y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/weather/EnvSetting;->getValue(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/htc/weather/EnvSetting$Env;

    invoke-direct {v1}, Lcom/htc/weather/EnvSetting$Env;-><init>()V

    iput-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->parseResolution(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    return-void
.end method

.method private parseResolution(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/htc/weather/EnvSetting$Env;->width_:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/htc/weather/EnvSetting$Env;->height_:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->next(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AnimationAttr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->parseAnimationOffset(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_2
.end method


# virtual methods
.method public getEnv(II)Lcom/htc/weather/EnvSetting$Env;
    .locals 4

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    move-object v3, v0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOffsetX(II)I
    .locals 4

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOffsetY(II)I
    .locals 4

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isFileExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    return v0
.end method
