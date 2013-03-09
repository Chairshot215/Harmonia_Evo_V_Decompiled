.class public abstract Lcom/amazon/s3/CallingFormat;
.super Ljava/lang/Object;
.source "CallingFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/s3/CallingFormat$1;,
        Lcom/amazon/s3/CallingFormat$VanityCallingFormat;,
        Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;,
        Lcom/amazon/s3/CallingFormat$PathCallingFormat;
    }
.end annotation


# static fields
.field protected static pathCallingFormat:Lcom/amazon/s3/CallingFormat;

.field protected static subdomainCallingFormat:Lcom/amazon/s3/CallingFormat;

.field protected static vanityCallingFormat:Lcom/amazon/s3/CallingFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    new-instance v0, Lcom/amazon/s3/CallingFormat$PathCallingFormat;

    invoke-direct {v0, v1}, Lcom/amazon/s3/CallingFormat$PathCallingFormat;-><init>(Lcom/amazon/s3/CallingFormat$1;)V

    sput-object v0, Lcom/amazon/s3/CallingFormat;->pathCallingFormat:Lcom/amazon/s3/CallingFormat;

    .line 19
    new-instance v0, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;

    invoke-direct {v0, v1}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;-><init>(Lcom/amazon/s3/CallingFormat$1;)V

    sput-object v0, Lcom/amazon/s3/CallingFormat;->subdomainCallingFormat:Lcom/amazon/s3/CallingFormat;

    .line 20
    new-instance v0, Lcom/amazon/s3/CallingFormat$VanityCallingFormat;

    invoke-direct {v0, v1}, Lcom/amazon/s3/CallingFormat$VanityCallingFormat;-><init>(Lcom/amazon/s3/CallingFormat$1;)V

    sput-object v0, Lcom/amazon/s3/CallingFormat;->vanityCallingFormat:Lcom/amazon/s3/CallingFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static getPathCallingFormat()Lcom/amazon/s3/CallingFormat;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/s3/CallingFormat;->pathCallingFormat:Lcom/amazon/s3/CallingFormat;

    return-object v0
.end method

.method public static getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/s3/CallingFormat;->subdomainCallingFormat:Lcom/amazon/s3/CallingFormat;

    return-object v0
.end method

.method public static getVanityCallingFormat()Lcom/amazon/s3/CallingFormat;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amazon/s3/CallingFormat;->vanityCallingFormat:Lcom/amazon/s3/CallingFormat;

    return-object v0
.end method


# virtual methods
.method public abstract getEndpoint(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPathBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract supportsLocatedBuckets()Z
.end method
