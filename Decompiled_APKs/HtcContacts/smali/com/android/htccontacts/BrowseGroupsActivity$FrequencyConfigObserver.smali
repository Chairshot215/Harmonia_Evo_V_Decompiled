.class Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;
.super Lcom/android/htccontacts/group/FrequencyObserver;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyConfigObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/group/FrequencyObserver",
        "<",
        "Lcom/android/htccontacts/BrowseGroupsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 2368
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/FrequencyObserver;-><init>(Ljava/lang/Object;)V

    .line 2369
    return-void
.end method


# virtual methods
.method public onFrequencyConfigChanged(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 2371
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 2372
    return-void
.end method

.method public bridge synthetic onFrequencyConfigChanged(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2365
    check-cast p1, Lcom/android/htccontacts/BrowseGroupsActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;->onFrequencyConfigChanged(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    return-void
.end method
