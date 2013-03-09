.class Leu/chainfire/supersu/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    return-void
.end method
