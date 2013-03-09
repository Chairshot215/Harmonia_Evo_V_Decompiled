.class public Lcom/google/android/common/gdata2/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "2.0"

    sput-object v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method
