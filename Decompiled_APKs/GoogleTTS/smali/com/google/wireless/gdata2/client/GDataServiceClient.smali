.class public abstract Lcom/google/wireless/gdata2/client/GDataServiceClient;
.super Ljava/lang/Object;
.source "GDataServiceClient.java"


# static fields
.field protected static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "2.0"

    sput-object v0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method
