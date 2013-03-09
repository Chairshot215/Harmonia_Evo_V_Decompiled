.class public Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a:I

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a:I

    return v0
.end method

.method private a()V
    .locals 6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/coremobility/app/customui/c;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/c;-><init>(Landroid/content/Context;)V

    const-string v1, "blah"

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/c;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f0c017f

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/dz;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/dz;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f0c00f3

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ea;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ea;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->showDialog(I)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a:I

    check-cast p2, Lcom/coremobility/app/customui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/coremobility/app/customui/c;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/coremobility/app/customui/c;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremobility/app/customui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
