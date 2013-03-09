.class public Lcom/htc/android/psclient/PSClient;
.super Landroid/preference/PreferenceActivity;
.source "PSClient.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private debug:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 14
    const-string v0, "PSClient"

    iput-object v0, p0, Lcom/htc/android/psclient/PSClient;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/htc/android/psclient/PSClient;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/htc/android/psclient/PSClient;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/PSClient;->context:Landroid/content/Context;

    .line 20
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/htc/android/psclient/PSClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/psclient/PSClient;->debug:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/PSClient;->debug:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/psclient/PSClient$1;

    invoke-direct {v1, p0}, Lcom/htc/android/psclient/PSClient$1;-><init>(Lcom/htc/android/psclient/PSClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
