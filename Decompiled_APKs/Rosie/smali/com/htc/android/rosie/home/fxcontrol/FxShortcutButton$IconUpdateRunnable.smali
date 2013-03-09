.class Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;
.super Ljava/lang/Object;
.source "FxShortcutButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconUpdateRunnable"
.end annotation


# instance fields
.field private mRefIcon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRefView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "button"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 373
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mRefView:Ljava/lang/ref/WeakReference;

    .line 375
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mTitle:Ljava/lang/CharSequence;

    .line 376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mRefIcon:Ljava/lang/ref/WeakReference;

    .line 377
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mRefView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 381
    .local v0, view:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    const-string v1, "FxShortcutButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SHORTCUT] UPDATE - IconUpdateRunnable.run("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Title("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mRefIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mRefIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :goto_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_2
    const-class v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The shortcut icon("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is GC."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
