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
    .parameter "c"
    .parameter "resid"

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    .line 43
    iput-object p1, p0, Lcom/htc/weather/EnvSetting;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p2}, Lcom/htc/weather/EnvSetting;->fromXML(I)V

    .line 45
    return-void
.end method

.method private fromXML(I)V
    .locals 8
    .parameter "resid"

    .prologue
    const/4 v6, 0x1

    .line 88
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 89
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 90
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    .line 92
    iget-object v5, p0, Lcom/htc/weather/EnvSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 94
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 96
    .local v0, eventType:I
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 108
    if-ne v0, v6, :cond_0

    .line 118
    .end local v0           #eventType:I
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    return-void

    .line 101
    .restart local v0       #eventType:I
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/htc/weather/EnvSetting;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 110
    .end local v0           #eventType:I
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 111
    .local v2, ioe:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v5, :cond_1

    .line 112
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

    .line 114
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 115
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    iget-boolean v5, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v5, :cond_1

    .line 116
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

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getValue(Ljava/lang/String;)F
    .locals 4
    .parameter "val"

    .prologue
    .line 184
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, pos:I
    iget-boolean v1, p0, Lcom/htc/weather/EnvSetting;->localLOG:Z

    if-eqz v1, :cond_0

    .line 186
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

    .line 187
    :cond_0
    if-lez v0, :cond_1

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    .line 190
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
    .parameter "xpp"

    .prologue
    .line 130
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, ioe:Ljava/io/IOException;
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

    .line 139
    .end local v0           #ioe:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v2

    .line 137
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
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
    .parameter "xpp"

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 169
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset_x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset_y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    goto :goto_1

    .line 173
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale_x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/weather/EnvSetting;->getValue(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    goto :goto_1

    .line 175
    :cond_3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale_y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/weather/EnvSetting;->getValue(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    goto :goto_1

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "xpp"

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, tagName:Ljava/lang/String;
    const-string v1, "Resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/htc/weather/EnvSetting$Env;

    invoke-direct {v1}, Lcom/htc/weather/EnvSetting$Env;-><init>()V

    iput-object v1, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    .line 124
    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->parseResolution(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 126
    :cond_0
    return-void
.end method

.method private parseResolution(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "xpp"

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 144
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/htc/weather/EnvSetting$Env;->width_:I

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mData:Lcom/htc/weather/EnvSetting$Env;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/htc/weather/EnvSetting$Env;->height_:I

    goto :goto_1

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->next(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 154
    .local v2, type:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, tagName:Ljava/lang/String;
    const-string v3, "AnimationAttr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-direct {p0, p1}, Lcom/htc/weather/EnvSetting;->parseAnimationOffset(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    .end local v1           #tagName:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 156
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_2
.end method


# virtual methods
.method public getEnv(II)Lcom/htc/weather/EnvSetting$Env;
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 49
    .local v2, size:I
    const/4 v0, 0x0

    .line 50
    .local v0, env:Lcom/htc/weather/EnvSetting$Env;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 51
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #env:Lcom/htc/weather/EnvSetting$Env;
    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    .line 52
    .restart local v0       #env:Lcom/htc/weather/EnvSetting$Env;
    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    move-object v3, v0

    .line 56
    :goto_1
    return-object v3

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOffsetX(II)I
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 64
    .local v2, size:I
    const/4 v0, 0x0

    .line 65
    .local v0, env:Lcom/htc/weather/EnvSetting$Env;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 66
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #env:Lcom/htc/weather/EnvSetting$Env;
    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    .line 67
    .restart local v0       #env:Lcom/htc/weather/EnvSetting$Env;
    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    .line 68
    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    .line 71
    :goto_1
    return v3

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOffsetY(II)I
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, size:I
    const/4 v0, 0x0

    .line 77
    .local v0, env:Lcom/htc/weather/EnvSetting$Env;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/htc/weather/EnvSetting;->mEnvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #env:Lcom/htc/weather/EnvSetting$Env;
    check-cast v0, Lcom/htc/weather/EnvSetting$Env;

    .line 79
    .restart local v0       #env:Lcom/htc/weather/EnvSetting$Env;
    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    if-ne p1, v3, :cond_0

    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    if-ne p2, v3, :cond_0

    .line 80
    iget v3, v0, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    .line 83
    :goto_1
    return v3

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isFileExist()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/weather/EnvSetting;->mboolFileExist:Z

    return v0
.end method
