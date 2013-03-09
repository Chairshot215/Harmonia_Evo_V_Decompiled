.class public final Lcom/coremobility/app/vnotes/hr;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hr;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/hr;->a:Ljava/lang/String;

    iput p3, p0, Lcom/coremobility/app/vnotes/hr;->c:I

    iput p4, p0, Lcom/coremobility/app/vnotes/hr;->d:I

    iput-object p5, p0, Lcom/coremobility/app/vnotes/hr;->f:Landroid/net/Uri;

    iput-boolean p6, p0, Lcom/coremobility/app/vnotes/hr;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hr;->a:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/app/vnotes/hr;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/hr;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/hr;->d:I

    return v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hr;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/hr;->e:Z

    return v0
.end method
