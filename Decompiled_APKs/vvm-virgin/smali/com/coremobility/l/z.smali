.class public final Lcom/coremobility/l/z;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/xml/sax/helpers/DefaultHandler;

.field final synthetic b:Lcom/coremobility/l/v;


# direct methods
.method constructor <init>(Lcom/coremobility/l/v;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/l/z;->b:Lcom/coremobility/l/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/l/aa;

    invoke-direct {v0, p1}, Lcom/coremobility/l/aa;-><init>(Lcom/coremobility/l/v;)V

    iput-object v0, p0, Lcom/coremobility/l/z;->a:Lorg/xml/sax/helpers/DefaultHandler;

    return-void
.end method
