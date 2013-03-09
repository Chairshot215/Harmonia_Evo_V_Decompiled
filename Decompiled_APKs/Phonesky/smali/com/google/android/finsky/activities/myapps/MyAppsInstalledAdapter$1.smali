.class final Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
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
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)I
    .locals 5
    .parameter "doc1"
    .parameter "doc2"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, title1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, title2:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$000()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, titleComp:I
    if-eqz v2, :cond_0

    .line 94
    .end local v2           #titleComp:I
    :goto_0
    return v2

    .restart local v2       #titleComp:I
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lcom/google/android/finsky/api/model/Document;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/api/model/Document;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;->compare(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)I

    move-result v0

    return v0
.end method
