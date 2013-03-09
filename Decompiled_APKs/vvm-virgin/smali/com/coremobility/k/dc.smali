.class public final Lcom/coremobility/k/dc;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/xml/sax/helpers/DefaultHandler;

.field final synthetic b:Lcom/coremobility/k/cx;


# direct methods
.method constructor <init>(Lcom/coremobility/k/cx;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/k/dc;->b:Lcom/coremobility/k/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/k/dd;

    invoke-direct {v0, p1}, Lcom/coremobility/k/dd;-><init>(Lcom/coremobility/k/cx;)V

    iput-object v0, p0, Lcom/coremobility/k/dc;->a:Lorg/xml/sax/helpers/DefaultHandler;

    return-void
.end method
