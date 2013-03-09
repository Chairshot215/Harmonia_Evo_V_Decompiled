.class public Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestEventLogEntry"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private timestamp:J

.field private type:S


# direct methods
.method public constructor <init>(SJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->type:S

    iput-wide p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->timestamp:J

    iput-object p4, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->status:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->timestamp:J

    return-wide v0
.end method

.method public getType()S
    .locals 1

    iget-short v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/Log$TestEventLogEntry;->type:S

    return v0
.end method
