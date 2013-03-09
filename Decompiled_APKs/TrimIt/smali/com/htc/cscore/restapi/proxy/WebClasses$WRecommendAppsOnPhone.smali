.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsOnPhone;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRecommendAppsOnPhone"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public AppURL:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;

.field public RecommendedApplicationIcon:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendedApplicationIcon;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
