.class final Lcom/coremobility/app/vnotes/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bv;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bv;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bv;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
