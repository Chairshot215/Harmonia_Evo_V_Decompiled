.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WRecommendAppTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

.field public static final enum Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

.field public static final enum Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

.field public static final enum Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 678
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    const-string v1, "Application"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    .line 679
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    const-string v1, "Books"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    .line 680
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    const-string v1, "Music"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    .line 677
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;
    .locals 1
    .parameter "name"

    .prologue
    .line 677
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;
    .locals 1

    .prologue
    .line 677
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike$WRecommendAppTypes;

    return-object v0
.end method
