.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WApplicationStatus"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public Comment:Ljava/lang/String;

.field public CommentDate:Ljava/util/Date;

.field public FriendRequestId:Ljava/util/UUID;

.field public Liked:Ljava/lang/Boolean;

.field public LikedDate:Ljava/util/Date;

.field public Timestamp:Ljava/util/Date;

.field public WishListed:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
