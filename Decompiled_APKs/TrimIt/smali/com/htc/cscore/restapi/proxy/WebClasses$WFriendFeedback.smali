.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFriendFeedback"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public Comment:Ljava/lang/String;

.field public CommentCount:I

.field public CommentLikeDate:Ljava/util/Date;

.field public FirstName:Ljava/lang/String;

.field public FriendRequestId:Ljava/util/UUID;

.field public LastName:Ljava/lang/String;

.field public LikeCount:I

.field public Liked:Z

.field public PopularCount:I

.field public ProfileImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WProfileImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
