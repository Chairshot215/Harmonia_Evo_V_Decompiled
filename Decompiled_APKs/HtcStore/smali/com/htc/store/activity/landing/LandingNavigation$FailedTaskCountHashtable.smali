.class Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;
.super Ljava/util/Hashtable;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FailedTaskCountHashtable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public put(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 2187
    const/4 v0, 0x0

    .line 2188
    .local v0, count:I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2190
    add-int/lit8 v0, v0, 0x1

    .line 2194
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    return-void

    .line 2192
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
