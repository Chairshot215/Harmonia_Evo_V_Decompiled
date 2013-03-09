.class public Lcom/htc/appsharing/GetSelectionActivity;
.super Lcom/htc/appsharing/SelectToShareActivity;
.source "GetSelectionActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.GetSelectionActivity"

.field protected static final RETURN_SELECTION_TEXT:Ljava/lang/String; = "RETURN_SELECTION_TEXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected shareApp(Lcom/htc/appsharing/ComposeMaterial;)V
    .locals 6
    .parameter "material"

    .prologue
    .line 18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 19
    .local v1, data:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createComposeMessage(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, message:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/appsharing/util/Customize;->SKU_CHS:Z

    if-nez v3, :cond_0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/appsharing/GetSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createComposeTitle(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, composeTitle:Ljava/lang/String;
    const-string v3, "RETURN_SELECTION_TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v3, "com.htc.appsharing.intent.extra.SUBJECT_FOR_MAIL"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/htc/appsharing/GetSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 30
    const-string v3, "AppSharing.GetSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareApp() get selection text: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/appsharing/GetSelectionActivity;->finish()V

    .line 32
    return-void
.end method
