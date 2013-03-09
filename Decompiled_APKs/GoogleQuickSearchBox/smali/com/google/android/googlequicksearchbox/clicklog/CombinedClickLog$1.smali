.class Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;
.super Ljava/lang/Object;
.source "CombinedClickLog.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;->this$0:Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;->consume([Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public consume([Ljava/lang/Boolean;)Z
    .locals 7
    .parameter "values"

    .prologue
    .line 63
    const/4 v4, 0x0

    .line 64
    .local v4, result:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Boolean;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 65
    .local v1, b:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    or-int/2addr v4, v5

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1           #b:Ljava/lang/Boolean;
    :cond_0
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method
