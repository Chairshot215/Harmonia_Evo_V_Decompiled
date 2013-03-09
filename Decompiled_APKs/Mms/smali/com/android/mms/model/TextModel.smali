.class public Lcom/android/mms/model/TextModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "TextModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextModel"


# instance fields
.field private final mCharset:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v2, "text"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 82
    if-nez p4, :cond_0

    .line 85
    const/4 p4, 0x4

    .line 87
    :cond_0
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "data"
    .parameter "region"
    .parameter "uri"

    .prologue
    .line 49
    const-string v2, "text"

    if-eqz p5, :cond_1

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;Landroid/net/Uri;)V

    .line 52
    if-nez p4, :cond_0

    .line 55
    const/4 p4, 0x4

    .line 57
    :cond_0
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 58
    invoke-direct {p0, p5}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;

    .line 59
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    new-array v5, v0, [B

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .locals 8
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "region"

    .prologue
    .line 44
    const/16 v4, 0x6a

    const/4 v0, 0x0

    new-array v5, v0, [B

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;Landroid/net/Uri;)V

    .line 45
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 62
    if-eqz p1, :cond_1

    .line 64
    :try_start_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 75
    :goto_0
    return-object v2

    .line 67
    :cond_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getCharset()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/TextModel;->getData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v1, "TextModel"

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 127
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaPause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 122
    :cond_2
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v0, v2, :cond_0

    .line 123
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public isTopLayout(I)Z
    .locals 2
    .parameter "mediaTop"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, isTop:Z
    iget-object v1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const/4 v0, 0x1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 106
    return-void
.end method
