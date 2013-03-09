.class public final Lcom/coremobility/h/m;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30524141

    iput v0, p0, Lcom/coremobility/h/m;->m:I

    iput-object p1, p0, Lcom/coremobility/h/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v1, 0x32

    const-string v2, "CM+RS q get %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/h/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/m;->a:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
