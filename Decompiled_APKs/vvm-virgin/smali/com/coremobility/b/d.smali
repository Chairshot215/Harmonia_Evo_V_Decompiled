.class final Lcom/coremobility/b/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/coremobility/b/c;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/b/d;-><init>(Lcom/coremobility/b/c;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/b/c;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/b/d;->a:Lcom/coremobility/b/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/b/d;->a:Lcom/coremobility/b/c;

    invoke-static {v0}, Lcom/coremobility/b/c;->a(Lcom/coremobility/b/c;)V

    return-void
.end method
