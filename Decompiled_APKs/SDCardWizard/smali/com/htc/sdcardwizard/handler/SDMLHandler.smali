.class abstract Lcom/htc/sdcardwizard/handler/SDMLHandler;
.super Lcom/htc/sdcardwizard/handler/MediatorHandler;
.source "SDMLHandler.java"


# static fields
.field private static final DELETE_UI_CLASS_NAME:Ljava/lang/String; = "com.htc.sdm.activity.SoundSetListDelete"

.field private static final DELETE_UI_PACKAGE_NAME:Ljava/lang/String; = "com.htc.sdm"

.field private static final MODE_DELETE:I = 0x2

.field private static final SDMLISTMODE:Ljava/lang/String; = "SDMListMode"

.field private static final SDMLISTTYPE:Ljava/lang/String; = "SDMListType"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "categoryIconResourceId"
    .parameter "infoUri"

    .prologue
    .line 10
    new-instance v0, Lcom/htc/sdcardwizard/handler/ResourceIconGetter;

    invoke-direct {v0, p2}, Lcom/htc/sdcardwizard/handler/ResourceIconGetter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3}, Lcom/htc/sdcardwizard/handler/MediatorHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected final getDeleteIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundSetListDelete"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SDMListType"

    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/SDMLHandler;->getListType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    const-string v2, "SDMListMode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    return-object v1
.end method

.method protected abstract getListType()I
.end method
