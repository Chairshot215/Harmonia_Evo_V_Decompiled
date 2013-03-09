.class final Lcom/coremobility/app/vnotes/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ac;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ac;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/coremobility/app/vnotes/ac;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ac;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/coremobility/app/vnotes/ac;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    return-void
.end method
