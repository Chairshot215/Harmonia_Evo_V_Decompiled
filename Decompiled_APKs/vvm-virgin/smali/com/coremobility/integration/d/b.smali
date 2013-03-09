.class final Lcom/coremobility/integration/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/d/a;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/d/b;->a:Lcom/coremobility/integration/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/d/b;->a:Lcom/coremobility/integration/d/a;

    invoke-static {v0}, Lcom/coremobility/integration/d/a;->a(Lcom/coremobility/integration/d/a;)V

    return-void
.end method
