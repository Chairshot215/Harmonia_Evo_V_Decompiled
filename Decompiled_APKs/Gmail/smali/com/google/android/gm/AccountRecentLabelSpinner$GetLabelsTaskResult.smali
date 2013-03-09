.class Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;
.super Ljava/lang/Object;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetLabelsTaskResult"
.end annotation


# instance fields
.field public final mDefaultInbox:Ljava/lang/String;

.field public final mLabelList:Lcom/google/android/gm/provider/LabelList;

.field public final mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/LabelList;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;Ljava/lang/String;)V
    .locals 0
    .parameter "ll"
    .parameter "rl"
    .parameter "defaultInbox"

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    .line 312
    iput-object p2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .line 313
    iput-object p3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mDefaultInbox:Ljava/lang/String;

    .line 314
    return-void
.end method
