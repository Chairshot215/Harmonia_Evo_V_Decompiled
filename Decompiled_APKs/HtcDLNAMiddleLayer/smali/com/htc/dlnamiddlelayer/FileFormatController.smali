.class public Lcom/htc/dlnamiddlelayer/FileFormatController;
.super Ljava/lang/Object;
.source "FileFormatController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public checkFileFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 34
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_FORMATS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 40
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 38
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 44
    :cond_5
    const/4 v0, 0x0

    :goto_3
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 46
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_FORMATS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 44
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public checkImageFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 15
    if-nez p1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-object v1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 20
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 18
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
