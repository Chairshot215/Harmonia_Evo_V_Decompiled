.class Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "SocialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocialClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialView;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialView;Lcom/htc/clock3dwidget/socialclock/SocialView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialView;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->access$100(Lcom/htc/clock3dwidget/socialclock/SocialView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->access$100(Lcom/htc/clock3dwidget/socialclock/SocialView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 283
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 278
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
