.class Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmUriData"
.end annotation


# instance fields
.field public mTicks:J

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0
    .parameter "uri"
    .parameter "ticks"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;->mUri:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;->mTicks:J

    return-void
.end method
