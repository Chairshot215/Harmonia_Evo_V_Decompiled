.class Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;
.super Lcom/android/htccontacts/group/FrequencyObserver;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyConfigObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/group/FrequencyObserver",
        "<",
        "Lcom/android/htccontacts/group/GroupDetailView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1285
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/FrequencyObserver;-><init>(Ljava/lang/Object;)V

    .line 1286
    return-void
.end method


# virtual methods
.method public onFrequencyConfigChanged(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1288
    const/4 v0, 0x1

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z
    invoke-static {p1, v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$1202(Lcom/android/htccontacts/group/GroupDetailView;Z)Z

    .line 1289
    return-void
.end method

.method public bridge synthetic onFrequencyConfigChanged(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1282
    check-cast p1, Lcom/android/htccontacts/group/GroupDetailView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;->onFrequencyConfigChanged(Lcom/android/htccontacts/group/GroupDetailView;)V

    return-void
.end method
