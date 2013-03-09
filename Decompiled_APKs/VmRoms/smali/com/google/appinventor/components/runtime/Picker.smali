.class public abstract Lcom/google/appinventor/components/runtime/Picker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BeforePicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "BeforePicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Open()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    return-void
.end method

.method public click()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->BeforePicking()V

    iget v0, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected abstract getIntent()Landroid/content/Intent;
.end method
