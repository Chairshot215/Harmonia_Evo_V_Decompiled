.class Lcom/htc/launcher/LegacyLayout$3;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LegacyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LegacyLayout;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LegacyLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$3;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$3;->this$0:Lcom/htc/launcher/LegacyLayout;

    #getter for: Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout;->access$000(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->setVisible(ZLjava/lang/Runnable;)V

    .line 889
    return-void
.end method
