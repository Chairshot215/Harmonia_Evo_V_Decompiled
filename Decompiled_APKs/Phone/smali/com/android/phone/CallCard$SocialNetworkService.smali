.class final Lcom/android/phone/CallCard$SocialNetworkService;
.super Ljava/lang/Object;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
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
    .line 2739
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2735
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    .line 2740
    iput-object p1, p0, Lcom/android/phone/CallCard$SocialNetworkService;->mimetype:Ljava/lang/String;

    .line 2741
    iput-object p2, p0, Lcom/android/phone/CallCard$SocialNetworkService;->uri:Landroid/net/Uri;

    .line 2742
    return-void
.end method
