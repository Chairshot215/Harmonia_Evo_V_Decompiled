.class Lcom/htc/clock3dwidget/socialclock/SocialWidget$1;
.super Ljava/lang/Object;
.source "SocialWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$1;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$1;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    const v1, 0x9012

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 147
    return-void
.end method
