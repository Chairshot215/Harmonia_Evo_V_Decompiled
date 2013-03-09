.class public final Lcom/coremobility/integration/f/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;

.field public d:J

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/f/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/f/b;->c:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/f/b;->d:J

    iput-boolean v2, p0, Lcom/coremobility/integration/f/b;->e:Z

    iput v2, p0, Lcom/coremobility/integration/f/b;->f:I

    iput v2, p0, Lcom/coremobility/integration/f/b;->g:I

    return-void
.end method
