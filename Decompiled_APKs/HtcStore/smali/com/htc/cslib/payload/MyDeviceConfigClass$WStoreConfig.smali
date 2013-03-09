.class public Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;
.super Ljava/lang/Object;
.source "MyDeviceConfigClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/payload/MyDeviceConfigClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WStoreConfig"
.end annotation


# instance fields
.field public baseURL:Ljava/lang/String;

.field public setupURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
