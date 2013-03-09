.class final Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;
.super Ljava/lang/Object;
.source "MyAppsSubscriptionsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;)I
    .locals 5
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    .line 75
    iget-object v3, p1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, title1:Ljava/lang/String;
    iget-object v3, p2, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, title2:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->access$000()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, titleComp:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 92
    :goto_0
    return v3

    .line 83
    :cond_0
    iget-object v3, p1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v3, p2, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->access$000()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 87
    if-eqz v2, :cond_1

    move v3, v2

    .line 88
    goto :goto_0

    .line 92
    :cond_1
    iget-object v3, p1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;->compare(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;)I

    move-result v0

    return v0
.end method
