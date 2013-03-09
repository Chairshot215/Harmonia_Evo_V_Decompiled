.class Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;
.super Ljava/lang/Object;
.source "XT9IME.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CWordComparator"
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
.field final synthetic this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;)V
    .locals 0
    .parameter

    .prologue
    .line 6509
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;->this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6509
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6509
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 6511
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
