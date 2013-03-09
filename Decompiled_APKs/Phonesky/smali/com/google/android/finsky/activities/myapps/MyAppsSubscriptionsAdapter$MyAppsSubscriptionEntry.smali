.class Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
.super Ljava/lang/Object;
.source "MyAppsSubscriptionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppsSubscriptionEntry"
.end annotation


# instance fields
.field public final parentDoc:Lcom/google/android/finsky/api/model/Document;

.field public final subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

.field public final subscriptionOwnership:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 0
    .parameter
    .parameter "subscriptionDoc"
    .parameter "parentDoc"
    .parameter "libEntry"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    .line 59
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    .line 60
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionOwnership:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 61
    return-void
.end method
