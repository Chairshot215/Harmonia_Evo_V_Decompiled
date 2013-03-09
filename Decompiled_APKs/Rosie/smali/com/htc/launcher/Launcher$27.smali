.class Lcom/htc/launcher/Launcher$27;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onSimChanged(II)V
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
    .line 7850
    iput-object p1, p0, Lcom/htc/launcher/Launcher$27;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7853
    iget-object v0, p0, Lcom/htc/launcher/Launcher$27;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->updateApplicationListAfterMccMncChanged()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$9900(Lcom/htc/launcher/Launcher;)V

    .line 7854
    return-void
.end method
