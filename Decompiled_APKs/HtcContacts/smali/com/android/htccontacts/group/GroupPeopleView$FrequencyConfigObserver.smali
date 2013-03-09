.class Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;
.super Lcom/android/htccontacts/group/FrequencyObserver;
.source "GroupPeopleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupPeopleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyConfigObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/group/FrequencyObserver",
        "<",
        "Lcom/android/htccontacts/group/GroupPeopleView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/FrequencyObserver;-><init>(Ljava/lang/Object;)V

    .line 1383
    return-void
.end method


# virtual methods
.method public onFrequencyConfigChanged(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1386
    return-void
.end method

.method public bridge synthetic onFrequencyConfigChanged(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1379
    check-cast p1, Lcom/android/htccontacts/group/GroupPeopleView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;->onFrequencyConfigChanged(Lcom/android/htccontacts/group/GroupPeopleView;)V

    return-void
.end method
