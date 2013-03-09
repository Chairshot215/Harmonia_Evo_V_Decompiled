.class Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage$1;
.super Ljava/lang/Object;
.source "FlyweightMapStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readFromSortedMap(Ljava/util/SortedMap;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;


# direct methods
.method constructor <init>(Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage$1;->this$0:Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
