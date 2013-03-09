.class Lcom/google/android/gm/RecentLabelsCache$2;
.super Ljava/lang/Object;
.source "RecentLabelsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;Z)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/RecentLabelsCache;

.field final synthetic val$defaults:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/RecentLabelsCache;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache$2;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    iput-object p2, p0, Lcom/google/android/gm/RecentLabelsCache$2;->val$defaults:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$2;->val$defaults:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 107
    .local v1, def:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/RecentLabelsCache$2;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    invoke-virtual {v4, v1}, Lcom/google/android/gm/RecentLabelsCache;->touch(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1           #def:Ljava/lang/String;
    :cond_0
    return-void
.end method
