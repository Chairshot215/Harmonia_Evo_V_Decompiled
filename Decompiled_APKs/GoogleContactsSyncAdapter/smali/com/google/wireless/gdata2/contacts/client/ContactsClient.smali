.class public Lcom/google/wireless/gdata2/contacts/client/ContactsClient;
.super Lcom/google/wireless/gdata2/client/GDataServiceClient;
.source "ContactsClient.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V
    .locals 0
    .parameter "client"
    .parameter "factory"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "3.0"

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cp"

    return-object v0
.end method
