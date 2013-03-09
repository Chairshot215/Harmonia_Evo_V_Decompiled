.class public Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;
.super Lcom/google/wireless/gdata/client/GDataServiceClient;
.source "SubscribedFeedsClient.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .locals 0
    .parameter "client"
    .parameter "factory"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "mail"

    return-object v0
.end method
