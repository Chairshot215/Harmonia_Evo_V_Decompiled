.class public final Lcom/coremobility/e/ba;
.super Lcom/coremobility/j/h;


# instance fields
.field final synthetic a:Lcom/coremobility/e/aw;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;ILcom/coremobility/j/i;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/e/ba;->a:Lcom/coremobility/e/aw;

    invoke-direct {p0, v0, p3, v0}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    iput p2, p0, Lcom/coremobility/e/ba;->d:I

    return-void
.end method

.method static synthetic a(Lcom/coremobility/e/ba;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/e/ba;->d:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/e/ba;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/e/ba;->d:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ba;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/e/ba;->b:I

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/e/ba;->d:I

    goto :goto_1
.end method
