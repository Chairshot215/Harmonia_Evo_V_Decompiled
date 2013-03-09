.class Lcom/google/android/gm/RecentLabelsCache$1;
.super Ljava/lang/Object;
.source "RecentLabelsCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/RecentLabelsCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gm/provider/Label;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/RecentLabelsCache;


# direct methods
.method constructor <init>(Lcom/google/android/gm/RecentLabelsCache;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache$1;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/provider/Label;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/gm/provider/Label;

    .end local p1
    check-cast p2, Lcom/google/android/gm/provider/Label;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/RecentLabelsCache$1;->compare(Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/provider/Label;)I

    move-result v0

    return v0
.end method
