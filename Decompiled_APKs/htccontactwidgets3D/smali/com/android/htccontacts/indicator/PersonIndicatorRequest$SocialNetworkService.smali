.class final Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialNetworkService"
.end annotation


# instance fields
.field public idSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mimetype:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "mimetype"
    .parameter "uri"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    .line 113
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->mimetype:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->uri:Landroid/net/Uri;

    .line 115
    return-void
.end method
