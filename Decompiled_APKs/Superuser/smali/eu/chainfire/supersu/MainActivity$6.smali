.class Leu/chainfire/supersu/MainActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$6;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$6;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$6;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->d(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->a()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$6;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$6;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->a()V

    goto :goto_0
.end method
