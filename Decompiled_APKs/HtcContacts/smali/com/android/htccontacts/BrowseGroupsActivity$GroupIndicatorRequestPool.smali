.class public Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupIndicatorRequestPool"
.end annotation


# instance fields
.field pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/GroupIndicatorRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    .line 2290
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    .line 2302
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2303
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2304
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 2305
    .local v1, req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    if-eqz v1, :cond_0

    .line 2306
    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->close()V

    .line 2303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2310
    .end local v1           #req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2311
    return-void
.end method

.method public disableRequestObservers()V
    .locals 4

    .prologue
    .line 2315
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2316
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2317
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 2318
    .local v1, req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    if-eqz v1, :cond_0

    .line 2316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2323
    .end local v1           #req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :cond_1
    return-void
.end method

.method public enableRequestObservers()V
    .locals 4

    .prologue
    .line 2326
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2327
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2328
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 2329
    .local v1, req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    if-eqz v1, :cond_0

    .line 2327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2334
    .end local v1           #req:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :cond_1
    return-void
.end method

.method public obtainGroupIndicator(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "groupName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 2295
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 2297
    .local v0, indicator:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    return-object v0
.end method
