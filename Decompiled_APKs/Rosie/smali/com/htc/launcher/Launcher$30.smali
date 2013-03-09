.class Lcom/htc/launcher/Launcher$30;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->updateShortcutsAfterMccMncChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$appInfo:Lcom/htc/launcher/ApplicationInfo;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7944
    iput-object p1, p0, Lcom/htc/launcher/Launcher$30;->this$0:Lcom/htc/launcher/Launcher;

    iput-object p2, p0, Lcom/htc/launcher/Launcher$30;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/launcher/Launcher$30;->val$appInfo:Lcom/htc/launcher/ApplicationInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7947
    iget-object v0, p0, Lcom/htc/launcher/Launcher$30;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$30;->val$appInfo:Lcom/htc/launcher/ApplicationInfo;

    iget-object v1, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7949
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update UI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher$30;->val$appInfo:Lcom/htc/launcher/ApplicationInfo;

    iget-object v2, v2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7951
    :cond_0
    return-void
.end method
