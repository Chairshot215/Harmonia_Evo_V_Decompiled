.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)V
    .locals 0

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->curlConfiguration:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$400(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    #calls: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->access$500(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #calls: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$600(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->access$700(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
