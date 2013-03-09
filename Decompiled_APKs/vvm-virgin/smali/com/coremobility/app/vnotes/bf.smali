.class final Lcom/coremobility/app/vnotes/bf;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field private b:I

.field private c:I

.field private d:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/be;II)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bf;->a:Lcom/coremobility/app/vnotes/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bf;->d:Landroid/content/DialogInterface;

    iput p2, p0, Lcom/coremobility/app/vnotes/bf;->b:I

    iput p3, p0, Lcom/coremobility/app/vnotes/bf;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bf;->d:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bf;->d:Landroid/content/DialogInterface;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/bf;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/bf;->c:I

    return v0
.end method
