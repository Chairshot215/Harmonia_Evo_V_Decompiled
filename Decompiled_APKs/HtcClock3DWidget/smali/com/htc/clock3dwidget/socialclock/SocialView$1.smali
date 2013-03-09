.class Lcom/htc/clock3dwidget/socialclock/SocialView$1;
.super Ljava/lang/Object;
.source "SocialView.java"

# interfaces
.implements Lcom/htc/clock/util/social/SocialData$InflatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialView;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$1;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onURLDrawableInflated(Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView$1;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialView;

    invoke-virtual {p1}, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    #calls: Lcom/htc/clock3dwidget/socialclock/SocialView;->updateIcon(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/socialclock/SocialView;->access$200(Lcom/htc/clock3dwidget/socialclock/SocialView;Landroid/graphics/Bitmap;)V

    .line 293
    return-void
.end method
