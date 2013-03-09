.class Lcom/htc/launcher/LegacyLayout$AttachScene$1;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LegacyLayout$AttachScene;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LegacyLayout$AttachScene;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LegacyLayout$AttachScene;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$AttachScene$1;->this$0:Lcom/htc/launcher/LegacyLayout$AttachScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$AttachScene$1;->this$0:Lcom/htc/launcher/LegacyLayout$AttachScene;

    #getter for: Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout$AttachScene;->access$300(Lcom/htc/launcher/LegacyLayout$AttachScene;)Lcom/htc/launcher/LegacyLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->invalidate()V

    .line 77
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$AttachScene$1;->this$0:Lcom/htc/launcher/LegacyLayout$AttachScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;
    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout$AttachScene;->access$302(Lcom/htc/launcher/LegacyLayout$AttachScene;Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/LegacyLayout;

    return-void
.end method
