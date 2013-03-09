.class Lcom/htc/launcher/Launcher$28;
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
    .line 7859
    iput-object p1, p0, Lcom/htc/launcher/Launcher$28;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7862
    iget-object v2, p0, Lcom/htc/launcher/Launcher$28;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7864
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/htc/launcher/Launcher$28;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7865
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 7866
    iget-object v2, p0, Lcom/htc/launcher/Launcher$28;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->updateShortcutsAfterMccMncChanged()V
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$10000(Lcom/htc/launcher/Launcher;)V

    .line 7867
    return-void
.end method
