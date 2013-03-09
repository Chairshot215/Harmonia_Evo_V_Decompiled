.class public final Lcom/coremobility/k/ae;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564134

    iput v0, p0, Lcom/coremobility/k/ae;->m:I

    iput p1, p0, Lcom/coremobility/k/ae;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v0, 0x1c

    const-string v1, "CM+VN >Lock(%d), id"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
