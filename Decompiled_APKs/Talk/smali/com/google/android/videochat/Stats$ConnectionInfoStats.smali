.class public Lcom/google/android/videochat/Stats$ConnectionInfoStats;
.super Lcom/google/android/videochat/Stats;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionInfoStats"
.end annotation


# instance fields
.field public flags:I

.field public localAddress:Ljava/lang/String;

.field public localProtocol:Ljava/lang/String;

.field public localType:Ljava/lang/String;

.field public mediaType:I

.field public receivedBitrate:I

.field public receivedBytes:I

.field public remoteAddress:Ljava/lang/String;

.field public remoteProtocol:Ljava/lang/String;

.field public remoteType:Ljava/lang/String;

.field public rtt:I

.field public sentBitrate:I

.field public sentBytes:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 1
    .parameter "mediaType"
    .parameter "localType"
    .parameter "localAddress"
    .parameter "localProtocol"
    .parameter "remoteType"
    .parameter "remoteAddress"
    .parameter "remoteProtocol"
    .parameter "receivedBytes"
    .parameter "receivedBitrate"
    .parameter "sentBytes"
    .parameter "sentBitrate"
    .parameter "rtt"
    .parameter "flags"

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Stats;-><init>(I)V

    .line 87
    iput p1, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->mediaType:I

    .line 88
    iput-object p2, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localType:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localAddress:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localProtocol:Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteType:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteAddress:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteProtocol:Ljava/lang/String;

    .line 94
    iput p8, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->receivedBytes:I

    .line 95
    iput p9, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->receivedBitrate:I

    .line 96
    iput p10, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->sentBytes:I

    .line 97
    iput p11, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->sentBitrate:I

    .line 98
    iput p12, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->rtt:I

    .line 99
    iput p13, p0, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->flags:I

    .line 100
    return-void
.end method
