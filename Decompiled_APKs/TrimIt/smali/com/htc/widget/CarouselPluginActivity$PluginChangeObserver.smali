.class Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;
.super Landroid/database/ContentObserver;
.source "CarouselPluginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselPluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselPluginActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget/CarouselPluginActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;->this$0:Lcom/htc/widget/CarouselPluginActivity;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 187
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;->this$0:Lcom/htc/widget/CarouselPluginActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselPluginActivity;->onAddPluginTabs()V

    .line 193
    return-void
.end method
