.class public final Lcom/coremobility/f/h;
.super Lcom/coremobility/f/i;


# instance fields
.field public a:Lcom/coremobility/f/g;

.field final synthetic b:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>(Lcom/coremobility/f/g;Lcom/coremobility/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/f/h;->b:Lcom/coremobility/f/g;

    invoke-direct {p0, p1}, Lcom/coremobility/f/i;-><init>(Lcom/coremobility/f/g;)V

    iput-object p2, p0, Lcom/coremobility/f/h;->a:Lcom/coremobility/f/g;

    invoke-virtual {p0}, Lcom/coremobility/f/h;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/f/h;->a:Lcom/coremobility/f/g;

    invoke-virtual {v0}, Lcom/coremobility/f/g;->l()V

    return-void
.end method
