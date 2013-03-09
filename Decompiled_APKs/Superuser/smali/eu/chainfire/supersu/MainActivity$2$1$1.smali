.class Leu/chainfire/supersu/MainActivity$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$2$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$2$1;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$2$1$1;->a:Leu/chainfire/supersu/MainActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2$1$1;->a:Leu/chainfire/supersu/MainActivity$2$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$2$1;->a(Leu/chainfire/supersu/MainActivity$2$1;)Leu/chainfire/supersu/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$2;->b(Leu/chainfire/supersu/MainActivity$2;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method
