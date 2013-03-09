.class Lcom/amazon/s3/CallingFormat$VanityCallingFormat;
.super Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;
.source "CallingFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/CallingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VanityCallingFormat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;-><init>(Lcom/amazon/s3/CallingFormat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/s3/CallingFormat$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/amazon/s3/CallingFormat$VanityCallingFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public getServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "server"
    .parameter "bucket"

    .prologue
    .line 113
    return-object p2
.end method
