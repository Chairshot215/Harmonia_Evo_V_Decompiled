.class public final Lcom/coremobility/k/be;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x3056414c

    iput v0, p0, Lcom/coremobility/k/be;->m:I

    iput-boolean p1, p0, Lcom/coremobility/k/be;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v0, 0x1c

    const-string v1, "CM+VN <Delete() %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/coremobility/k/be;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
