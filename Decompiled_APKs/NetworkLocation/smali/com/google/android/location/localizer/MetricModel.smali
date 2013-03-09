.class public Lcom/google/android/location/localizer/MetricModel;
.super Ljava/lang/Object;
.source "MetricModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final VALUE_DIST_FIELD_ID:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final signalDistribution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, signalDistribution:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/DistanceDist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/location/localizer/MetricModel;->signalDistribution:Ljava/util/List;

    .line 37
    return-void
.end method

.method static fromProto(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/android/location/localizer/MetricModel;
    .locals 5
    .parameter "metricModel"

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-virtual {p0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 72
    .local v1, signalDistibutionCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v2, signalDistribution:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/localizer/DistanceDist;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/localizer/DistanceDist;->fromProto(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Lcom/google/android/location/localizer/MetricModel;

    invoke-direct {v3, v2}, Lcom/google/android/location/localizer/MetricModel;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method static fromStream(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;
    .locals 6
    .parameter "stream"

    .prologue
    .line 48
    new-instance v2, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    .line 49
    .local v2, protoBufType:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 51
    .local v1, metricModel:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :goto_0
    invoke-static {v1}, Lcom/google/android/location/localizer/MetricModel;->fromProto(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v3

    return-object v3

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MetricModel"

    const-string v4, "Unable to close metric model stream"

    invoke-static {v3, v4, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 53
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse stream to load metric model. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 57
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 60
    :goto_1
    throw v3

    .line 58
    :catch_2
    move-exception v0

    .line 59
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "MetricModel"

    const-string v5, "Unable to close metric model stream"

    invoke-static {v4, v5, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method getSignalDistribution()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/localizer/DistanceDist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/location/localizer/MetricModel;->signalDistribution:Ljava/util/List;

    return-object v0
.end method
