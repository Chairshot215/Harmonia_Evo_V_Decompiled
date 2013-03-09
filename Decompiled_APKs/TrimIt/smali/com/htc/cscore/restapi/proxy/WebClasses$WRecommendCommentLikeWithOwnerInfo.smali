.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLikeWithOwnerInfo;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRecommendCommentLikeWithOwnerInfo"
.end annotation


# instance fields
.field public FirstName:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public ProfilePhotoId:Ljava/util/UUID;

.field public RecommendCommentLike:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
