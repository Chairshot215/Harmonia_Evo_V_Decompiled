.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WWallpaper;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WWallpaper"
.end annotation


# instance fields
.field public FeedId:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;

.field public Type:Ljava/lang/String;

.field public Uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
