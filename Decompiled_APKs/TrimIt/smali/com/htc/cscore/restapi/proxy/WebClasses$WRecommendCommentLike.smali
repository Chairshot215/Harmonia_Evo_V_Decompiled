.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;
    }
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public Comment:Ljava/lang/String;

.field public CommentCreateDate:Ljava/util/Date;

.field public Id:Ljava/util/UUID;

.field public IsLike:Z

.field public LikeCreateDate:Ljava/util/Date;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    return-void
.end method
