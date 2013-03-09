.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WApplicationInformation"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public Comment:Ljava/lang/String;

.field public CommentCount:I

.field public FriendsCommentCount:I

.field public FriendsLikeCount:I

.field public LikeCount:I

.field public Liked:Z

.field public PopularCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
