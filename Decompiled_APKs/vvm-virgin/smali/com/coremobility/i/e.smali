.class public final Lcom/coremobility/i/e;
.super Ljava/lang/Object;


# instance fields
.field public a:C

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method constructor <init>(CIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/coremobility/i/e;->a:C

    iput p2, p0, Lcom/coremobility/i/e;->b:I

    iput p3, p0, Lcom/coremobility/i/e;->c:I

    iput p4, p0, Lcom/coremobility/i/e;->e:I

    return-void
.end method

.method constructor <init>(CIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/coremobility/i/e;->a:C

    iput p2, p0, Lcom/coremobility/i/e;->b:I

    iput p3, p0, Lcom/coremobility/i/e;->c:I

    iput-object p4, p0, Lcom/coremobility/i/e;->d:Ljava/lang/String;

    return-void
.end method
