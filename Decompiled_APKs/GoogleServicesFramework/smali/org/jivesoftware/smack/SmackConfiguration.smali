.class public final Lorg/jivesoftware/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# static fields
.field private static keepAliveInterval:I

.field private static packetReplyTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 43
    const v0, 0xea60

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getPacketReplyTimeout()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    if-gtz v0, :cond_0

    .line 66
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 68
    :cond_0
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "2.2.1"

    return-object v0
.end method

.method public static setKeepAliveInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 105
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 106
    return-void
.end method

.method public static setPacketReplyTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 78
    if-gtz p0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_0
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 82
    return-void
.end method
