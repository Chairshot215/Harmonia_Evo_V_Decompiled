.class final Lcom/coremobility/app/vnotes/hm;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field final synthetic c:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hm;->c:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/coremobility/app/vnotes/hm;->a:I

    iput v0, p0, Lcom/coremobility/app/vnotes/hm;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/hm;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/hm;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/hm;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/hm;->b:I

    return-void
.end method
