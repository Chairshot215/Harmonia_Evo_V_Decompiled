.class public Lcom/android/htccontacts/ContactSearchEntryActivity;
.super Landroid/app/Activity;
.source "ContactSearchEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontact.action.people_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactSearchEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactSearchEntryActivity;->finish()V

    .line 22
    return-void
.end method
