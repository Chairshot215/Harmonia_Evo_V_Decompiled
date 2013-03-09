.class public Lcom/htc/home/personalize/scene/FavoriteData;
.super Ljava/lang/Object;
.source "FavoriteData.java"


# static fields
.field public static final DEFAULT_CONTAINER:I = -0x65

.field public static final ITEM_APPLICATION:I = 0x0

.field public static final ITEM_SHORTCUT:I = 0x1

.field private static final KEY_ATTR_CELLX:Ljava/lang/String; = "cell_x"

.field private static final KEY_ATTR_CELLY:Ljava/lang/String; = "cell_y"

.field private static final KEY_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final KEY_ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final KEY_ATTR_ITEMTYPE:Ljava/lang/String; = "itemType"

.field private static final KEY_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_ATTR_SCREEN:Ljava/lang/String; = "screen"

.field private static final KEY_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final KEY_VALUE_APP:Ljava/lang/String; = "application"

.field private static final MAX_LAUNCH_BAR_X:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FavoriteData"


# instance fields
.field public m_nContainer:I

.field public m_nItemtype:I

.field public m_nScreen:I

.field public m_nX:I

.field public m_nY:I

.field public m_strClassName:Ljava/lang/String;

.field public m_strPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nItemtype:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .parameter "strPackageName"
    .parameter "strClassName"
    .parameter "nScreen"
    .parameter "nX"
    .parameter "nY"
    .parameter "nContainer"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nItemtype:I

    .line 49
    iput-object p1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    .line 52
    iput p4, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    .line 53
    iput p5, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    .line 54
    iput p6, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    .line 55
    return-void
.end method

.method public static IsFavoriteDataValid(Lcom/htc/home/personalize/scene/FavoriteData;)Z
    .locals 3
    .parameter "favorite"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    const-string v0, "FavoriteData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FavoriteData is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", Container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v3, stream:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 80
    .local v2, strXmlString:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 81
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 82
    .local v4, xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 84
    const/4 v5, 0x0

    const-string v6, "item"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const/4 v5, 0x0

    const-string v6, "itemType"

    const-string v7, "application"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const/4 v5, 0x0

    const-string v6, "packageName"

    iget-object v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const/4 v5, 0x0

    const-string v6, "className"

    iget-object v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const/4 v5, 0x0

    const-string v6, "screen"

    iget v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const/4 v5, 0x0

    const-string v6, "cell_x"

    iget v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const/4 v5, 0x0

    const-string v6, "cell_y"

    iget v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const/4 v5, 0x0

    const-string v6, "container"

    iget v7, p0, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const/4 v5, 0x0

    const-string v6, "item"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 95
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 97
    const-string v5, "FavoriteData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toXmlString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "FavoriteData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XmlSerializer XmlPullParserException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FavoriteData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XmlSerializer Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
