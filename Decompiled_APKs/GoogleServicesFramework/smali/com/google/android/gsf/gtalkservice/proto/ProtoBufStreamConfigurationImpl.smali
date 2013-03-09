.class public Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;
.super Ljava/lang/Object;
.source "ProtoBufStreamConfigurationImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;


# instance fields
.field private final mProtoTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/common/io/protocol/ProtoBufType;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagProtoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/google/common/io/protocol/ProtoBufType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mTagProtoMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mProtoTagMap:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V
    .locals 2
    .parameter "tag"
    .parameter "type"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mTagProtoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    if-nez p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ProtoBufType may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mProtoTagMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public getProtoBuf(B)Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2
    .parameter "tag"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mTagProtoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag(Lcom/google/common/io/protocol/ProtoBufType;)B
    .locals 2
    .parameter "type"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protobuf instance should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mProtoTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mProtoTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isKnownProtoBuf(Lcom/google/common/io/protocol/ProtoBufType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mProtoTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKnownTag(B)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;->mTagProtoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
