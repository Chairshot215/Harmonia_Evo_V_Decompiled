.class public final Lcom/coremobility/c/am;
.super Ljava/lang/Object;


# instance fields
.field public a:S

.field public b:S

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:B

.field public i:B

.field final synthetic j:Lcom/coremobility/c/al;


# direct methods
.method public constructor <init>(Lcom/coremobility/c/al;)V
    .locals 2

    iput-object p1, p0, Lcom/coremobility/c/am;->j:Lcom/coremobility/c/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    return-void
.end method
