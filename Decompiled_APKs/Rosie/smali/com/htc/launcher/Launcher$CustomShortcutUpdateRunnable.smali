.class Lcom/htc/launcher/Launcher$CustomShortcutUpdateRunnable;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomShortcutUpdateRunnable"
.end annotation


# instance fields
.field private mRefApp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 3118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher$CustomShortcutUpdateRunnable;->mRefApp:Ljava/lang/ref/WeakReference;

    .line 3120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3125
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CustomShortcutUpdateRunnable;->mRefApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3126
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CustomShortcutUpdateRunnable;->mRefApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 3127
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CUSTOM_SHORTCUT] UPDATE - CustomShortcutUpdateRunnable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Title("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3131
    sget-object v2, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    .line 3132
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->update2DButtonBarViews()V

    .line 3137
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 3135
    :cond_1
    const-string v2, "Rosie"

    const-string v3, "The custom shortcut item is GC."

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
