.class Leu/chainfire/supersu/PromptActivity$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PromptActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$1;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1;->a:Leu/chainfire/supersu/PromptActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/PromptActivity$1$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/PromptActivity$1$1;-><init>(Leu/chainfire/supersu/PromptActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
