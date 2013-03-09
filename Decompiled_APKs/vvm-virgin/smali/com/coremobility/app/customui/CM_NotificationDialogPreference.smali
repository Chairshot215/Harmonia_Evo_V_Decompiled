.class public Lcom/coremobility/app/customui/CM_NotificationDialogPreference;
.super Landroid/preference/DialogPreference;


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->b:I

    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    new-instance v5, Lcom/coremobility/app/customui/n;

    aget-object v6, v3, v0

    aget-object v7, v4, v0

    invoke-direct {v5, v6, v7}, Lcom/coremobility/app/customui/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coremobility/app/customui/m;

    invoke-direct {v0, v1, v2}, Lcom/coremobility/app/customui/m;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    iget v1, p0, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->b:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c00f2

    new-instance v1, Lcom/coremobility/app/customui/d;

    invoke-direct {v1, p0}, Lcom/coremobility/app/customui/d;-><init>(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c00f3

    new-instance v1, Lcom/coremobility/app/customui/e;

    invoke-direct {v1, p0}, Lcom/coremobility/app/customui/e;-><init>(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
