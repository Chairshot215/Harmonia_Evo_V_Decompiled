.class public final Lcom/coremobility/h/d;
.super Lcom/coremobility/j/h;


# instance fields
.field private a:I


# direct methods
.method static synthetic a(Lcom/coremobility/h/d;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/h/d;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/h/d;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/h/d;->a:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/h/d;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/h/d;->b:I

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/h/d;->a:I

    goto :goto_1
.end method
