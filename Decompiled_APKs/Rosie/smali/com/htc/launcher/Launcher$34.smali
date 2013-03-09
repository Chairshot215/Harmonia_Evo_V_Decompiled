.class Lcom/htc/launcher/Launcher$34;
.super Ljava/lang/Object;
.source "launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->setupHeaderButtons(Landroid/view/View;)V
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
    .line 1
    iput-object p1, p0, Lcom/htc/launcher/Launcher$34;->this$0:Lcom/htc/launcher/Launcher;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 30
    const-string v0, "m0narX_Tweaks"

    const-string v1, "Sending search events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/htc/launcher/Launcher$34;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/launcher/Launcher;->access$7200(Lcom/htc/launcher/Launcher;ZLjava/lang/String;)V

    .line 32
    return-void
.end method
