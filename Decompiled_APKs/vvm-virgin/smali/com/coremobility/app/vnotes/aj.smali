.class final Lcom/coremobility/app/vnotes/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field final synthetic b:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Lcom/coremobility/app/vnotes/be;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/aj;->b:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/aj;->a:Lcom/coremobility/app/vnotes/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/aj;->a:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x89

    sget v2, Lcom/coremobility/app/vnotes/be;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    return-void
.end method
