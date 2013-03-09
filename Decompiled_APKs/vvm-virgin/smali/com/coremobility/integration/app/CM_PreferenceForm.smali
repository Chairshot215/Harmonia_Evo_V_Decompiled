.class public abstract Lcom/coremobility/integration/app/CM_PreferenceForm;
.super Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    sget v0, Lcom/coremobility/integration/app/CM_App;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/coremobility/integration/app/CM_App;->d:I

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_App;->a(I)V

    invoke-static {v1, v1}, Lcom/coremobility/integration/app/CM_App;->a(II)V

    :cond_0
    return-void
.end method

.method protected final b(I)V
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
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    invoke-static {p1}, Lcom/coremobility/integration/app/CM_App;->a(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->n()V

    goto :goto_0
.end method
