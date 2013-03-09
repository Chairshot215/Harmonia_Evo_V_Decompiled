.class public Lcom/android/settings/framework/content/HtcRunningAppProcessInfoComparator;
.super Ljava/lang/Object;
.source "HtcRunningAppProcessInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/ActivityManager$RunningAppProcessInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .locals 2
    .parameter "process1"
    .parameter "process2"

    .prologue
    .line 14
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .end local p1
    check-cast p2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/content/HtcRunningAppProcessInfoComparator;->compare(Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v0

    return v0
.end method
