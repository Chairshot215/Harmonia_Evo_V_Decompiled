.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/io/BaseHttpConnectionFactory;
.super Lcom/google/android/apps/uploader/googlemobile/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "HttpWorks"


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
