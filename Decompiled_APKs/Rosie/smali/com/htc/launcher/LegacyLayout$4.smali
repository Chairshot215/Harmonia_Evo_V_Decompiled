.class Lcom/htc/launcher/LegacyLayout$4;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LegacyLayout;->setDrawWithFusion(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LegacyLayout;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LegacyLayout;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$4;->this$0:Lcom/htc/launcher/LegacyLayout;

    iput-object p2, p0, Lcom/htc/launcher/LegacyLayout$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$4;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->invalidate()V

    .line 903
    return-void
.end method
