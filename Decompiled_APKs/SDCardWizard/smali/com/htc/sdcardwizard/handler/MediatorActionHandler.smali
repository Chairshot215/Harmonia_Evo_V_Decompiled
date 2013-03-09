.class abstract Lcom/htc/sdcardwizard/handler/MediatorActionHandler;
.super Lcom/htc/sdcardwizard/handler/MediatorHandler;
.source "MediatorActionHandler.java"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "iconGetter"
    .parameter "infoUri"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sdcardwizard/handler/MediatorHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected abstract getDeleteAction()Ljava/lang/String;
.end method

.method protected final getDeleteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/MediatorActionHandler;->getDeleteAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
