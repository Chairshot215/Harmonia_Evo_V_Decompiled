.class Lcom/htc/launcher/Launcher$16;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5119
    iput-object p1, p0, Lcom/htc/launcher/Launcher$16;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5122
    iget-object v0, p0, Lcom/htc/launcher/Launcher$16;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->mActivityLaunched:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$4602(Lcom/htc/launcher/Launcher;Z)Z

    .line 5123
    return-void
.end method
