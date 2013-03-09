.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRecommendWishlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;
    }
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public AppURL:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public IsHTCHubContent:Z

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    return-void
.end method
