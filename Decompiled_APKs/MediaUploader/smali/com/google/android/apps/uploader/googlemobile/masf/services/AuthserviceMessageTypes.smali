.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/AuthserviceMessageTypes;
.super Ljava/lang/Object;


# static fields
.field public static final AUTH_SERVICE_STORE:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x119

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/AuthserviceMessageTypes;->AUTH_SERVICE_STORE:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/AuthserviceMessageTypes;->AUTH_SERVICE_STORE:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    const/16 v1, 0x219

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x2

    new-instance v3, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    const-string v4, "TOKENS"

    invoke-direct {v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
