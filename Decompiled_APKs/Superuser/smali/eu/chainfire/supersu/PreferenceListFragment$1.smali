.class Leu/chainfire/supersu/PreferenceListFragment$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PreferenceListFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PreferenceListFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PreferenceListFragment$1;->a:Leu/chainfire/supersu/PreferenceListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment$1;->a:Leu/chainfire/supersu/PreferenceListFragment;

    invoke-static {v0}, Leu/chainfire/supersu/PreferenceListFragment;->a(Leu/chainfire/supersu/PreferenceListFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
