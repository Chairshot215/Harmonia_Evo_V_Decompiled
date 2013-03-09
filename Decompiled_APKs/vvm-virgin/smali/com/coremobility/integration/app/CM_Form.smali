.class public abstract Lcom/coremobility/integration/app/CM_Form;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e(I)V
    .locals 2

    sget v0, Lcom/coremobility/integration/app/CM_App;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coremobility/integration/app/CM_App;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/coremobility/integration/app/CM_App;->a(II)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p1}, Lcom/coremobility/integration/app/CM_App;->a(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->n()V

    goto :goto_0
.end method

.method protected final i()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget v0, Lcom/coremobility/integration/app/CM_App;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/coremobility/integration/app/CM_App;->d:I

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_App;->a(I)V

    invoke-static {v1, v1}, Lcom/coremobility/integration/app/CM_App;->a(II)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->e()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->g()V

    return-void
.end method
