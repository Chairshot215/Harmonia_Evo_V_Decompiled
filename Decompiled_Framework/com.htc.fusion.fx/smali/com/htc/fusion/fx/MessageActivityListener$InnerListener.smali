.class Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MessageActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/MessageActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/MessageActivityListener$InnerListener$OuterCaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/htc/fusion/fx/MessageActivityListener;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/MessageActivityListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;->this$0:Lcom/htc/fusion/fx/MessageActivityListener;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    iput-object p2, p0, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener$OuterCaller;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener$OuterCaller;-><init>(Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
