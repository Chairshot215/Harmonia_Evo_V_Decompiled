.class Lcom/htc/launcher/Launcher$15$1;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$15;->end()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$15;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$15;)V
    .locals 0
    .parameter

    .prologue
    .line 4988
    iput-object p1, p0, Lcom/htc/launcher/Launcher$15$1;->this$1:Lcom/htc/launcher/Launcher$15;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/htc/launcher/Launcher$15$1;->this$1:Lcom/htc/launcher/Launcher$15;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rosie_complete_loading"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4992
    return-void
.end method
