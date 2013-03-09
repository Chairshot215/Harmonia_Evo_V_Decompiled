.class public Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
.super Ljava/util/ArrayList;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1097
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDiff()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1100
    .local v1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 1101
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->buildDiff(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1103
    .end local v0           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    :cond_0
    return-object v1
.end method
