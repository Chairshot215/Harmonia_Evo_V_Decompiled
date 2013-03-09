.class public Lcom/htc/notification/NotificationExtra;
.super Ljava/lang/Object;
.source "NotificationExtra.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "n"
    .parameter "buttonId"
    .parameter "pi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Landroid/app/NotificationButtonAction;

    invoke-direct {v0}, Landroid/app/NotificationButtonAction;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 46
    iget-object v0, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 50
    :cond_0
    return-void
.end method
