.class Leu/chainfire/supersu/MainActivity$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$2;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$2;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$2$2;->a:Leu/chainfire/supersu/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2$2;->a:Leu/chainfire/supersu/MainActivity$2;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$2;->b(Leu/chainfire/supersu/MainActivity$2;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    return-void
.end method
