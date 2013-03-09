.class Lcom/google/android/gm/RecentLabelsCache$SaveTask;
.super Landroid/os/AsyncTask;
.source "RecentLabelsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/RecentLabelsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mTouchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p3, touchMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mContext:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mAccount:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mTouchMap:Ljava/util/Map;

    .line 218
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->mTouchMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->updateRecentLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method
