.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArray"
.end annotation


# instance fields
.field public byteArray:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lcom/google/android/apps/uploader/googlemobile/masf/services/EventLogService$ByteArray;->byteArray:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
