.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRecommendAppsPopularityCount"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public CommentCount:I

.field public Id:Ljava/util/UUID;

.field public LikeCount:I

.field public PopularCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
