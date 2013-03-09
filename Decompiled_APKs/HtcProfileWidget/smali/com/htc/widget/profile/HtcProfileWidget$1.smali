.class Lcom/htc/widget/profile/HtcProfileWidget$1;
.super Ljava/lang/Object;
.source "HtcProfileWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/profile/HtcProfileWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/profile/HtcProfileWidget;


# direct methods
.method constructor <init>(Lcom/htc/widget/profile/HtcProfileWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/widget/profile/HtcProfileWidget$1;->this$0:Lcom/htc/widget/profile/HtcProfileWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget$1;->this$0:Lcom/htc/widget/profile/HtcProfileWidget;

    #calls: Lcom/htc/widget/profile/HtcProfileWidget;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/widget/profile/HtcProfileWidget;->access$000(Lcom/htc/widget/profile/HtcProfileWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/widget/profile/HtcProfileAgent;->nextProfileMode(Landroid/content/Context;)V

    .line 34
    return-void
.end method
