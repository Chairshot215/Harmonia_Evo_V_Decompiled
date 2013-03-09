.class Leu/chainfire/supersu/NativeAccessReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/NativeAccessReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/NativeAccessReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/NativeAccessReceiver$1;->a:Leu/chainfire/supersu/NativeAccessReceiver;

    iput-object p2, p0, Leu/chainfire/supersu/NativeAccessReceiver$1;->b:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/NativeAccessReceiver$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/NativeAccessReceiver$1;->b:Landroid/content/Context;

    iget-object v1, p0, Leu/chainfire/supersu/NativeAccessReceiver$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
