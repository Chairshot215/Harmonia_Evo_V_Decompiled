.class public Lcom/htc/MusicWidget3D/MusicWidget3DSettings;
.super Landroid/app/Activity;
.source "MusicWidget3DSettings.java"


# static fields
.field static final EXTRA_KEY_RESULT_DATA:Ljava/lang/String;

.field static final EXTRA_VALUE_RESULT_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->EXTRA_KEY_RESULT_DATA:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->EXTRA_VALUE_RESULT_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fillResultData()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v1, result:Landroid/content/Intent;
    sget-object v2, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->EXTRA_KEY_RESULT_DATA:Ljava/lang/String;

    sget-object v3, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->EXTRA_VALUE_RESULT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->setResult(I)V

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 29
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 30
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->fillResultData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->setResult(ILandroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3DSettings;->finish()V

    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
