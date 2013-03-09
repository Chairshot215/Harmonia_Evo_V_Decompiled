.class final Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$TabsAdapter;

.field private final b:Ljava/lang/Class;

.field private final c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$TabsAdapter;Ljava/lang/Class;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->a:Leu/chainfire/supersu/MainActivity$TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->b:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->c:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->c:Landroid/os/Bundle;

    return-object v0
.end method
