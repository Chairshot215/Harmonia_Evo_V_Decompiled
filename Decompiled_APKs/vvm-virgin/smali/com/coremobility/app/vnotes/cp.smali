.class final Lcom/coremobility/app/vnotes/cp;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lcom/coremobility/app/vnotes/cp;->a:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/coremobility/app/vnotes/cp;->b:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/coremobility/app/vnotes/cp;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    return-void
.end method
