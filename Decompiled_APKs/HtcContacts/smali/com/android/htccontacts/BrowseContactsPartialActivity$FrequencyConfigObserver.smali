.class Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;
.super Lcom/android/htccontacts/group/FrequencyObserver;
.source "BrowseContactsPartialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsPartialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyConfigObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/group/FrequencyObserver",
        "<",
        "Lcom/android/htccontacts/BrowseContactsPartialActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsPartialActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/FrequencyObserver;-><init>(Ljava/lang/Object;)V

    .line 591
    return-void
.end method


# virtual methods
.method public onFrequencyConfigChanged(Lcom/android/htccontacts/BrowseContactsPartialActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 593
    const/4 v0, 0x1

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z
    invoke-static {p1, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->access$002(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z

    .line 594
    return-void
.end method

.method public bridge synthetic onFrequencyConfigChanged(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 587
    check-cast p1, Lcom/android/htccontacts/BrowseContactsPartialActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;->onFrequencyConfigChanged(Lcom/android/htccontacts/BrowseContactsPartialActivity;)V

    return-void
.end method
