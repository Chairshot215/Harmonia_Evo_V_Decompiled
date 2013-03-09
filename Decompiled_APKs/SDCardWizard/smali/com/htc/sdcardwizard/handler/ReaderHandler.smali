.class final Lcom/htc/sdcardwizard/handler/ReaderHandler;
.super Lcom/htc/sdcardwizard/handler/MediatorHandler;
.source "ReaderHandler.java"


# static fields
.field private static final EREADER_DELETE_UI_NAME:Ljava/lang/String; = "com.htc.ereader.library.view.DeleteBookActivity"

.field private static final EREADER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.ereader"

.field private static final READER_URI:Ljava/lang/String; = "content://com.htc.provider.ereader/sd_books"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 16
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.ereader"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    const-string v1, "content://com.htc.provider.ereader/sd_books"

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/MediatorHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getDeleteIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 21
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.ereader"

    const-string v3, "com.htc.ereader.library.view.DeleteBookActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    const-string v2, "SDMListMode"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 27
    return-object v1
.end method

.method public final isInstalled()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-string v1, "com.htc.ereader"

    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
