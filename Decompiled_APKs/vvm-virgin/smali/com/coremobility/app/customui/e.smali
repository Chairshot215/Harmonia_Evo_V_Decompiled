.class final Lcom/coremobility/app/customui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;


# direct methods
.method constructor <init>(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/e;->a:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/e;->a:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-static {v0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/e;->a:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-static {v0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a(Lcom/coremobility/app/customui/CM_NotificationDialogPreference;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
