.class public final Lcom/coremobility/l/af;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:Lcom/coremobility/l/ac;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/coremobility/l/af;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coremobility/l/af;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    iput v2, p0, Lcom/coremobility/l/af;->g:I

    return-void
.end method
