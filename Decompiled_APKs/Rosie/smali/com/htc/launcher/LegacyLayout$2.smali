.class Lcom/htc/launcher/LegacyLayout$2;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LegacyLayout;->removeTheView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LegacyLayout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LegacyLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$2;->this$0:Lcom/htc/launcher/LegacyLayout;

    iput-object p2, p0, Lcom/htc/launcher/LegacyLayout$2;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$2;->this$0:Lcom/htc/launcher/LegacyLayout;

    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LegacyLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
