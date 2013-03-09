.class final Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;
.super Ljava/util/HashMap;
.source "FinskyWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v0, "apps"

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "books"

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "music"

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "movies"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method
