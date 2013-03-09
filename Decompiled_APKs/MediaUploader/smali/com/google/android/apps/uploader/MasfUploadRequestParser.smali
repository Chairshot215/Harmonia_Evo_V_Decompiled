.class public Lcom/google/android/apps/uploader/MasfUploadRequestParser;
.super Ljava/lang/Object;
.source "MasfUploadRequestParser.java"


# static fields
.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field private static final EMPTY_LINE:Ljava/lang/String; = "\r\n\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseBodyPart(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    const-string v0, "\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "\r\n\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadIntentConstants;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 71
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 77
    const-string v2, "%=_binary_=&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;-><init>(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)V

    move-object v2, v0

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 88
    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {v2, p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_1
    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    return-object v2
.end method


# virtual methods
.method public createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-direct {v2, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "POST"

    invoke-virtual {v2, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->setMethod(Ljava/lang/String;)V

    .line 36
    const-string v0, "%=_boundary_line_=&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 42
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadIntentConstants;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x1

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 53
    aget-object v1, v3, v0

    invoke-direct {p0, v1, p3}, Lcom/google/android/apps/uploader/MasfUploadRequestParser;->parseBodyPart(Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->addBodyPart(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-object v2
.end method
