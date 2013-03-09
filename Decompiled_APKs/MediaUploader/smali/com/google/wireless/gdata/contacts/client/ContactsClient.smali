.class public Lcom/google/wireless/gdata/contacts/client/ContactsClient;
.super Lcom/google/wireless/gdata/client/GDataServiceClient;
.source "ContactsClient.java"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "cp"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cp"

    return-object v0
.end method
